from PostgresAccess import PostgresAccess


class MenusInformation:
    """
    Classe para pegar informações de menu.
    """

    # INI: Static Methods #

    @staticmethod
    def get_menu(node_id: int):
        """
        Esse método pega um menu.

        :param node_id: ID no menu.
        :return: Linha com título e ID do menu.
        """

        query = f"SELECT * FROM menu WHERE id = {node_id}"
        return PostgresAccess.select_postgres(query)

    @staticmethod
    def get_options(node_id: int):
        """
        Esse método pega as opções de um menu.

        :param node_id: ID do menu.
        :return: Linhas com as opções do menu.
        """

        query = f"SELECT * FROM opcoes_menu WHERE id_menu = {node_id}"
        return PostgresAccess.select_postgres(query)

    @staticmethod
    def get_resposta(node_id: int):
        """
        Esse método pega a resposta de um leaf.

        :param node_id: ID da resposta.
        :return: Resposta.
        """

        query = f"SELECT * FROM respostas WHERE id = {node_id}"
        return PostgresAccess.select_postgres(query)

    @staticmethod
    def get_next_resposta(menu_id: int, selected_option: int):
        """
        Esse método pega a próxima resposta.

        :param menu_id: ID do menu.
        :param selected_option: ID da opção escolhida.
        :return: Linha da opção.
        """

        query = f"SELECT * FROM opcoes_menu WHERE id_menu = {menu_id} AND num_opcao = {selected_option}"
        return PostgresAccess.select_postgres(query)

    # END: Static Methods #

    # END: MenusInformation #
