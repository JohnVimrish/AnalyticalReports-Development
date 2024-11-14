import pandas as DF
import psycopg as DB
from io import StringIO

def process_data(input_dict :dict, database_config :dict) :

     def dataframe_csv_input(dft_column_list:list,csv_input_path:str,column_datatype: dict):
          csv_input = DF.read_csv(csv_input_path, usecols=dft_column_list, 
                                  na_values=["NA","(null)","NA"],
                                  dtype = column_datatype)
          csv_input.loc[:,dft_column_list]
          return csv_input 

     def  copy_activity  ( table_name  ,db_cursor, db_conn,copy_columns,df:DF.DataFrame) :
               buffer = StringIO()
               df.to_csv(buffer, index=False, header=False)
               buffer.seek(0)
               copy_sql = "COPY {0} ({1}) FROM STDIN WITH (FORMAT CSV, DELIMITER ',', QUOTE '\"', HEADER, FORCE_NULL({1}));".format(table_name,copy_columns)
               with buffer as f:
                    with db_cursor.copy(copy_sql) as copy:
                         while data := f.read(20000):
                              copy.write(data)
                    db_conn.commit()
     

     def execute_sql_commands( db_cursor, sql_command:str) :
          db_cursor.execute(sql_command)

     database_object =DB.connect(**database_config)
     db_cursor  = database_object.cursor()

     for input_key , input_value in input_dict.items() :
         truncate_sql  =  f'Truncate table {input_key} ;'
         dataframe_column_list,column_dtype,sql_column_list,csv_path   = tuple(input_value)

         if isinstance(csv_path,list)  :
               execute_sql_commands (db_cursor,truncate_sql)
               for each_csv_input in csv_path :
                         csv_input = dataframe_csv_input(dataframe_column_list,each_csv_input,column_dtype)
                         copy_activity(input_key, db_cursor ,database_object,sql_column_list,csv_input)
         else :
               execute_sql_commands (db_cursor,truncate_sql)
               csv_input = dataframe_csv_input(dataframe_column_list,csv_path,column_dtype)
               copy_activity(input_key, db_cursor ,database_object,sql_column_list,csv_input)