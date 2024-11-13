import process_data as PD 
import configparser

def main_function() :
    config = configparser.ConfigParser()
    config.read('D:/AnalyticalReports- Development/AnalyticalReports-Development/src/credentials.ini')
    configuration  = config['POSTGRES_DB']
    db_configuration =  { component:value  for component,value in configuration.items()}
    input_data  =  {
        "crime_data.la_crime_data_year_analysis_2005":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2005-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2006":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2006-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2007":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2007-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2008":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2008-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2009":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2009-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2010":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2010-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2011":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2011-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2012":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2012-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2013":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2013-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2014":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2014-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2015":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2015-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2016":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2016-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2017":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2017-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2018":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2018-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2019":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2019-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2020":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2020-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2021":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2021-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2022":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2022-PART_I_AND_II_CRIMES.csv",
        "crime_data.la_crime_data_year_analysis_2023":"D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2023-PART_I_AND_II_CRIMES.csv",
        "crime_data.crime_data.nypd_arrest_data":["D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/NYPD_Arrest_Data_2024.csv","D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/NYPD_Arrests_Data_Historic.csv"]
    }
    PD.process_data(input_data,db_configuration)

if __name__ == "__main__":
    main_function()