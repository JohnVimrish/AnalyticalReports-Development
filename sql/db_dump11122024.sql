--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-11-14 14:08:31

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 16569)
-- Name: crime_data; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA crime_data;


--
-- TOC entry 237 (class 1255 OID 16582)
-- Name: upd_crime_data_part_key(); Type: FUNCTION; Schema: crime_data; Owner: -
--

CREATE FUNCTION crime_data.upd_crime_data_part_key() RETURNS void
    LANGUAGE plpgsql
    AS $$

BEGIN

    UPDATE crime_data.la_crime_data_year_analysis

    SET partition_unique_key = CONCAT_WS('~', EXTRACT(YEAR FROM incident_reported_date), record_entity_id);

END;

$$;


SET default_tablespace = '';

--
-- TOC entry 216 (class 1259 OID 16583)
-- Name: la_crime_data_year_analysis; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
)
PARTITION BY RANGE (EXTRACT(year FROM incident_reported_date));


SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 16596)
-- Name: la_crime_data_year_analysis_2005; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2005 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 218 (class 1259 OID 16601)
-- Name: la_crime_data_year_analysis_2006; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2006 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 219 (class 1259 OID 16606)
-- Name: la_crime_data_year_analysis_2007; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2007 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 220 (class 1259 OID 16611)
-- Name: la_crime_data_year_analysis_2008; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2008 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 221 (class 1259 OID 16616)
-- Name: la_crime_data_year_analysis_2009; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2009 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 222 (class 1259 OID 16621)
-- Name: la_crime_data_year_analysis_2010; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2010 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 223 (class 1259 OID 16626)
-- Name: la_crime_data_year_analysis_2011; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2011 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 224 (class 1259 OID 16631)
-- Name: la_crime_data_year_analysis_2012; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2012 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 225 (class 1259 OID 16636)
-- Name: la_crime_data_year_analysis_2013; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2013 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 226 (class 1259 OID 16641)
-- Name: la_crime_data_year_analysis_2014; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2014 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 227 (class 1259 OID 16646)
-- Name: la_crime_data_year_analysis_2015; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2015 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 228 (class 1259 OID 16651)
-- Name: la_crime_data_year_analysis_2016; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2016 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 229 (class 1259 OID 16656)
-- Name: la_crime_data_year_analysis_2017; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2017 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 230 (class 1259 OID 16661)
-- Name: la_crime_data_year_analysis_2018; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2018 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 231 (class 1259 OID 16666)
-- Name: la_crime_data_year_analysis_2019; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2019 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 232 (class 1259 OID 16671)
-- Name: la_crime_data_year_analysis_2020; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2020 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 233 (class 1259 OID 16676)
-- Name: la_crime_data_year_analysis_2021; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2021 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 234 (class 1259 OID 16681)
-- Name: la_crime_data_year_analysis_2022; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2022 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 235 (class 1259 OID 16686)
-- Name: la_crime_data_year_analysis_2023; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.la_crime_data_year_analysis_2023 (
    record_entity_id bigint,
    incident_date timestamp(6) without time zone,
    incident_reported_date date,
    catergory character varying(200),
    stat_id integer,
    stat_description text,
    crime_scene_address character varying(200),
    crime_scene_street character varying(200),
    crime_scene_city character varying(100),
    crime_scene_zip_code integer,
    incident_id character varying(300),
    reporting_district integer,
    sequence integer,
    gang_related character varying(100),
    unit_id character varying(100),
    unit_name character varying(100),
    longitude numeric,
    latitude numeric,
    part_category integer,
    partition_unique_key character varying(200)
);


--
-- TOC entry 236 (class 1259 OID 16692)
-- Name: nypd_arrest_data; Type: TABLE; Schema: crime_data; Owner: -
--

CREATE TABLE crime_data.nypd_arrest_data (
    arrest_key integer,
    arrest_date date,
    pd_cd integer,
    pd_desc character varying(500),
    ky_cd integer,
    ofns_desc character varying,
    law_code character varying(100),
    law_cat_cd character varying(1),
    arrest_boro character varying(1),
    arrest_precinct integer,
    jurisdiction_code integer,
    age_group character varying(100),
    perp_sex character varying(1),
    perp_race character varying(200),
    x_coord_cd integer,
    y_coord_cd integer,
    longitude numeric,
    latitude numeric
);


--
-- TOC entry 4769 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2005; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2005 FOR VALUES FROM ('2005') TO ('2006');


--
-- TOC entry 4770 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2006; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2006 FOR VALUES FROM ('2006') TO ('2007');


--
-- TOC entry 4771 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2007; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2007 FOR VALUES FROM ('2007') TO ('2008');


--
-- TOC entry 4772 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2008; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2008 FOR VALUES FROM ('2008') TO ('2009');


--
-- TOC entry 4773 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2009; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2009 FOR VALUES FROM ('2009') TO ('2010');


--
-- TOC entry 4774 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2010; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2010 FOR VALUES FROM ('2010') TO ('2011');


--
-- TOC entry 4775 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2011; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2011 FOR VALUES FROM ('2011') TO ('2012');


--
-- TOC entry 4776 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2012; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2012 FOR VALUES FROM ('2012') TO ('2013');


--
-- TOC entry 4777 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2013; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2013 FOR VALUES FROM ('2013') TO ('2014');


--
-- TOC entry 4778 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2014; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2014 FOR VALUES FROM ('2014') TO ('2015');


--
-- TOC entry 4779 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2015; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2015 FOR VALUES FROM ('2015') TO ('2016');


--
-- TOC entry 4780 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2016; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2016 FOR VALUES FROM ('2016') TO ('2017');


--
-- TOC entry 4781 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2017; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2017 FOR VALUES FROM ('2017') TO ('2018');


--
-- TOC entry 4782 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2018; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2018 FOR VALUES FROM ('2018') TO ('2019');


--
-- TOC entry 4783 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2019; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2019 FOR VALUES FROM ('2019') TO ('2020');


--
-- TOC entry 4784 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2020; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2020 FOR VALUES FROM ('2020') TO ('2021');


--
-- TOC entry 4785 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2021; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2021 FOR VALUES FROM ('2021') TO ('2022');


--
-- TOC entry 4786 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2022; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2022 FOR VALUES FROM ('2022') TO ('2023');


--
-- TOC entry 4787 (class 0 OID 0)
-- Name: la_crime_data_year_analysis_2023; Type: TABLE ATTACH; Schema: crime_data; Owner: -
--

ALTER TABLE ONLY crime_data.la_crime_data_year_analysis ATTACH PARTITION crime_data.la_crime_data_year_analysis_2023 FOR VALUES FROM ('2023') TO ('2024');


-- Completed on 2024-11-14 14:08:36

--
-- PostgreSQL database dump complete
--

