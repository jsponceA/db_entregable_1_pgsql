INSERT INTO public.categories(
	name)
	VALUES ('mobile'),('react');


INSERT INTO public.course_level(
	name)
	VALUES ('basico'),('avanzado');


INSERT INTO public.courses(
	 course_level_id, title, description, teacher)
	VALUES ( 1, 'maquetacion en css', 'curso de fronted', 'ALejanda Olazagasti');
	INSERT INTO public.courses(
	 course_level_id, title, description, teacher)
	VALUES ( 2, 'react', 'react desde 0 a experto en 1hora', 'George Berger');

INSERT INTO public.course_categorie(
	course_id, category_id)
	VALUES (1,2), (2,1);

INSERT INTO public.course_video(
	 course_id, title, url)
	VALUES (1, 'video de curso1', 'https://github.com/123'), (2, 'video de curso2', 'https://github.com/456');

INSERT INTO public.roles(
	 name)
	VALUES ('Alumno'), ('Profesor') , ('Administrador');

INSERT INTO public.users(
	 role_id, name, email, password, age)
	VALUES (1, 'jony', 'jonny47169@gmail.com', '123456', 25),
 (2, 'Ian', 'ian@gmail.com', '123456', 50), (3, 'Diego', 'diego@gmail.com', '123456', 99);


INSERT INTO public.courses_users(
	courses_id, users_id)
	VALUES (1, 2), (2, 1);


