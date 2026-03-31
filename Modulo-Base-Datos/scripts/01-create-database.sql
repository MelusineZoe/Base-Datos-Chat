-- =============================================
-- Script 01: Creación de la Base de Datos
-- =============================================

CREATE DATABASE chatdb
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Chile.1252'
    LC_CTYPE = 'Spanish_Chile.1252'
    TEMPLATE = template0;

COMMENT ON DATABASE chatdb IS 'Base de datos para el sistema de chat en tiempo real';