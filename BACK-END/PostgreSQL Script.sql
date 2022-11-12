-- This script was generated by a beta version of the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public.auth_group
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character varying(150) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT auth_group_pkey PRIMARY KEY (id),
    CONSTRAINT auth_group_name_key UNIQUE (name)
);

CREATE TABLE IF NOT EXISTS public.auth_group_permissions
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    group_id integer NOT NULL,
    permission_id integer NOT NULL,
    CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id),
    CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id)
);

CREATE TABLE IF NOT EXISTS public.auth_permission
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT auth_permission_pkey PRIMARY KEY (id),
    CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename)
);

CREATE TABLE IF NOT EXISTS public.auth_user
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    password character varying(128) COLLATE pg_catalog."default" NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) COLLATE pg_catalog."default" NOT NULL,
    first_name character varying(150) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(150) COLLATE pg_catalog."default" NOT NULL,
    email character varying(254) COLLATE pg_catalog."default" NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    CONSTRAINT auth_user_pkey PRIMARY KEY (id),
    CONSTRAINT auth_user_username_key UNIQUE (username)
);

CREATE TABLE IF NOT EXISTS public.auth_user_groups
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    user_id integer NOT NULL,
    group_id integer NOT NULL,
    CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id),
    CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id)
);

CREATE TABLE IF NOT EXISTS public.auth_user_user_permissions
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    user_id integer NOT NULL,
    permission_id integer NOT NULL,
    CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id),
    CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id)
);

CREATE TABLE IF NOT EXISTS public.consultora_barrio
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "Ciudad_id" integer,
    CONSTRAINT consultora_barrio_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.consultora_busquedalaboral
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    "fechaApertura" date,
    "fechaCierre" date,
    descripcion text COLLATE pg_catalog."default",
    estado_id integer,
    idioma_id integer,
    organizacion_id integer,
    CONSTRAINT consultora_busquedalaboral_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.consultora_busquedalaboral_tecnologia
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    busquedalaboral_id integer NOT NULL,
    tecnologia_id integer NOT NULL,
    CONSTRAINT consultora_busquedalaboral_tecnologia_pkey PRIMARY KEY (id),
    CONSTRAINT consultora_busquedalabor_busquedalaboral_id_tecno_88a9892f_uniq UNIQUE (busquedalaboral_id, tecnologia_id)
);

CREATE TABLE IF NOT EXISTS public.consultora_ciudad
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    provincia_id integer,
    CONSTRAINT consultora_ciudad_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.consultora_documento
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    tipo character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT consultora_documento_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.consultora_estado
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    tipo character varying(25) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT consultora_estado_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.consultora_genero
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    tipo character varying(25) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT consultora_genero_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.consultora_idioma
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT consultora_idioma_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.consultora_organizacion
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    razonsocial character varying(250) COLLATE pg_catalog."default" NOT NULL,
    cuit character varying(20) COLLATE pg_catalog."default",
    direccion character varying(100) COLLATE pg_catalog."default",
    email character varying(250) COLLATE pg_catalog."default",
    celular character varying(20) COLLATE pg_catalog."default",
    barrio_id integer,
    tipoorganizacion_id integer,
    CONSTRAINT consultora_organizacion_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.consultora_pais
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT consultora_pais_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.consultora_postulante
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    nombre character varying(25) COLLATE pg_catalog."default" NOT NULL,
    apellido character varying(25) COLLATE pg_catalog."default" NOT NULL,
    tipodocumento_id integer,
    numdocumento character varying(25) COLLATE pg_catalog."default",
    fechanacimiento date,
    direccion character varying(100) COLLATE pg_catalog."default",
    barrio_id integer,
    celular character varying(20) COLLATE pg_catalog."default",
    email character varying(250) COLLATE pg_catalog."default",
    estado_id integer,
    genero_id integer,
    CONSTRAINT consultora_postulante_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.consultora_postulanteidioma
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    descripcion character varying(250) COLLATE pg_catalog."default",
    estado_id integer,
    idioma_id integer,
    postulante_id integer,
    CONSTRAINT consultora_postulanteidioma_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.consultora_postulantetecnologia
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    descripcion character varying(250) COLLATE pg_catalog."default",
    estado_id integer,
    postulante_id integer,
    tecnologia_id integer,
    CONSTRAINT consultora_postulantetecnologia_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.consultora_provincia
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    pais_id integer,
    CONSTRAINT consultora_provincia_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.consultora_tecnologia
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT consultora_tecnologia_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.consultora_tipoorganizacion
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    tipo character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT consultora_tipoorganizacion_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.django_admin_log
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    action_time timestamp with time zone NOT NULL,
    object_id text COLLATE pg_catalog."default",
    object_repr character varying(200) COLLATE pg_catalog."default" NOT NULL,
    action_flag smallint NOT NULL,
    change_message text COLLATE pg_catalog."default" NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.django_content_type
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    app_label character varying(100) COLLATE pg_catalog."default" NOT NULL,
    model character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT django_content_type_pkey PRIMARY KEY (id),
    CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model)
);

CREATE TABLE IF NOT EXISTS public.django_migrations
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    app character varying(255) COLLATE pg_catalog."default" NOT NULL,
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    applied timestamp with time zone NOT NULL,
    CONSTRAINT django_migrations_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.django_session
(
    session_key character varying(40) COLLATE pg_catalog."default" NOT NULL,
    session_data text COLLATE pg_catalog."default" NOT NULL,
    expire_date timestamp with time zone NOT NULL,
    CONSTRAINT django_session_pkey PRIMARY KEY (session_key)
);

ALTER TABLE IF EXISTS public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id)
    REFERENCES public.auth_permission (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS auth_group_permissions_permission_id_84c5c92e
    ON public.auth_group_permissions(permission_id);


ALTER TABLE IF EXISTS public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id)
    REFERENCES public.auth_group (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS auth_group_permissions_group_id_b120cbf9
    ON public.auth_group_permissions(group_id);


ALTER TABLE IF EXISTS public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id)
    REFERENCES public.django_content_type (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS auth_permission_content_type_id_2f476e4b
    ON public.auth_permission(content_type_id);


ALTER TABLE IF EXISTS public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id)
    REFERENCES public.auth_group (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS auth_user_groups_group_id_97559544
    ON public.auth_user_groups(group_id);


ALTER TABLE IF EXISTS public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id)
    REFERENCES public.auth_user (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS auth_user_groups_user_id_6a12ed8b
    ON public.auth_user_groups(user_id);


ALTER TABLE IF EXISTS public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id)
    REFERENCES public.auth_permission (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS auth_user_user_permissions_permission_id_1fbb5f2c
    ON public.auth_user_user_permissions(permission_id);


ALTER TABLE IF EXISTS public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id)
    REFERENCES public.auth_user (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS auth_user_user_permissions_user_id_a95ead1b
    ON public.auth_user_user_permissions(user_id);


ALTER TABLE IF EXISTS public.consultora_barrio
    ADD CONSTRAINT "consultora_barrio_Ciudad_id_6c09af55_fk_consultora_ciudad_id" FOREIGN KEY ("Ciudad_id")
    REFERENCES public.consultora_ciudad (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS "consultora_barrio_Ciudad_id_6c09af55"
    ON public.consultora_barrio("Ciudad_id");


ALTER TABLE IF EXISTS public.consultora_busquedalaboral
    ADD CONSTRAINT consultora_busquedal_estado_id_dd63f997_fk_consultor FOREIGN KEY (estado_id)
    REFERENCES public.consultora_estado (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_busquedalaboral_estado_id_dd63f997
    ON public.consultora_busquedalaboral(estado_id);


ALTER TABLE IF EXISTS public.consultora_busquedalaboral
    ADD CONSTRAINT consultora_busquedal_idioma_id_ad97e0e0_fk_consultor FOREIGN KEY (idioma_id)
    REFERENCES public.consultora_idioma (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_busquedalaboral_idioma_id_ad97e0e0
    ON public.consultora_busquedalaboral(idioma_id);


ALTER TABLE IF EXISTS public.consultora_busquedalaboral
    ADD CONSTRAINT consultora_busquedal_organizacion_id_e95eaf90_fk_consultor FOREIGN KEY (organizacion_id)
    REFERENCES public.consultora_organizacion (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_busquedalaboral_organizacion_id_e95eaf90
    ON public.consultora_busquedalaboral(organizacion_id);


ALTER TABLE IF EXISTS public.consultora_busquedalaboral_tecnologia
    ADD CONSTRAINT consultora_busquedal_busquedalaboral_id_994e7be8_fk_consultor FOREIGN KEY (busquedalaboral_id)
    REFERENCES public.consultora_busquedalaboral (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_busquedalaboral_busquedalaboral_id_994e7be8
    ON public.consultora_busquedalaboral_tecnologia(busquedalaboral_id);


ALTER TABLE IF EXISTS public.consultora_busquedalaboral_tecnologia
    ADD CONSTRAINT consultora_busquedal_tecnologia_id_c305ee96_fk_consultor FOREIGN KEY (tecnologia_id)
    REFERENCES public.consultora_tecnologia (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_busquedalaboral_tecnologia_tecnologia_id_c305ee96
    ON public.consultora_busquedalaboral_tecnologia(tecnologia_id);


ALTER TABLE IF EXISTS public.consultora_ciudad
    ADD CONSTRAINT consultora_ciudad_provincia_id_db9ef192_fk_consultor FOREIGN KEY (provincia_id)
    REFERENCES public.consultora_provincia (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_ciudad_provincia_id_db9ef192
    ON public.consultora_ciudad(provincia_id);


ALTER TABLE IF EXISTS public.consultora_organizacion
    ADD CONSTRAINT consultora_organizac_barrio_id_737612ba_fk_consultor FOREIGN KEY (barrio_id)
    REFERENCES public.consultora_barrio (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_organizacion_barrio_id_737612ba
    ON public.consultora_organizacion(barrio_id);


ALTER TABLE IF EXISTS public.consultora_organizacion
    ADD CONSTRAINT consultora_organizac_tipoorganizacion_id_5aced6e5_fk_consultor FOREIGN KEY (tipoorganizacion_id)
    REFERENCES public.consultora_tipoorganizacion (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_organizacion_tipoorganizacion_id_5aced6e5
    ON public.consultora_organizacion(tipoorganizacion_id);


ALTER TABLE IF EXISTS public.consultora_postulante
    ADD CONSTRAINT consultora_postulant_barrio_id_789a0302_fk_consultor FOREIGN KEY (barrio_id)
    REFERENCES public.consultora_barrio (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_postulante_barrio_id_789a0302
    ON public.consultora_postulante(barrio_id);


ALTER TABLE IF EXISTS public.consultora_postulante
    ADD CONSTRAINT consultora_postulant_estado_id_b2b34e30_fk_consultor FOREIGN KEY (estado_id)
    REFERENCES public.consultora_estado (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_postulante_estado_id_b2b34e30
    ON public.consultora_postulante(estado_id);


ALTER TABLE IF EXISTS public.consultora_postulante
    ADD CONSTRAINT consultora_postulant_genero_id_eb0cdd22_fk_consultor FOREIGN KEY (genero_id)
    REFERENCES public.consultora_genero (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_postulante_genero_id_eb0cdd22
    ON public.consultora_postulante(genero_id);


ALTER TABLE IF EXISTS public.consultora_postulante
    ADD CONSTRAINT consultora_postulant_tipodocumento_id_31f868fd_fk_consultor FOREIGN KEY (tipodocumento_id)
    REFERENCES public.consultora_documento (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_postulante_tipodocumento_id_31f868fd
    ON public.consultora_postulante(tipodocumento_id);


ALTER TABLE IF EXISTS public.consultora_postulanteidioma
    ADD CONSTRAINT consultora_postulant_estado_id_7dceaa1e_fk_consultor FOREIGN KEY (estado_id)
    REFERENCES public.consultora_estado (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_postulanteidioma_estado_id_7dceaa1e
    ON public.consultora_postulanteidioma(estado_id);


ALTER TABLE IF EXISTS public.consultora_postulanteidioma
    ADD CONSTRAINT consultora_postulant_idioma_id_d586fb58_fk_consultor FOREIGN KEY (idioma_id)
    REFERENCES public.consultora_idioma (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_postulanteidioma_idioma_id_d586fb58
    ON public.consultora_postulanteidioma(idioma_id);


ALTER TABLE IF EXISTS public.consultora_postulanteidioma
    ADD CONSTRAINT consultora_postulant_postulante_id_8cb7a916_fk_consultor FOREIGN KEY (postulante_id)
    REFERENCES public.consultora_postulante (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_postulanteidioma_postulante_id_8cb7a916
    ON public.consultora_postulanteidioma(postulante_id);


ALTER TABLE IF EXISTS public.consultora_postulantetecnologia
    ADD CONSTRAINT consultora_postulant_estado_id_463e2e60_fk_consultor FOREIGN KEY (estado_id)
    REFERENCES public.consultora_estado (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_postulantetecnologia_estado_id_463e2e60
    ON public.consultora_postulantetecnologia(estado_id);


ALTER TABLE IF EXISTS public.consultora_postulantetecnologia
    ADD CONSTRAINT consultora_postulant_postulante_id_8e8a59fc_fk_consultor FOREIGN KEY (postulante_id)
    REFERENCES public.consultora_postulante (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_postulantetecnologia_postulante_id_8e8a59fc
    ON public.consultora_postulantetecnologia(postulante_id);


ALTER TABLE IF EXISTS public.consultora_postulantetecnologia
    ADD CONSTRAINT consultora_postulant_tecnologia_id_fe8a1e54_fk_consultor FOREIGN KEY (tecnologia_id)
    REFERENCES public.consultora_tecnologia (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_postulantetecnologia_tecnologia_id_fe8a1e54
    ON public.consultora_postulantetecnologia(tecnologia_id);


ALTER TABLE IF EXISTS public.consultora_provincia
    ADD CONSTRAINT consultora_provincia_pais_id_fa8fbdcd_fk_consultora_pais_id FOREIGN KEY (pais_id)
    REFERENCES public.consultora_pais (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS consultora_provincia_pais_id_fa8fbdcd
    ON public.consultora_provincia(pais_id);


ALTER TABLE IF EXISTS public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id)
    REFERENCES public.django_content_type (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS django_admin_log_content_type_id_c4bce8eb
    ON public.django_admin_log(content_type_id);


ALTER TABLE IF EXISTS public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id)
    REFERENCES public.auth_user (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;
CREATE INDEX IF NOT EXISTS django_admin_log_user_id_c564eba6
    ON public.django_admin_log(user_id);

END;