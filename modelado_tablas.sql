CREATE TABLE IF NOT EXISTS public.users
(
    id bigserial NOT NULL,
    role_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(255) NOT NULL,
    age integer NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.courses
(
    id bigserial NOT NULL,
    course_level_id bigint NOT NULL,
    teacher_id bigint NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(500),
    teacher character varying(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.course_video
(
    id bigserial NOT NULL,
    course_id bigint NOT NULL,
    title character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    PRIMARY KEY (course_id)
);

CREATE TABLE IF NOT EXISTS public.categories
(
    id bigserial NOT NULL,
    name character varying(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.roles
(
    id bigserial NOT NULL,
    name character varying(100),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.course_level
(
    id bigserial NOT NULL,
    name character varying(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.course_categorie
(
    course_id bigserial NOT NULL,
    category_id bigserial NOT NULL
);

CREATE TABLE IF NOT EXISTS public.courses_users
(
    courses_id bigserial NOT NULL,
    users_id bigserial NOT NULL
);

ALTER TABLE IF EXISTS public.users
    ADD FOREIGN KEY (role_id)
    REFERENCES public.roles (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.courses
    ADD FOREIGN KEY (course_level_id)
    REFERENCES public.course_level (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.course_video
    ADD FOREIGN KEY (course_id)
    REFERENCES public.courses (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.course_categorie
    ADD FOREIGN KEY (course_id)
    REFERENCES public.courses (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.course_categorie
    ADD FOREIGN KEY (category_id)
    REFERENCES public.categories (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.courses_users
    ADD FOREIGN KEY (courses_id)
    REFERENCES public.courses (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.courses_users
    ADD FOREIGN KEY (users_id)
    REFERENCES public.users (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
