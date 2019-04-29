--
-- Datos de la base de datos
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Data for Name: auditoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auditoria (id_auditoria, id_usuario, descripcion, fecha) FROM stdin;
\.


--
-- Data for Name: datos_per; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY datos_per (id_datosper, id_usuario, nombre, apellidos, mail, nombrecons) FROM stdin;
4123ce0b-cabe-4833-bd7a-6f41c5f1bbb5	101dbd01-c5c0-4ddb-8543-87de1ed69ab9	angel de jesus	moreno fragoso	angelito@gmail	personal
a8c26198-1f3a-4631-a8e6-afc5cb447f5d	101dbd01-c5c0-4ddb-8543-87de1ed69ab9	mauricio	moreno martinez	angelito@gmail	personal
e5142083-3d1e-4dff-89b0-383bfba11b63	101dbd01-c5c0-4ddb-8543-87de1ed69ab9	karina	fragoso palestina	tender@gmail	personal
1337229a-41a4-4477-ba76-13dc08755414	101dbd01-c5c0-4ddb-8543-87de1ed69ab9	lourdes	fragoso palestina	tender@gmail	personal
1056821d-d8a0-433f-a1b9-40c9665e4916	101dbd01-c5c0-4ddb-8543-87de1ed69ab9	guillermo	moreno	memo@gmail	personal
f3f02017-dfc6-4927-9d25-a736968a6bff	101dbd01-c5c0-4ddb-8543-87de1ed69ab9	mauricio	moreno martinez	angelito@gmail	personal
7b973a59-45b5-4335-8c8b-e363ea14dd05	101dbd01-c5c0-4ddb-8543-87de1ed69ab9	arnold	martinez	arnold@gmail	personal
ee254fa2-fc8e-427c-959d-c770b9869e60	101dbd01-c5c0-4ddb-8543-87de1ed69ab9	arnold3	martinez2	arnold@gmail	personal
71a32c81-ce1e-4da0-8df9-f275fcbc43b0	101dbd01-c5c0-4ddb-8543-87de1ed69ab9	manuel	lumier	manu@gmail	microsoft
2f1c0d23-8276-48a8-88d1-5435df596163	101dbd01-c5c0-4ddb-8543-87de1ed69ab9	albert	einstein	alber@gmail.com	cientifico
e2da37c7-9239-4992-a6b3-dc1ed5a1c360	101dbd01-c5c0-4ddb-8543-87de1ed69ab9	michael	jordan	mike@gmail.com	jugador
b282e1ad-e354-4b88-8e65-4739e106b937	101dbd01-c5c0-4ddb-8543-87de1ed69ab9	mauricio	moreno	moreno@hotmail	adesis
eabbe13f-dc4f-4cc9-9b02-6de14cbbcc42	101dbd01-c5c0-4ddb-8543-87de1ed69ab9	lorena	martinez	lore@gmail.com	personal
ba1b6a71-79bf-47ee-bb26-25f3c2b93f9a	101dbd01-c5c0-4ddb-8543-87de1ed69ab9	mauricio	moreno	moreno@hotmail	adesis
\.


--
-- Data for Name: entorno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY entorno (id_entorno, id_servicio, nombre) FROM stdin;
881f8936-4b5d-45e7-a021-e7b84512e753	c26ea8e4-d9ce-44ec-a5d5-2ba6737caa07	entorno angel
c1596e12-9afe-4561-9c0a-9edbc2d122a2	28a50f9a-c56d-4265-af1d-3f644f6bcaac	entorno angel
9e1a6d94-75a2-436b-aa7e-4d8cd1424d5a	a817058e-286f-49a8-972a-698d7ab5c775	entorno angel
3338ddaa-d5e1-4190-ad2a-189f68937020	ccf05234-3caf-4167-845c-083f2e07df32	entorno karina
e7e4e8e3-0ad7-4843-bdcb-72e62481a4b6	933ccd0d-bf08-4f54-9ad8-d8227479df86	entorno karina
413f8d9a-4c58-432f-b082-f5096bfdc39b	024fcbaf-7c91-48e8-a44e-e9d993254d49	entorno memo
53222d86-f68b-4e13-bcb2-57e81c169773	5fd0c8e9-4e70-4bbf-9c33-f633e3a7005a	entorno angel
1eb5ef9e-9556-4ca7-bb0d-803af0ba1ef2	b1fdf838-a924-40d7-a832-67c7e0e1b47f	entorno arnold
52c9c1ad-eaae-4017-8a6f-15d893a477bb	bea2029a-ad9f-439a-b008-337a46a0158b	entorno arnold
7200a19f-596b-4072-9ffb-9c32792881ed	c068b5c0-966f-49b8-91d6-8cc9c09d7b28	entorno2.2
0e8a5045-7ffd-4e26-8084-25a71fab2069	c068b5c0-966f-49b8-91d6-8cc9c09d7b28	entorno2.1
3115e128-461a-4214-947c-1ad924482b10	b1c0cc9d-3896-47b8-9660-66c5db07a547	cientifico
77140d06-c822-43af-a272-fc69a9e83756	b1c0cc9d-3896-47b8-9660-66c5db07a547	genio
1eb7914f-e465-41db-9752-c20980cf705a	d3d04f70-934a-4073-a2d6-d4a32302c379	deportivo
df5efeb6-cdff-439b-87eb-618b0a033fe3	d3d04f70-934a-4073-a2d6-d4a32302c379	social
1d389f09-f101-47ae-9bda-126b1eb33cb9	9f1b6509-a1ff-4223-9a86-b7fb75b8b3b5	entorno
54b2470e-6dbd-42f7-808d-0d9f3a40a382	19f79ac2-69c6-41cf-bcfe-b52ffbe804aa	entorno lore1
c254ae27-1bfe-4efb-b519-40a00cfac14e	19f79ac2-69c6-41cf-bcfe-b52ffbe804aa	entorno lore2
f4abe08a-a6cd-4bd6-9ae0-5efde8088105	287560dc-f423-4509-a1c6-fee093ea7cf0	desarrollo
\.


--
-- Data for Name: jars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jars (id_jar, id_servicio, descripcion, version) FROM stdin;
2d07ced0-bab8-4d2f-9d35-732bcf461f4b	c26ea8e4-d9ce-44ec-a5d5-2ba6737caa07	jar de angel	version angel
a046f704-5546-42c6-995b-ad7ab19e6af7	28a50f9a-c56d-4265-af1d-3f644f6bcaac	jar de angel	version angel
16ffcdb6-22bc-476a-8f9a-aac412095075	a817058e-286f-49a8-972a-698d7ab5c775	jar de angel	version angel
66acabd6-629c-44df-b7b0-12081c144a51	ccf05234-3caf-4167-845c-083f2e07df32	jar de karina	version karina
34a1a912-744b-427e-a707-7d02b2fd7daf	933ccd0d-bf08-4f54-9ad8-d8227479df86	jar de karina	version karina
4148edb2-2600-46d4-b3fd-75015f83acb3	024fcbaf-7c91-48e8-a44e-e9d993254d49	jar de memo	version memo
0376f332-9b29-4b6c-af25-400808fc7d16	5fd0c8e9-4e70-4bbf-9c33-f633e3a7005a	jar de angel	version angel
0c262157-ff67-4e58-96f3-c6e672db959f	b1fdf838-a924-40d7-a832-67c7e0e1b47f	jar de arnold	version arnold
0e9b1260-7182-4fb6-87fd-fae69f461884	bea2029a-ad9f-439a-b008-337a46a0158b	jar de arnold	version arnold
e3fbdee8-0eb4-4f8c-87ca-2cfa0abab6d3	c068b5c0-966f-49b8-91d6-8cc9c09d7b28	jar1	2.2
f22ccda5-e51c-47bb-a254-82bfbb73e24d	c068b5c0-966f-49b8-91d6-8cc9c09d7b28	jar2	2.2
c5034dfb-c6c1-44f4-a0e8-473d136330a3	b1c0cc9d-3896-47b8-9660-66c5db07a547	desarrollo	1.1
f8f6f562-6ea7-469f-ab71-f54474a2a174	b1c0cc9d-3896-47b8-9660-66c5db07a547	ciencia	1.2
b89901c1-43aa-4702-9ffb-c92029f93790	b1c0cc9d-3896-47b8-9660-66c5db07a547	tecnologia	1.3
e83a5536-7b41-456d-bed1-c71e8094cf4d	d3d04f70-934a-4073-a2d6-d4a32302c379	deporte	1.1
5be3ea9b-2004-4064-9daa-d5fa8a76cc5e	d3d04f70-934a-4073-a2d6-d4a32302c379	entrenamiento	1.2
98819196-93b7-4e34-af5c-1e1028292260	9f1b6509-a1ff-4223-9a86-b7fb75b8b3b5	jar1	version2
8df2c09e-f393-41a0-92bc-e7ea195d61e1	19f79ac2-69c6-41cf-bcfe-b52ffbe804aa	jar lore1	1.1
bfdcc115-3959-43a6-b3c2-60799ae61e89	19f79ac2-69c6-41cf-bcfe-b52ffbe804aa	jar lore2	1.2
37e27f82-c46e-4aa3-923d-6c7a641338ba	287560dc-f423-4509-a1c6-fee093ea7cf0	jar1	2.1
\.


--
-- Data for Name: login; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY login (id_usuario, password, status, user_name) FROM stdin;
101dbd01-c5c0-4ddb-8543-87de1ed69ab9	memo        	t	guillermo
\.


--
-- Data for Name: servicios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY servicios (id_servicio, id_datosper, nombreserv, fecharegistro, nodimensions) FROM stdin;
c26ea8e4-d9ce-44ec-a5d5-2ba6737caa07	4123ce0b-cabe-4833-bd7a-6f41c5f1bbb5	servicio desarrollo	2015-12-01	dimensons 1
28a50f9a-c56d-4265-af1d-3f644f6bcaac	bc534c2a-d76d-4eb8-aced-c4eb0dbfba57	        	2015-12-01	dimensons 1
a817058e-286f-49a8-972a-698d7ab5c775	a8c26198-1f3a-4631-a8e6-afc5cb447f5d	servicio Mauricio	2015-12-02	dimensons 1
ccf05234-3caf-4167-845c-083f2e07df32	e5142083-3d1e-4dff-89b0-383bfba11b63	servicio karina	2015-12-03	dimensons 3
933ccd0d-bf08-4f54-9ad8-d8227479df86	1337229a-41a4-4477-ba76-13dc08755414	servicio karina	2015-12-04	dimensons 3
024fcbaf-7c91-48e8-a44e-e9d993254d49	1056821d-d8a0-433f-a1b9-40c9665e4916	servicio memo	2015-12-04	dimensons 4
5fd0c8e9-4e70-4bbf-9c33-f633e3a7005a	f3f02017-dfc6-4927-9d25-a736968a6bff	servicio Mauricio	2015-12-05	dimensons 1
b1fdf838-a924-40d7-a832-67c7e0e1b47f	7b973a59-45b5-4335-8c8b-e363ea14dd05	servicio arnold	2015-12-07	dimensons 1
bea2029a-ad9f-439a-b008-337a46a0158b	ee254fa2-fc8e-427c-959d-c770b9869e60	servicio arnold	2015-12-08	dimensons 1
c068b5c0-966f-49b8-91d6-8cc9c09d7b28	71a32c81-ce1e-4da0-8df9-f275fcbc43b0	service300	2015-12-08	2412
b1c0cc9d-3896-47b8-9660-66c5db07a547	2f1c0d23-8276-48a8-88d1-5435df596163	servicio ciencia	2015-12-09	2016
d3d04f70-934a-4073-a2d6-d4a32302c379	e2da37c7-9239-4992-a6b3-dc1ed5a1c360	servicio deporte	2015-12-09	2016
d459587f-41cf-4360-a551-342b75d26e1a	4123ce0b-cabe-4833-bd7a-6f41c5f1bbb5	servicio 5	2016-01-01	12dimensions
19f79ac2-69c6-41cf-bcfe-b52ffbe804aa	eabbe13f-dc4f-4cc9-9b02-6de14cbbcc42	servicio lore	2016-01-06	200
287560dc-f423-4509-a1c6-fee093ea7cf0	ba1b6a71-79bf-47ee-bb26-25f3c2b93f9a	servicio	2015-12-12	123123
\.
