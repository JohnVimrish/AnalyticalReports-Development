import pandas as DF
import psycopg as DB

def process_data(input_dict :dict, database_config :dict ) :
 
     database_object =DB.connect(**database_config)
     db_cursor  = database_object.cursor()

     return None 