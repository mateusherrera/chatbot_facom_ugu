import json
import requests

from constants import *


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
    def create_menu(node_id: str):
        """
        Esse método estrutura um menu.

        :param node_id: ID do menu.
        :return: String com o menu.
        """

        # Parte inicial do menu
        menu = ''
        if node_id == HOME_ID:
            menu = f'{INITIAL_MESSAGE}{os.linesep}{os.linesep}'
        menu += f'{LINK_TITLES[node_id]}{os.linesep}{os.linesep}'

        # Opções
        options = NODES[node_id]
        for option, description in options.items():
            menu += f'{option} - {description[0]}.{os.linesep}'

        # Pergunta opção
        menu += f'{os.linesep}Escolha uma opção:'
        return menu

    @staticmethod
    def create_leaf_response(leaf_id: str):
        """
        Esse método gera uma resposta para um leaf.

        :param leaf_id: ID do leaf.
        :return: String com a resposta.
        """

        return f'{LEAFS[leaf_id]}.'

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
                    elif self.dict_chat_ids[chat_id] in NODES.keys():
                        option = message['message']['text']

                        if option in NODES[self.dict_chat_ids[chat_id]].keys():
                            resolve_path = NODES[self.dict_chat_ids[chat_id]][option][1]

                            if resolve_path is None:
                                del self.dict_chat_ids[chat_id]

                            elif resolve_path in NODES.keys():
                                self.dict_chat_ids[chat_id] = resolve_path
                                self.send_response(TelegramBot.create_menu(resolve_path), chat_id)

                            else:
                                del self.dict_chat_ids[chat_id]
                                self.send_response(TelegramBot.create_leaf_response(resolve_path), chat_id)
                                self.send_response(FAREWELL_MESSAGE, chat_id)

                        else:
                            self.send_response(INVALID_OPTION, chat_id)
                            continue
                            pass
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
