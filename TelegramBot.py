import os
import json
import requests

from constants import *
from MenusInformation import MenusInformation


class TelegramBot:
    """
    Chat Bot UGU no Telegram.
    """

    # INI: Fields

    token: str
    url_base: str
    timeout: int
    dict_chat_ids: dict

    # END: Fields

    # INI: Constants

    TOKEN_UNINITIALIZED: int = -1

    # END: Constants

    # INI: Constructor

    def __init__(self, token: str):
        """
        Construtor para chat bot do telegram.

        :param token: Token para o chat bot.
        """

        self.token = token
        self.url_base = f'https://api.telegram.org/bot{self.token}/'
        self.timeout = 100
        self.dict_chat_ids = dict()
        pass

    # END: Constructor

    # INI: Static Methods

    @staticmethod
    def create_menu(node_id: int):
        """
        Esse método estrutura um menu.

        :param node_id: ID do menu.
        :return: String com o menu.
        """

        # Parte inicial do menu
        title_menu = MenusInformation.get_menu(node_id)['titulo'][0]

        menu = ''
        if node_id == HOME_ID:
            menu = f'{INITIAL_MESSAGE}{os.linesep}{os.linesep}'
        menu += f'{title_menu}{os.linesep}{os.linesep}'

        # Opções
        options = MenusInformation.get_options(node_id)
        for option in options.iloc:
            menu += f'{option["num_opcao"]} - {option["texto_opcao"]}.{os.linesep}'
        menu += f'0 - SAIR.{os.linesep}'

        # Pergunta opção
        menu += f'{os.linesep}Escolha uma opção:'
        return menu

    @staticmethod
    def create_leaf_response(node_id: int):
        """
        Esse método gera uma resposta para um leaf.

        :param node_id: ID do leaf.
        :return: String com a resposta.
        """

        return f'{MenusInformation.get_resposta(node_id)["texto_resposta"][0]}.'

    # END: Static Methods

    # INI: Methods

    def start(self):
        """
        Esse método faz o loop infinito do chat bot.
        """
        update_id = TelegramBot.TOKEN_UNINITIALIZED

        while True:
            new_update = self.get_message(update_id)
            messages = new_update['result']

            if messages:
                for message in messages:
                    update_id = int(message['update_id'])
                    chat_id = message['message']['from']['id']

                    # Iniciar chat id da sessão
                    if chat_id not in self.dict_chat_ids:
                        self.dict_chat_ids[chat_id] = HOME_ID
                        self.send_response(TelegramBot.create_menu(self.dict_chat_ids[chat_id]), chat_id)

                    # Tratando transições de menus
                    else:
                        option = message['message']['text']

                        if not option.isnumeric():
                            self.send_response(INVALID_OPTION, chat_id)
                            continue

                        option_info = MenusInformation.get_next_resposta(self.dict_chat_ids[chat_id], option)

                        if option == '0':
                            del self.dict_chat_ids[chat_id]
                            self.send_response(FAREWELL_MESSAGE, chat_id)
                            continue

                        elif option_info.empty:
                            self.send_response(INVALID_OPTION, chat_id)
                            continue

                        else:
                            next_step = option_info['id_resposta'][0]
                            is_leaf = True if option_info['tipo_resposta'][0] == 2 else False

                            # Resposta final
                            if is_leaf:
                                del self.dict_chat_ids[chat_id]
                                self.send_response(TelegramBot.create_leaf_response(next_step), chat_id)
                                self.send_response(FAREWELL_MESSAGE, chat_id)

                            # Outro menu
                            else:
                                self.dict_chat_ids[chat_id] = next_step
                                self.send_response(TelegramBot.create_menu(next_step), chat_id)
                            continue
        pass

    def get_message(self, update_id: int) -> dict:
        """
        Esse método nos retorna a última mensagem recebida.

        :param update_id: ID para atualização.
        :return: String com a mensagem.
        """

        request_link = f'{self.url_base}getUpdates?timeout={self.timeout}'

        if update_id != TelegramBot.TOKEN_UNINITIALIZED:
            request_link = f'{request_link}&offset={update_id + 1}'

        response = requests.get(request_link)
        return json.loads(response.content)

    def send_response(self, response_text: str, chat_id: str):
        """
        Esse método envia a resposta para o usuário.

        :param response_text: String da resposta que deve ser enviada para o usuário.
        :param chat_id: ID do chat do destinatário.
        """

        send_link = f'{self.url_base}sendMessage?chat_id={chat_id}&text={response_text}'
        requests.get(send_link)
        pass

    # END: Methods

    # END: TelegramBot
    pass
