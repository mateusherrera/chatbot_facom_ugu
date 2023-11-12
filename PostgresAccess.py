from sqlalchemy import create_engine, text
from pandas import read_sql, DataFrame


class PostgresAccess:

    # INI: Static Methods #

    @staticmethod
    def get_connection():
        engine = create_engine('your_connstring')
        conn = engine.connect()
        return conn

    # END: Static Methods #

    # INI: Class Methods #
    @classmethod
    def select_postgres(cls, select_query: str) -> DataFrame:
        """
        Esse método faz um select no postgres.

        :param select_query: Query de select.
        :return: Dataframe com o resultado.
        """

        conn = cls.get_connection()
        df = read_sql(text(select_query), conn)
        conn.close()

        return df

    # END: Class Methods #

    # END: PostgresAccess #
    pass
