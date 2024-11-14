import process_data as PD 
import configparser
import json 

def main_function() :
    config = configparser.ConfigParser()
    config.read('D:/AnalyticalReports- Development/AnalyticalReports-Development/config/credentials.ini')
    configuration  = config['POSTGRES_DB']
    db_configuration =  { component:value  for component,value in configuration.items()}
    with open('D:/AnalyticalReports- Development/AnalyticalReports-Development/config/sql_configuration.json') as f:
        input_data  = json.load(f)
    PD.process_data(input_data,db_configuration)

if __name__ == "__main__":
    main_function()