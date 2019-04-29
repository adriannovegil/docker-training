--
-- Esquema de la base de datos
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner:
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner:
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auditoria; Type: TABLE; Schema: public; Owner: postgres; Tablespace:
--

CREATE TABLE auditoria (
    id_auditoria text NOT NULL,
    id_usuario text NOT NULL,
    descripcion text,
    fecha date
);


ALTER TABLE public.auditoria OWNER TO postgres;

--
-- Name: COLUMN auditoria.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN auditoria.descripcion IS 'Descripcion de lo que se modifico';


--
-- Name: COLUMN auditoria.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN auditoria.fecha IS 'Fecha en que se registro la operacion';


--
-- Name: datos_per; Type: TABLE; Schema: public; Owner: postgres; Tablespace:
--

CREATE TABLE datos_per (
    id_datosper text NOT NULL,
    id_usuario text NOT NULL,
    nombre text,
    apellidos text,
    mail text,
    nombrecons text
);


ALTER TABLE public.datos_per OWNER TO postgres;

--
-- Name: COLUMN datos_per.nombrecons; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN datos_per.nombrecons IS 'Ejemplo de tabla';


--
-- Name: entorno; Type: TABLE; Schema: public; Owner: postgres; Tablespace:
--

CREATE TABLE entorno (
    id_entorno text NOT NULL,
    id_servicio text NOT NULL,
    nombre text
);


ALTER TABLE public.entorno OWNER TO postgres;

--
-- Name: COLUMN entorno.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN entorno.nombre IS 'Nombre del entorno';


--
-- Name: jars; Type: TABLE; Schema: public; Owner: postgres; Tablespace:
--

CREATE TABLE jars (
    id_jar text NOT NULL,
    id_servicio text NOT NULL,
    descripcion text,
    version text
);


ALTER TABLE public.jars OWNER TO postgres;

--
-- Name: login; Type: TABLE; Schema: public; Owner: postgres; Tablespace:
--

CREATE TABLE login (
    id_usuario text NOT NULL,
    password character(12) NOT NULL,
    status boolean NOT NULL,
    user_name character(12) NOT NULL
);


ALTER TABLE public.login OWNER TO postgres;

--
-- Name: servicios; Type: TABLE; Schema: public; Owner: postgres; Tablespace:
--

CREATE TABLE servicios (
    id_servicio text NOT NULL,
    id_datosper text NOT NULL,
    nombreserv text,
    fecharegistro date,
    nodimensions text
);


ALTER TABLE public.servicios OWNER TO postgres;

--
-- Name: COLUMN servicios.fecharegistro; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN servicios.fecharegistro IS 'Fecha en que subieron los componentes.';


--
-- Name: COLUMN servicios.nodimensions; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN servicios.nodimensions IS 'Numero de requerimiento dimensions asociado';
