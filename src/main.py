import process_data as PD 
import configparser

def main_function() :
    config = configparser.ConfigParser()
    config.read('D:/AnalyticalReports- Development/AnalyticalReports-Development/src/credentials.ini')
    configuration  = config['POSTGRES_DB']
    db_configuration =  { component:value  for component,value in configuration.items()}
    input_data  =  {
        "crime_data.la_crime_data_year_analysis_2005":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2005-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2006":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2006-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2007":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2007-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2008":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2008-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2009":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2009-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2010":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2010-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2011":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2011-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2012":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2012-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2013":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2013-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2014":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2014-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2015":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2015-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2016":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2016-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2017":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2017-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2018":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2018-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2019":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2019-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2020":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2020-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2021":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2021-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2022":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2022-PART_I_AND_II_CRIMES.csv"),
        "crime_data.la_crime_data_year_analysis_2023":(["LURN_SAK","INCIDENT_DATE","INCIDENT_REPORTED_DATE","CATEGORY","STAT","STAT_DESC","ADDRESS","STREET","CITY","ZIP","INCIDENT_ID","REPORTING_DISTRICT","SEQ","GANG_RELATED","UNIT_ID","UNIT_NAME","LONGITUDE","LATITUDE","PART_CATEGORY"],
        "record_entity_id, incident_date, incident_reported_date, catergory, stat_id, stat_description, crime_scene_address, crime_scene_street, crime_scene_city, crime_scene_zip_code, incident_id, reporting_district, sequence, gang_related, unit_id, unit_name, longitude, latitude, part_category",
        "D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/2023-PART_I_AND_II_CRIMES.csv"),
        "crime_data.nypd_arrest_data":(
        ["ARREST_KEY","ARREST_DATE","PD_CD","PD_DESC","KY_CD","OFNS_DESC","LAW_CODE","LAW_CAT_CD","ARREST_BORO","ARREST_PRECINCT","JURISDICTION_CODE","AGE_GROUP","PERP_SEX","PERP_RACE","X_COORD_CD","Y_COORD_CD","Latitude","Longitude"],     
        "arrest_key,arrest_date,pd_cd,pd_desc,ky_cd,ofns_desc,law_code,law_cat_cd,arrest_boro,arrest_precinct,jurisdiction_code,age_group,perp_sex,perp_race,x_coord_cd,y_coord_cd,longitude,latitude",
        ["D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/NYPD_Arrest_Data_2024.csv","D:/AnalyticalReports- Development/AnalyticalReports-Development/dataset-powerbi/NYPD_Arrests_Data_Historic.csv"])
    }
    PD.process_data(input_data,db_configuration)

if __name__ == "__main__":
    main_function()