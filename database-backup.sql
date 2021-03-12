--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Debian 13.2-1.pgdg100+1)
-- Dumped by pg_dump version 13.2 (Debian 13.2-1.pgdg100+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: product_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_features (
    product_id integer,
    feature character varying(25),
    value character varying(25)
);


ALTER TABLE public.product_features OWNER TO postgres;

--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    slogan character varying(250),
    description character varying(225),
    category character varying(50) NOT NULL,
    default_price character varying(20) NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: style_photos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.style_photos (
    product_id integer,
    style_id integer,
    thumbnail_url character varying(5000),
    url character varying(5000)
);


ALTER TABLE public.style_photos OWNER TO postgres;

--
-- Name: style_skus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.style_skus (
    product_id integer,
    style_id integer,
    size character varying(25),
    instock integer
);


ALTER TABLE public.style_skus OWNER TO postgres;

--
-- Name: styles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.styles (
    product_id integer,
    style_id integer,
    name character varying(50) NOT NULL,
    original_price character varying(50) NOT NULL,
    sale_price character varying(50),
    "default?" integer
);


ALTER TABLE public.styles OWNER TO postgres;

--
-- Data for Name: product_features; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_features (product_id, feature, value) FROM stdin;
1	Granite	Sleek
1	Granite	Small
2	Fresh	Handmade
3	Metal	Ergonomic
4	Plastic	Fantastic
5	Fresh	Handmade
6	Frozen	Practical
6	Soft	Incredible
7	Cotton	Gorgeous
7	Wooden	Small
8	Soft	Handcrafted
8	Wooden	Awesome
9	Frozen	Tasty
10	Frozen	Handcrafted
11	Concrete	Awesome
12	Soft	Small
12	Wooden	Sleek
13	Steel	Licensed
14	Steel	Handmade
14	Fresh	Practical
15	Granite	Small
15	Cotton	Awesome
16	Concrete	Ergonomic
16	Frozen	Generic
17	Cotton	Sleek
17	Wooden	Gorgeous
18	Plastic	Ergonomic
19	Frozen	Small
19	Plastic	Small
20	Steel	Sleek
20	Frozen	Handcrafted
21	Rubber	Small
21	Granite	Rustic
22	Concrete	Ergonomic
22	Granite	Rustic
23	Cotton	Generic
24	Metal	Small
24	Plastic	Handcrafted
25	Frozen	Rustic
25	Granite	Practical
26	Rubber	Unbranded
27	Steel	Handcrafted
27	Frozen	Sleek
28	Frozen	Refined
29	Frozen	Generic
30	Concrete	Rustic
30	Concrete	Fantastic
31	Metal	Gorgeous
32	Fresh	Incredible
32	Frozen	Intelligent
33	Steel	Ergonomic
34	Soft	Licensed
35	Fresh	Generic
36	Plastic	Practical
36	Plastic	Unbranded
37	Fresh	Small
38	Concrete	Fantastic
38	Granite	Handmade
39	Frozen	Unbranded
39	Plastic	Small
40	Soft	Refined
41	Cotton	Rustic
42	Frozen	Handmade
43	Cotton	Fantastic
44	Frozen	Tasty
45	Frozen	Awesome
45	Frozen	Awesome
46	Cotton	Licensed
46	Soft	Generic
47	Steel	Unbranded
48	Soft	Rustic
48	Metal	Generic
49	Concrete	Rustic
50	Rubber	Practical
51	Granite	Handmade
52	Rubber	Tasty
52	Granite	Unbranded
53	Soft	Handmade
54	Granite	Unbranded
55	Plastic	Refined
56	Frozen	Sleek
57	Wooden	Tasty
57	Wooden	Sleek
58	Metal	Handmade
58	Plastic	Licensed
59	Steel	Sleek
59	Plastic	Handmade
60	Cotton	Gorgeous
60	Concrete	Handcrafted
61	Cotton	Fantastic
61	Concrete	Intelligent
62	Soft	Fantastic
63	Rubber	Unbranded
63	Steel	Small
64	Fresh	Small
64	Soft	Sleek
65	Metal	Handmade
66	Plastic	Tasty
66	Metal	Gorgeous
67	Frozen	Sleek
68	Steel	Handcrafted
69	Granite	Handmade
70	Plastic	Practical
71	Granite	Unbranded
71	Granite	Gorgeous
72	Granite	Small
72	Steel	Awesome
73	Cotton	Fantastic
73	Cotton	Licensed
74	Plastic	Refined
75	Steel	Small
75	Concrete	Incredible
76	Metal	Unbranded
77	Frozen	Sleek
78	Soft	Tasty
79	Soft	Refined
79	Cotton	Awesome
80	Fresh	Ergonomic
80	Soft	Refined
81	Granite	Handcrafted
82	Fresh	Generic
82	Plastic	Small
83	Rubber	Generic
84	Steel	Awesome
85	Plastic	Sleek
86	Plastic	Gorgeous
86	Soft	Gorgeous
87	Plastic	Generic
88	Rubber	Awesome
88	Steel	Gorgeous
89	Cotton	Unbranded
90	Frozen	Awesome
91	Wooden	Licensed
91	Concrete	Unbranded
92	Soft	Licensed
93	Wooden	Practical
94	Wooden	Fantastic
95	Rubber	Refined
95	Wooden	Licensed
96	Fresh	Ergonomic
97	Soft	Fantastic
97	Soft	Refined
98	Granite	Small
98	Concrete	Generic
99	Rubber	Sleek
100	Granite	Licensed
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, slogan, description, category, default_price) FROM stdin;
1	Practical Plastic Chips	Quia magni aut doloremque doloremque magnam dolor dolores.	Voluptatibus eum sint molestiae incidunt aperiam. Architecto ut facilis iste eveniet accusamus ex.	Fish	$17.00
2	Small Wooden Bacon	Tempora ratione id quidem repellat amet natus sunt doloribus vitae.	Expedita doloremque quisquam facere assumenda qui est et. Sunt vel incidunt blanditiis fugiat saepe dolor qui nihil.	Shirt	$309.00
3	Practical Cotton Bike	Expedita minus magni vitae est aperiam.	Quis molestiae ab atque. Doloribus veniam qui sint esse sunt est dolor.	Chicken	$139.00
4	Handmade Fresh Bike	In voluptatem quia harum beatae necessitatibus.	Blanditiis enim omnis. Incidunt assumenda ea modi possimus odio dignissimos.	Fish	$933.00
5	Small Fresh Towels	Voluptatem ut eos et vitae quisquam necessitatibus maxime.	Aut incidunt sequi aspernatur consequatur occaecati mollitia eos. Rerum ullam porro.	Car	$907.00
6	Rustic Plastic Towels	Aspernatur voluptatum esse.	Illo optio velit et consectetur distinctio ullam velit quia rerum. Sed saepe voluptatem sed.	Bike	$109.00
7	Licensed Steel Keyboard	Itaque voluptatem iste.	Aut beatae itaque quia quod voluptas enim ad. Quia quia rem et illo ea in.	Gloves	$593.00
8	Sleek Metal Bike	Voluptatem quis incidunt qui commodi aut.	Laudantium enim enim sequi aut iusto necessitatibus nostrum quibusdam accusantium. Ut tempore dolorem magni officia.	Towels	$60.00
9	Handcrafted Plastic Shoes	Totam perferendis vel id aut libero dolorum doloribus.	Perspiciatis rerum quia perferendis. Saepe et vel sit voluptatem repudiandae ipsum explicabo est.	Table	$215.00
10	Unbranded Soft Hat	Mollitia adipisci maxime.	Sed iusto tempora sapiente eum delectus aut quaerat voluptate. Similique officia itaque.	Bacon	$192.00
11	Fantastic Metal Gloves	Quia aliquid dolor.	In maxime illum officia. Asperiores deserunt ut veniam.	Pants	$610.00
12	Rustic Concrete Hat	Delectus dolor quae et.	Officia voluptatibus et exercitationem dolorum eveniet voluptatem qui assumenda qui. Est dolores quasi amet rerum excepturi.	Mouse	$479.00
13	Handcrafted Fresh Salad	Veniam et rerum rem unde est numquam ea similique.	Quisquam amet natus ut dolore vero et. Omnis qui quod omnis facilis et vel.	Tuna	$305.00
14	Fantastic Rubber Towels	Quis nulla totam voluptates laborum non pariatur delectus.	Ut minima tenetur doloribus ratione possimus doloribus porro ad id. Qui non mollitia labore.	Gloves	$790.00
15	Ergonomic Cotton Mouse	Perferendis quia veniam ipsa dolorem non ut laboriosam.	Facilis excepturi qui et ipsum veniam ratione facere delectus eius. Quas ratione sit iste aut aut fugiat vel.	Bacon	$228.00
16	Generic Wooden Car	Est nulla doloribus iure qui atque dolores iste dolore voluptatem.	Architecto aliquam non incidunt quisquam blanditiis sed. Est nesciunt qui tempora animi qui voluptatem id eum.	Towels	$383.00
17	Practical Steel Cheese	Consequatur voluptatem ipsum velit iste enim doloremque voluptas.	Voluptatum sed rerum ab sit dolor. Quam porro a quas ab ab fugit provident rerum possimus.	Chair	$621.00
18	Handmade Concrete Towels	Minima eum labore nulla harum laudantium maiores impedit.	Eos distinctio qui veniam et et minus non quae. In porro corrupti necessitatibus itaque aut quam ea doloribus optio.	Bacon	$511.00
19	Handcrafted Frozen Salad	Porro similique perspiciatis distinctio harum reiciendis iste numquam voluptatum voluptas.	Suscipit qui voluptas suscipit quia et magnam ut quidem. Ea in non.	Pants	$225.00
20	Sleek Steel Chair	Non qui corporis veritatis et suscipit.	Et fuga magni. Eligendi libero ipsa aut.	Fish	$448.00
21	Ergonomic Wooden Keyboard	Enim molestiae ipsam earum.	Debitis sunt est architecto officiis. Sequi asperiores aspernatur molestiae.	Chicken	$433.00
22	Awesome Fresh Bacon	Maxime et quo consequatur libero assumenda.	Aut animi perspiciatis ipsam doloremque repellendus in consequatur sint. Omnis quas velit.	Pizza	$804.00
23	Handcrafted Plastic Shoes	Velit excepturi et et perferendis.	Molestiae fugit et tenetur quae omnis et totam. Et aliquid veritatis a est vero est explicabo officiis ratione.	Cheese	$841.00
24	Gorgeous Wooden Fish	Ut repudiandae quia distinctio veniam ullam dolorum.	Ex dignissimos est eaque rem nihil eveniet omnis dolorem vitae. Quia fugiat sint est alias ratione aut nisi.	Salad	$270.00
25	Handcrafted Cotton Ball	Optio vitae est ipsam fuga.	Laudantium saepe aliquid laboriosam excepturi eos blanditiis est aut. Perferendis doloremque blanditiis non qui ut aut.	Ball	$63.00
26	Fantastic Frozen Sausages	Possimus repellendus dolorem.	Culpa ducimus perferendis eius quia sint dolor dolores. Rerum ut hic temporibus.	Shoes	$105.00
27	Gorgeous Rubber Bacon	Voluptates qui reiciendis.	Laboriosam dolor recusandae aut odit et voluptate illo pariatur provident. Ab nulla est doloremque.	Pizza	$877.00
28	Handmade Cotton Cheese	Libero nobis debitis maiores repudiandae aut omnis suscipit.	Hic non velit modi qui voluptates nihil esse ut dolores. Ut ut laudantium eum soluta.	Bacon	$480.00
29	Practical Frozen Fish	Suscipit sit ea possimus sequi eaque.	Sequi et aliquam eius molestiae excepturi sit esse. Et incidunt laudantium eaque distinctio magni repellat dolor sit.	Mouse	$649.00
30	Gorgeous Rubber Pants	Eligendi quo asperiores sunt.	Quia esse aut. Reiciendis est incidunt praesentium blanditiis nesciunt.	Towels	$667.00
31	Awesome Rubber Car	Aspernatur consequuntur aut.	Officiis ut aliquid magnam deserunt voluptatem iusto. Iste rerum qui.	Chair	$21.00
32	Gorgeous Wooden Cheese	Quis et voluptas sed quis quam recusandae rerum enim odit.	Distinctio iste id sed est. Beatae enim perferendis qui iure id.	Towels	$784.00
33	Awesome Steel Shoes	Occaecati vitae aut voluptatem voluptatem nostrum quisquam.	Nulla officia beatae illo nihil expedita alias qui. Dicta tempore voluptas enim mollitia consequatur.	Towels	$380.00
34	Incredible Cotton Ball	Aut et rerum sit dolore.	Qui aspernatur repellat perferendis. Qui vel soluta.	Ball	$168.00
35	Sleek Fresh Cheese	Earum et aperiam facilis harum veritatis facere ipsa.	Itaque illo sit ut nemo dolorem alias. Quia cum et.	Mouse	$198.00
36	Licensed Frozen Soap	Aliquam vitae sunt aperiam sunt et rerum et.	Soluta tempore qui optio. Qui voluptas voluptas voluptas nihil odit itaque molestiae.	Chips	$498.00
37	Small Steel Sausages	Illo non numquam sit voluptatem consequuntur beatae accusantium.	Odio beatae impedit sed ratione illo saepe cupiditate ea. Labore qui et dolorem natus ad quo possimus rerum repellendus.	Ball	$421.00
38	Rustic Steel Bike	Qui exercitationem qui error provident doloremque ab sint exercitationem ut.	Quis neque dolores omnis vero voluptas dignissimos molestias animi. Voluptas accusamus qui hic aut alias et delectus aperiam.	Pizza	$52.00
39	Fantastic Concrete Keyboard	Doloribus possimus in dolores nihil totam ratione optio non quam.	Et amet ratione omnis tempora quasi. Blanditiis quae ipsam et eaque perferendis velit quia.	Chicken	$559.00
40	Intelligent Fresh Soap	Id ipsam doloribus consectetur delectus.	Quia sed repellendus eos. Pariatur numquam et quia vel quam corporis aut ex.	Tuna	$372.00
41	Handmade Concrete Chicken	Et cum dolores omnis minus officiis neque voluptatem.	Pariatur dolorem accusantium neque molestias blanditiis aut ipsa animi voluptatem. Recusandae beatae vel eum fugit.	Salad	$154.00
42	Fantastic Cotton Cheese	Harum distinctio doloribus ea distinctio modi et.	Eos voluptas omnis eligendi ut et voluptatem quae. Mollitia possimus maiores consequatur qui explicabo.	Chicken	$592.00
43	Refined Granite Chips	Aut nemo quod sed itaque sit veritatis.	Dicta reprehenderit quisquam. Eum beatae veritatis autem ut.	Car	$669.00
44	Tasty Concrete Bacon	Aperiam iusto similique illum eum.	Placeat aspernatur voluptatem rem et qui sit est. Earum occaecati ea.	Tuna	$357.00
45	Refined Granite Gloves	Vel quia atque.	Rerum similique natus consequuntur. Fugiat culpa autem.	Shirt	$781.00
46	Tasty Granite Ball	In dolor et molestias ipsam dolores sunt rerum.	Magni veritatis exercitationem possimus voluptatem voluptatem. Id distinctio et et illo veniam odio ut error.	Tuna	$521.00
47	Handcrafted Steel Tuna	Natus aliquam quod excepturi accusantium perferendis dolorem.	Est odit provident. Aut voluptas dolorem.	Mouse	$858.00
48	Ergonomic Cotton Chair	Ut in repellat delectus veniam.	Omnis et doloremque aliquam. Eligendi ex sit.	Ball	$651.00
49	Practical Fresh Computer	Maxime sed distinctio doloremque.	Rerum ex asperiores libero. Aut facere in non impedit recusandae.	Towels	$660.00
50	Fantastic Concrete Towels	Voluptas voluptas iusto repellat est.	Nostrum praesentium ipsum illum omnis quae labore debitis sed dolore. Et officiis inventore velit nisi at ab odio cupiditate iste.	Chair	$225.00
51	Refined Wooden Table	Sint iusto sed ipsam.	Qui sed cupiditate iste. Totam iure non vel saepe doloribus dolores.	Salad	$800.00
52	Intelligent Fresh Tuna	Quidem doloribus quidem consequatur sequi omnis ex vel ratione laudantium.	Et nulla officia voluptatem excepturi nemo. Iusto rerum aliquam nihil.	Sausages	$688.00
53	Licensed Wooden Shirt	Pariatur repudiandae aut dolorem voluptatem sint alias et.	Minima error ut alias qui ut. Iure error est.	Table	$910.00
54	Handcrafted Steel Chicken	Autem repellat porro porro harum qui placeat aut corporis.	Eius hic sit officia architecto consectetur consequatur debitis. Illo voluptatem numquam quasi.	Chips	$717.00
55	Ergonomic Granite Ball	Velit reprehenderit dicta.	Unde saepe rerum inventore. Perferendis dolores nulla distinctio autem.	Soap	$398.00
56	Rustic Cotton Table	Doloremque qui aperiam.	Officiis debitis dolor rerum dolorem repudiandae sed sit maxime eum. Placeat placeat numquam modi dolor consequatur.	Bike	$947.00
57	Handcrafted Granite Chicken	Et veniam soluta tenetur facere saepe.	Repellat aut sit nihil reprehenderit non consequatur et et. Sunt veniam facere aut.	Sausages	$739.00
58	Licensed Metal Salad	Aperiam sit quibusdam.	Et est suscipit explicabo. Asperiores non vero voluptatum quae odit.	Chicken	$152.00
59	Awesome Soft Bacon	Et aliquam aut et consequuntur.	Aut aliquid sit sed repellat ipsa. Aut modi nulla porro aperiam debitis fugit molestiae quia sunt.	Sausages	$424.00
60	Rustic Rubber Car	Vel nam non corrupti facilis qui cum sed.	Animi cum et eos sunt minima non. Quis nesciunt molestias sed ut dignissimos quidem.	Pizza	$85.00
61	Handmade Frozen Pants	Cumque adipisci molestiae cum officiis assumenda ut.	Delectus hic enim nulla. Cumque fugit aliquam nesciunt consequuntur repellendus.	Keyboard	$24.00
62	Sleek Wooden Car	Rem molestiae non natus temporibus facere.	In harum voluptatem. Id ab dolores dicta voluptatem labore hic nobis.	Bike	$770.00
63	Intelligent Rubber Hat	Molestias assumenda eum.	Autem omnis omnis natus voluptas ut voluptatibus natus illo amet. Itaque voluptatum voluptates distinctio aut.	Chair	$207.00
64	Small Granite Salad	Perspiciatis placeat quidem.	Dignissimos sit ullam facere. Tenetur quia ad et quaerat at nulla in.	Sausages	$729.00
65	Incredible Frozen Pizza	Ipsa voluptas excepturi ut.	Eos voluptatem et. Qui eum perferendis aliquid dolores sit ut quia.	Keyboard	$981.00
66	Refined Cotton Computer	Nihil magnam facilis vel voluptatem omnis.	Culpa tempore harum. Ut quibusdam rem iure commodi dolorum ipsa voluptatem.	Ball	$625.00
67	Intelligent Fresh Salad	Doloribus ex numquam accusamus.	Enim vel dolorum repellat excepturi rem explicabo iure omnis qui. Ratione quia omnis quis corrupti ratione ullam.	Pants	$483.00
68	Tasty Fresh Bike	Libero voluptatum atque quibusdam consequatur quis.	Distinctio sapiente amet aut excepturi officia neque. Omnis quia fuga sunt in blanditiis libero tempore explicabo reprehenderit.	Mouse	$446.00
69	Awesome Wooden Chips	Qui velit in consequuntur in voluptatibus ex pariatur.	Consequuntur animi nihil eum iure magni deleniti non. Expedita illo praesentium omnis maxime.	Fish	$392.00
70	Practical Wooden Sausages	Hic est voluptatem magnam doloribus sit maiores aut perspiciatis consequatur.	Consequatur perferendis officia eum praesentium ab autem atque et. Officiis vero qui praesentium nam et debitis nesciunt accusantium.	Fish	$231.00
71	Refined Granite Pizza	Eveniet et non excepturi atque atque aut.	Sint numquam et repudiandae quasi et placeat quia minus. Asperiores quisquam qui magnam consequuntur dicta molestias molestiae tenetur qui.	Bacon	$33.00
72	Generic Wooden Pizza	Magni dolor ea sint et dolores et et blanditiis.	Iusto inventore beatae ut porro eius provident. Quia provident omnis quidem pariatur.	Keyboard	$733.00
73	Ergonomic Granite Table	Eius sequi sit omnis ut rem est vel repellat quisquam.	Dignissimos dolores eius assumenda et incidunt. Aut sit repudiandae voluptatum.	Table	$778.00
74	Fantastic Rubber Chair	Quos recusandae voluptas placeat ut.	Fugit optio quibusdam autem qui neque a nobis voluptas hic. Ut consequatur ipsum.	Gloves	$185.00
75	Sleek Granite Mouse	Ducimus assumenda velit minima provident omnis.	Nulla enim optio dolore autem ex dolor omnis voluptatem non. Modi quasi est rerum quis.	Cheese	$301.00
76	Rustic Frozen Computer	Culpa consequuntur aut ex est ipsum.	Consequuntur ea facilis. Ducimus voluptas est beatae quas accusamus vel.	Salad	$750.00
77	Intelligent Steel Chips	Ut sapiente officiis sed facilis iste.	Et harum quia quibusdam odit magni magni. Error impedit ipsa aspernatur quaerat incidunt rem necessitatibus omnis.	Keyboard	$587.00
78	Licensed Frozen Chips	Ipsam consectetur aliquid qui dicta quae error eos.	Ea omnis eum non sed aut odit. Excepturi voluptatem a vel ipsum officia et quo velit.	Cheese	$213.00
79	Refined Metal Fish	Quo voluptatum explicabo id eveniet ipsam.	Distinctio dolores laborum consequatur magni in ratione cum. Distinctio velit voluptatem.	Cheese	$641.00
80	Practical Wooden Sausages	Itaque dolor explicabo sunt quisquam aspernatur ea earum corporis.	At pariatur soluta est. Nihil quo dignissimos voluptas.	Soap	$492.00
81	Sleek Concrete Chips	Quo sapiente eos nam.	Temporibus deleniti molestias voluptatem ut sit quia error. Voluptatum illo nobis autem quae architecto.	Salad	$134.00
82	Handmade Fresh Keyboard	Est consequatur sit ullam quae dolor.	Error voluptatum hic. Aperiam nostrum porro cupiditate velit animi provident placeat debitis.	Shoes	$394.00
83	Small Frozen Chicken	Quia itaque sapiente quo eum.	Distinctio sed et commodi odit est. Facere laboriosam suscipit molestias ipsum.	Computer	$269.00
84	Handcrafted Metal Salad	Quia provident quasi eveniet autem omnis harum veniam.	Quidem fugit maxime laboriosam libero inventore. Libero incidunt error iusto voluptatem porro sint ipsa veniam.	Chips	$345.00
85	Practical Granite Chips	Eum qui iusto itaque iure officia laboriosam a enim vel.	Et est vel repellat id. Quibusdam excepturi aut eius perspiciatis.	Chair	$267.00
86	Incredible Plastic Table	Sed voluptatem consequatur assumenda exercitationem.	Consequatur ut veniam in doloremque dolores repellat saepe sit. Enim enim nisi officia dolor quod.	Soap	$838.00
87	Licensed Soft Car	Ab nam eum.	Quis qui neque tempore sapiente temporibus iure. At eos voluptatem.	Computer	$74.00
88	Ergonomic Steel Chair	Voluptatem aut quisquam.	Non rerum eligendi unde magnam hic. Omnis totam qui autem minima deleniti possimus unde tempora soluta.	Table	$584.00
89	Unbranded Rubber Chicken	Maxime aut voluptas.	Sed molestiae optio libero officiis deserunt. Aut excepturi voluptatem ullam ducimus eaque dolorem ut animi.	Cheese	$596.00
90	Unbranded Fresh Soap	Dolore magni incidunt.	Possimus quas ab ab numquam sunt dolores non. Quas magnam sint culpa eum earum autem quis explicabo eaque.	Hat	$540.00
91	Unbranded Rubber Computer	Voluptatem ut animi eligendi et non magni repellat quas temporibus.	Quam non hic ducimus id odit vitae non nisi neque. Aut beatae consequatur cumque labore necessitatibus dolorum eos est quis.	Pants	$697.00
92	Tasty Frozen Gloves	Veniam eos enim culpa beatae.	Quia praesentium quaerat corporis voluptas in voluptas. Quia consequatur autem recusandae porro magnam aliquid nulla.	Soap	$532.00
93	Awesome Soft Pizza	Odit rerum quia sint minima vel.	Nihil quo consequatur rerum natus ex commodi officia doloremque. Cumque voluptas et amet est distinctio culpa voluptatem at.	Gloves	$251.00
94	Handcrafted Frozen Soap	Sunt sint assumenda reiciendis officiis sapiente asperiores et est omnis.	Et eveniet aut animi fugit. Delectus earum voluptatem omnis eveniet id dolorum ipsum.	Fish	$288.00
95	Rustic Frozen Table	Reprehenderit iste ipsa aut sequi corrupti quidem eos totam.	Nisi repellat libero sunt et rerum voluptas inventore. Similique accusantium est repellat neque quidem expedita deleniti alias fuga.	Computer	$963.00
96	Fantastic Soft Pants	Ipsam laboriosam dolore consequuntur officia modi non praesentium.	Mollitia et est quasi. Qui placeat quas.	Pants	$542.00
97	Gorgeous Metal Chicken	Voluptatem cum voluptatem ad.	Nobis autem accusamus nam. Nihil similique quae enim quos doloribus mollitia qui.	Bike	$117.00
98	Awesome Rubber Pizza	Occaecati tempora voluptatibus quos.	Qui in velit enim ipsa ad qui. Animi quam occaecati repellendus temporibus voluptatem.	Chair	$848.00
99	Unbranded Granite Mouse	Omnis officiis accusamus.	Quidem magnam illum eius quia. Et eaque vel nihil.	Fish	$717.00
100	Intelligent Wooden Chicken	Facere modi fugit consequatur vel.	Dolorem ad at corrupti id inventore quia vero. Soluta animi et quasi eos dolores rem cumque.	Mouse	$115.00
\.


--
-- Data for Name: style_photos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.style_photos (product_id, style_id, thumbnail_url, url) FROM stdin;
1	1	http://placeimg.com/640/480	http://placeimg.com/640/480
1	2	http://placeimg.com/640/480	http://placeimg.com/640/480
2	1	http://placeimg.com/640/480	http://placeimg.com/640/480
2	2	http://placeimg.com/640/480	http://placeimg.com/640/480
3	1	http://placeimg.com/640/480	http://placeimg.com/640/480
3	2	http://placeimg.com/640/480	http://placeimg.com/640/480
4	1	http://placeimg.com/640/480	http://placeimg.com/640/480
4	2	http://placeimg.com/640/480	http://placeimg.com/640/480
5	1	http://placeimg.com/640/480	http://placeimg.com/640/480
5	2	http://placeimg.com/640/480	http://placeimg.com/640/480
6	1	http://placeimg.com/640/480	http://placeimg.com/640/480
6	2	http://placeimg.com/640/480	http://placeimg.com/640/480
7	1	http://placeimg.com/640/480	http://placeimg.com/640/480
7	2	http://placeimg.com/640/480	http://placeimg.com/640/480
8	1	http://placeimg.com/640/480	http://placeimg.com/640/480
8	2	http://placeimg.com/640/480	http://placeimg.com/640/480
9	1	http://placeimg.com/640/480	http://placeimg.com/640/480
9	2	http://placeimg.com/640/480	http://placeimg.com/640/480
10	1	http://placeimg.com/640/480	http://placeimg.com/640/480
10	2	http://placeimg.com/640/480	http://placeimg.com/640/480
11	1	http://placeimg.com/640/480	http://placeimg.com/640/480
11	2	http://placeimg.com/640/480	http://placeimg.com/640/480
12	1	http://placeimg.com/640/480	http://placeimg.com/640/480
12	2	http://placeimg.com/640/480	http://placeimg.com/640/480
13	1	http://placeimg.com/640/480	http://placeimg.com/640/480
13	2	http://placeimg.com/640/480	http://placeimg.com/640/480
14	1	http://placeimg.com/640/480	http://placeimg.com/640/480
14	2	http://placeimg.com/640/480	http://placeimg.com/640/480
15	1	http://placeimg.com/640/480	http://placeimg.com/640/480
15	2	http://placeimg.com/640/480	http://placeimg.com/640/480
16	1	http://placeimg.com/640/480	http://placeimg.com/640/480
16	2	http://placeimg.com/640/480	http://placeimg.com/640/480
17	1	http://placeimg.com/640/480	http://placeimg.com/640/480
17	2	http://placeimg.com/640/480	http://placeimg.com/640/480
18	1	http://placeimg.com/640/480	http://placeimg.com/640/480
18	2	http://placeimg.com/640/480	http://placeimg.com/640/480
19	1	http://placeimg.com/640/480	http://placeimg.com/640/480
19	2	http://placeimg.com/640/480	http://placeimg.com/640/480
20	1	http://placeimg.com/640/480	http://placeimg.com/640/480
20	2	http://placeimg.com/640/480	http://placeimg.com/640/480
21	1	http://placeimg.com/640/480	http://placeimg.com/640/480
21	2	http://placeimg.com/640/480	http://placeimg.com/640/480
22	1	http://placeimg.com/640/480	http://placeimg.com/640/480
22	2	http://placeimg.com/640/480	http://placeimg.com/640/480
23	1	http://placeimg.com/640/480	http://placeimg.com/640/480
23	2	http://placeimg.com/640/480	http://placeimg.com/640/480
24	1	http://placeimg.com/640/480	http://placeimg.com/640/480
24	2	http://placeimg.com/640/480	http://placeimg.com/640/480
25	1	http://placeimg.com/640/480	http://placeimg.com/640/480
25	2	http://placeimg.com/640/480	http://placeimg.com/640/480
26	1	http://placeimg.com/640/480	http://placeimg.com/640/480
26	2	http://placeimg.com/640/480	http://placeimg.com/640/480
27	1	http://placeimg.com/640/480	http://placeimg.com/640/480
27	2	http://placeimg.com/640/480	http://placeimg.com/640/480
28	1	http://placeimg.com/640/480	http://placeimg.com/640/480
28	2	http://placeimg.com/640/480	http://placeimg.com/640/480
29	1	http://placeimg.com/640/480	http://placeimg.com/640/480
29	2	http://placeimg.com/640/480	http://placeimg.com/640/480
30	1	http://placeimg.com/640/480	http://placeimg.com/640/480
30	2	http://placeimg.com/640/480	http://placeimg.com/640/480
31	1	http://placeimg.com/640/480	http://placeimg.com/640/480
31	2	http://placeimg.com/640/480	http://placeimg.com/640/480
32	1	http://placeimg.com/640/480	http://placeimg.com/640/480
32	2	http://placeimg.com/640/480	http://placeimg.com/640/480
33	1	http://placeimg.com/640/480	http://placeimg.com/640/480
33	2	http://placeimg.com/640/480	http://placeimg.com/640/480
34	1	http://placeimg.com/640/480	http://placeimg.com/640/480
34	2	http://placeimg.com/640/480	http://placeimg.com/640/480
35	1	http://placeimg.com/640/480	http://placeimg.com/640/480
35	2	http://placeimg.com/640/480	http://placeimg.com/640/480
36	1	http://placeimg.com/640/480	http://placeimg.com/640/480
36	2	http://placeimg.com/640/480	http://placeimg.com/640/480
37	1	http://placeimg.com/640/480	http://placeimg.com/640/480
37	2	http://placeimg.com/640/480	http://placeimg.com/640/480
38	1	http://placeimg.com/640/480	http://placeimg.com/640/480
38	2	http://placeimg.com/640/480	http://placeimg.com/640/480
39	1	http://placeimg.com/640/480	http://placeimg.com/640/480
39	2	http://placeimg.com/640/480	http://placeimg.com/640/480
40	1	http://placeimg.com/640/480	http://placeimg.com/640/480
40	2	http://placeimg.com/640/480	http://placeimg.com/640/480
41	1	http://placeimg.com/640/480	http://placeimg.com/640/480
41	2	http://placeimg.com/640/480	http://placeimg.com/640/480
42	1	http://placeimg.com/640/480	http://placeimg.com/640/480
42	2	http://placeimg.com/640/480	http://placeimg.com/640/480
43	1	http://placeimg.com/640/480	http://placeimg.com/640/480
43	2	http://placeimg.com/640/480	http://placeimg.com/640/480
44	1	http://placeimg.com/640/480	http://placeimg.com/640/480
44	2	http://placeimg.com/640/480	http://placeimg.com/640/480
45	1	http://placeimg.com/640/480	http://placeimg.com/640/480
45	2	http://placeimg.com/640/480	http://placeimg.com/640/480
46	1	http://placeimg.com/640/480	http://placeimg.com/640/480
46	2	http://placeimg.com/640/480	http://placeimg.com/640/480
47	1	http://placeimg.com/640/480	http://placeimg.com/640/480
47	2	http://placeimg.com/640/480	http://placeimg.com/640/480
48	1	http://placeimg.com/640/480	http://placeimg.com/640/480
48	2	http://placeimg.com/640/480	http://placeimg.com/640/480
49	1	http://placeimg.com/640/480	http://placeimg.com/640/480
49	2	http://placeimg.com/640/480	http://placeimg.com/640/480
50	1	http://placeimg.com/640/480	http://placeimg.com/640/480
50	2	http://placeimg.com/640/480	http://placeimg.com/640/480
51	1	http://placeimg.com/640/480	http://placeimg.com/640/480
51	2	http://placeimg.com/640/480	http://placeimg.com/640/480
52	1	http://placeimg.com/640/480	http://placeimg.com/640/480
52	2	http://placeimg.com/640/480	http://placeimg.com/640/480
53	1	http://placeimg.com/640/480	http://placeimg.com/640/480
53	2	http://placeimg.com/640/480	http://placeimg.com/640/480
54	1	http://placeimg.com/640/480	http://placeimg.com/640/480
54	2	http://placeimg.com/640/480	http://placeimg.com/640/480
55	1	http://placeimg.com/640/480	http://placeimg.com/640/480
55	2	http://placeimg.com/640/480	http://placeimg.com/640/480
56	1	http://placeimg.com/640/480	http://placeimg.com/640/480
56	2	http://placeimg.com/640/480	http://placeimg.com/640/480
57	1	http://placeimg.com/640/480	http://placeimg.com/640/480
57	2	http://placeimg.com/640/480	http://placeimg.com/640/480
58	1	http://placeimg.com/640/480	http://placeimg.com/640/480
58	2	http://placeimg.com/640/480	http://placeimg.com/640/480
59	1	http://placeimg.com/640/480	http://placeimg.com/640/480
59	2	http://placeimg.com/640/480	http://placeimg.com/640/480
60	1	http://placeimg.com/640/480	http://placeimg.com/640/480
60	2	http://placeimg.com/640/480	http://placeimg.com/640/480
61	1	http://placeimg.com/640/480	http://placeimg.com/640/480
61	2	http://placeimg.com/640/480	http://placeimg.com/640/480
62	1	http://placeimg.com/640/480	http://placeimg.com/640/480
62	2	http://placeimg.com/640/480	http://placeimg.com/640/480
63	1	http://placeimg.com/640/480	http://placeimg.com/640/480
63	2	http://placeimg.com/640/480	http://placeimg.com/640/480
64	1	http://placeimg.com/640/480	http://placeimg.com/640/480
64	2	http://placeimg.com/640/480	http://placeimg.com/640/480
65	1	http://placeimg.com/640/480	http://placeimg.com/640/480
65	2	http://placeimg.com/640/480	http://placeimg.com/640/480
66	1	http://placeimg.com/640/480	http://placeimg.com/640/480
66	2	http://placeimg.com/640/480	http://placeimg.com/640/480
67	1	http://placeimg.com/640/480	http://placeimg.com/640/480
67	2	http://placeimg.com/640/480	http://placeimg.com/640/480
68	1	http://placeimg.com/640/480	http://placeimg.com/640/480
68	2	http://placeimg.com/640/480	http://placeimg.com/640/480
69	1	http://placeimg.com/640/480	http://placeimg.com/640/480
69	2	http://placeimg.com/640/480	http://placeimg.com/640/480
70	1	http://placeimg.com/640/480	http://placeimg.com/640/480
70	2	http://placeimg.com/640/480	http://placeimg.com/640/480
71	1	http://placeimg.com/640/480	http://placeimg.com/640/480
71	2	http://placeimg.com/640/480	http://placeimg.com/640/480
72	1	http://placeimg.com/640/480	http://placeimg.com/640/480
72	2	http://placeimg.com/640/480	http://placeimg.com/640/480
73	1	http://placeimg.com/640/480	http://placeimg.com/640/480
73	2	http://placeimg.com/640/480	http://placeimg.com/640/480
74	1	http://placeimg.com/640/480	http://placeimg.com/640/480
74	2	http://placeimg.com/640/480	http://placeimg.com/640/480
75	1	http://placeimg.com/640/480	http://placeimg.com/640/480
75	2	http://placeimg.com/640/480	http://placeimg.com/640/480
76	1	http://placeimg.com/640/480	http://placeimg.com/640/480
76	2	http://placeimg.com/640/480	http://placeimg.com/640/480
77	1	http://placeimg.com/640/480	http://placeimg.com/640/480
77	2	http://placeimg.com/640/480	http://placeimg.com/640/480
78	1	http://placeimg.com/640/480	http://placeimg.com/640/480
78	2	http://placeimg.com/640/480	http://placeimg.com/640/480
79	1	http://placeimg.com/640/480	http://placeimg.com/640/480
79	2	http://placeimg.com/640/480	http://placeimg.com/640/480
80	1	http://placeimg.com/640/480	http://placeimg.com/640/480
80	2	http://placeimg.com/640/480	http://placeimg.com/640/480
81	1	http://placeimg.com/640/480	http://placeimg.com/640/480
81	2	http://placeimg.com/640/480	http://placeimg.com/640/480
82	1	http://placeimg.com/640/480	http://placeimg.com/640/480
82	2	http://placeimg.com/640/480	http://placeimg.com/640/480
83	1	http://placeimg.com/640/480	http://placeimg.com/640/480
83	2	http://placeimg.com/640/480	http://placeimg.com/640/480
84	1	http://placeimg.com/640/480	http://placeimg.com/640/480
84	2	http://placeimg.com/640/480	http://placeimg.com/640/480
85	1	http://placeimg.com/640/480	http://placeimg.com/640/480
85	2	http://placeimg.com/640/480	http://placeimg.com/640/480
86	1	http://placeimg.com/640/480	http://placeimg.com/640/480
86	2	http://placeimg.com/640/480	http://placeimg.com/640/480
87	1	http://placeimg.com/640/480	http://placeimg.com/640/480
87	2	http://placeimg.com/640/480	http://placeimg.com/640/480
88	1	http://placeimg.com/640/480	http://placeimg.com/640/480
88	2	http://placeimg.com/640/480	http://placeimg.com/640/480
89	1	http://placeimg.com/640/480	http://placeimg.com/640/480
89	2	http://placeimg.com/640/480	http://placeimg.com/640/480
90	1	http://placeimg.com/640/480	http://placeimg.com/640/480
90	2	http://placeimg.com/640/480	http://placeimg.com/640/480
91	1	http://placeimg.com/640/480	http://placeimg.com/640/480
91	2	http://placeimg.com/640/480	http://placeimg.com/640/480
92	1	http://placeimg.com/640/480	http://placeimg.com/640/480
92	2	http://placeimg.com/640/480	http://placeimg.com/640/480
93	1	http://placeimg.com/640/480	http://placeimg.com/640/480
93	2	http://placeimg.com/640/480	http://placeimg.com/640/480
94	1	http://placeimg.com/640/480	http://placeimg.com/640/480
94	2	http://placeimg.com/640/480	http://placeimg.com/640/480
95	1	http://placeimg.com/640/480	http://placeimg.com/640/480
95	2	http://placeimg.com/640/480	http://placeimg.com/640/480
96	1	http://placeimg.com/640/480	http://placeimg.com/640/480
96	2	http://placeimg.com/640/480	http://placeimg.com/640/480
97	1	http://placeimg.com/640/480	http://placeimg.com/640/480
97	2	http://placeimg.com/640/480	http://placeimg.com/640/480
98	1	http://placeimg.com/640/480	http://placeimg.com/640/480
98	2	http://placeimg.com/640/480	http://placeimg.com/640/480
99	1	http://placeimg.com/640/480	http://placeimg.com/640/480
99	2	http://placeimg.com/640/480	http://placeimg.com/640/480
100	1	http://placeimg.com/640/480	http://placeimg.com/640/480
100	2	http://placeimg.com/640/480	http://placeimg.com/640/480
\.


--
-- Data for Name: style_skus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.style_skus (product_id, style_id, size, instock) FROM stdin;
1	1	8	16
1	1	9	21
1	1	10	2
1	2	8	8
1	2	9	20
1	2	10	6
2	1	S	17
2	1	M	12
2	1	L	23
2	2	S	24
2	2	M	7
2	2	L	10
3	1	8	2
3	1	9	16
3	1	10	21
3	2	8	23
3	2	9	11
3	2	10	7
4	1	8	16
4	1	9	15
4	1	10	18
4	2	8	18
4	2	9	1
4	2	10	21
5	1	S	16
5	1	M	1
5	1	L	3
5	2	S	14
5	2	M	23
5	2	L	17
6	1	8	14
6	1	9	17
6	1	10	16
6	2	8	7
6	2	9	14
6	2	10	12
7	1	S	13
7	1	M	25
7	1	L	4
7	2	S	25
7	2	M	11
7	2	L	24
8	1	8	25
8	1	9	8
8	1	10	17
8	2	8	10
8	2	9	24
8	2	10	14
9	1	S	10
9	1	M	5
9	1	L	12
9	2	S	4
9	2	M	15
9	2	L	4
10	1	8	18
10	1	9	1
10	1	10	3
10	2	8	9
10	2	9	9
10	2	10	8
11	1	S	13
11	1	M	12
11	1	L	19
11	2	S	24
11	2	M	12
11	2	L	11
12	1	8	8
12	1	9	23
12	1	10	24
12	2	8	8
12	2	9	25
12	2	10	20
13	1	8	13
13	1	9	17
13	1	10	19
13	2	8	8
13	2	9	7
13	2	10	22
14	1	8	16
14	1	9	3
14	1	10	1
14	2	8	19
14	2	9	19
14	2	10	9
15	1	S	20
15	1	M	22
15	1	L	18
15	2	S	18
15	2	M	23
15	2	L	3
16	1	S	4
16	1	M	6
16	1	L	13
16	2	S	6
16	2	M	6
16	2	L	13
17	1	8	22
17	1	9	15
17	1	10	18
17	2	8	10
17	2	9	2
17	2	10	25
18	1	S	12
18	1	M	6
18	1	L	3
18	2	S	5
18	2	M	8
18	2	L	22
19	1	S	22
19	1	M	19
19	1	L	24
19	2	S	3
19	2	M	9
19	2	L	5
20	1	8	22
20	1	9	25
20	1	10	6
20	2	8	8
20	2	9	8
20	2	10	22
21	1	8	2
21	1	9	3
21	1	10	13
21	2	8	14
21	2	9	20
21	2	10	1
22	1	8	11
22	1	9	6
22	1	10	2
22	2	8	5
22	2	9	3
22	2	10	16
23	1	S	8
23	1	M	3
23	1	L	21
23	2	S	19
23	2	M	21
23	2	L	18
24	1	8	2
24	1	9	20
24	1	10	6
24	2	8	17
24	2	9	8
24	2	10	22
25	1	S	5
25	1	M	3
25	1	L	15
25	2	S	10
25	2	M	4
25	2	L	5
26	1	S	17
26	1	M	3
26	1	L	10
26	2	S	20
26	2	M	11
26	2	L	17
27	1	8	22
27	1	9	13
27	1	10	6
27	2	8	6
27	2	9	22
27	2	10	25
28	1	8	7
28	1	9	18
28	1	10	21
28	2	8	11
28	2	9	4
28	2	10	13
29	1	S	5
29	1	M	21
29	1	L	1
29	2	S	2
29	2	M	8
29	2	L	18
30	1	8	11
30	1	9	3
30	1	10	1
30	2	8	1
30	2	9	10
30	2	10	5
31	1	8	7
31	1	9	4
31	1	10	9
31	2	8	8
31	2	9	12
31	2	10	4
32	1	8	5
32	1	9	1
32	1	10	22
32	2	8	21
32	2	9	7
32	2	10	6
33	1	S	11
33	1	M	12
33	1	L	6
33	2	S	14
33	2	M	22
33	2	L	20
34	1	S	19
34	1	M	15
34	1	L	1
34	2	S	1
34	2	M	5
34	2	L	20
35	1	S	7
35	1	M	9
35	1	L	13
35	2	S	3
35	2	M	15
35	2	L	14
36	1	S	18
36	1	M	20
36	1	L	3
36	2	S	22
36	2	M	23
36	2	L	18
37	1	S	10
37	1	M	2
37	1	L	10
37	2	S	19
37	2	M	15
37	2	L	11
38	1	8	12
38	1	9	4
38	1	10	12
38	2	8	21
38	2	9	5
38	2	10	25
39	1	8	9
39	1	9	4
39	1	10	9
39	2	8	25
39	2	9	16
39	2	10	23
40	1	S	7
40	1	M	4
40	1	L	17
40	2	S	17
40	2	M	22
40	2	L	3
41	1	S	23
41	1	M	25
41	1	L	4
41	2	S	10
41	2	M	19
41	2	L	5
42	1	8	4
42	1	9	10
42	1	10	16
42	2	8	5
42	2	9	18
42	2	10	18
43	1	S	20
43	1	M	17
43	1	L	24
43	2	S	3
43	2	M	9
43	2	L	11
44	1	8	18
44	1	9	4
44	1	10	17
44	2	8	19
44	2	9	21
44	2	10	9
45	1	S	14
45	1	M	19
45	1	L	5
45	2	S	18
45	2	M	8
45	2	L	2
46	1	S	7
46	1	M	13
46	1	L	24
46	2	S	8
46	2	M	24
46	2	L	5
47	1	8	17
47	1	9	4
47	1	10	3
47	2	8	2
47	2	9	13
47	2	10	21
48	1	8	19
48	1	9	3
48	1	10	24
48	2	8	15
48	2	9	21
48	2	10	3
49	1	8	11
49	1	9	2
49	1	10	12
49	2	8	15
49	2	9	21
49	2	10	5
50	1	S	13
50	1	M	23
50	1	L	10
50	2	S	8
50	2	M	17
50	2	L	17
51	1	8	2
51	1	9	22
51	1	10	7
51	2	8	23
51	2	9	21
51	2	10	3
52	1	8	21
52	1	9	14
52	1	10	25
52	2	8	3
52	2	9	7
52	2	10	20
53	1	S	11
53	1	M	20
53	1	L	4
53	2	S	24
53	2	M	6
53	2	L	24
54	1	S	19
54	1	M	13
54	1	L	22
54	2	S	5
54	2	M	21
54	2	L	10
55	1	8	12
55	1	9	1
55	1	10	16
55	2	8	13
55	2	9	18
55	2	10	12
56	1	8	21
56	1	9	23
56	1	10	10
56	2	8	21
56	2	9	24
56	2	10	4
57	1	S	2
57	1	M	6
57	1	L	10
57	2	S	14
57	2	M	1
57	2	L	21
58	1	S	14
58	1	M	9
58	1	L	17
58	2	S	9
58	2	M	16
58	2	L	18
59	1	8	20
59	1	9	6
59	1	10	25
59	2	8	2
59	2	9	19
59	2	10	22
60	1	S	4
60	1	M	6
60	1	L	3
60	2	S	14
60	2	M	20
60	2	L	1
61	1	S	4
61	1	M	16
61	1	L	20
61	2	S	8
61	2	M	6
61	2	L	5
62	1	8	16
62	1	9	24
62	1	10	22
62	2	8	2
62	2	9	4
62	2	10	10
63	1	8	17
63	1	9	2
63	1	10	18
63	2	8	14
63	2	9	23
63	2	10	1
64	1	S	15
64	1	M	1
64	1	L	22
64	2	S	22
64	2	M	21
64	2	L	21
65	1	8	11
65	1	9	15
65	1	10	24
65	2	8	17
65	2	9	3
65	2	10	12
66	1	8	25
66	1	9	1
66	1	10	11
66	2	8	12
66	2	9	18
66	2	10	23
67	1	S	8
67	1	M	23
67	1	L	11
67	2	S	7
67	2	M	13
67	2	L	18
68	1	8	17
68	1	9	18
68	1	10	24
68	2	8	12
68	2	9	7
68	2	10	11
69	1	8	17
69	1	9	16
69	1	10	24
69	2	8	23
69	2	9	13
69	2	10	18
70	1	S	18
70	1	M	11
70	1	L	24
70	2	S	4
70	2	M	2
70	2	L	8
71	1	S	16
71	1	M	5
71	1	L	4
71	2	S	20
71	2	M	2
71	2	L	17
72	1	S	21
72	1	M	3
72	1	L	14
72	2	S	12
72	2	M	11
72	2	L	19
73	1	8	12
73	1	9	5
73	1	10	15
73	2	8	12
73	2	9	9
73	2	10	6
74	1	S	24
74	1	M	12
74	1	L	9
74	2	S	14
74	2	M	15
74	2	L	6
75	1	S	8
75	1	M	23
75	1	L	19
75	2	S	24
75	2	M	6
75	2	L	25
76	1	8	23
76	1	9	25
76	1	10	24
76	2	8	23
76	2	9	12
76	2	10	22
77	1	S	4
77	1	M	8
77	1	L	21
77	2	S	5
77	2	M	13
77	2	L	11
78	1	8	10
78	1	9	7
78	1	10	16
78	2	8	18
78	2	9	7
78	2	10	16
79	1	S	3
79	1	M	5
79	1	L	25
79	2	S	23
79	2	M	6
79	2	L	22
80	1	S	9
80	1	M	14
80	1	L	6
80	2	S	23
80	2	M	11
80	2	L	7
81	1	S	4
81	1	M	18
81	1	L	14
81	2	S	3
81	2	M	12
81	2	L	20
82	1	S	19
82	1	M	19
82	1	L	2
82	2	S	22
82	2	M	7
82	2	L	9
83	1	8	25
83	1	9	19
83	1	10	6
83	2	8	16
83	2	9	7
83	2	10	9
84	1	8	9
84	1	9	19
84	1	10	21
84	2	8	3
84	2	9	14
84	2	10	23
85	1	8	20
85	1	9	12
85	1	10	25
85	2	8	13
85	2	9	19
85	2	10	18
86	1	8	3
86	1	9	18
86	1	10	9
86	2	8	22
86	2	9	13
86	2	10	15
87	1	8	2
87	1	9	7
87	1	10	16
87	2	8	24
87	2	9	12
87	2	10	15
88	1	S	13
88	1	M	7
88	1	L	8
88	2	S	20
88	2	M	8
88	2	L	6
89	1	8	22
89	1	9	8
89	1	10	18
89	2	8	22
89	2	9	16
89	2	10	7
90	1	S	4
90	1	M	5
90	1	L	20
90	2	S	25
90	2	M	9
90	2	L	23
91	1	8	21
91	1	9	13
91	1	10	25
91	2	8	12
91	2	9	6
91	2	10	8
92	1	S	4
92	1	M	18
92	1	L	25
92	2	S	10
92	2	M	22
92	2	L	20
93	1	8	18
93	1	9	6
93	1	10	22
93	2	8	23
93	2	9	12
93	2	10	13
94	1	8	25
94	1	9	4
94	1	10	11
94	2	8	17
94	2	9	19
94	2	10	9
95	1	S	9
95	1	M	15
95	1	L	3
95	2	S	15
95	2	M	17
95	2	L	18
96	1	S	20
96	1	M	7
96	1	L	5
96	2	S	19
96	2	M	4
96	2	L	16
97	1	8	3
97	1	9	21
97	1	10	23
97	2	8	21
97	2	9	25
97	2	10	14
98	1	8	23
98	1	9	25
98	1	10	7
98	2	8	10
98	2	9	10
98	2	10	20
99	1	S	24
99	1	M	2
99	1	L	24
99	2	S	5
99	2	M	6
99	2	L	19
100	1	8	22
100	1	9	10
100	1	10	20
100	2	8	23
100	2	9	14
100	2	10	22
\.


--
-- Data for Name: styles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.styles (product_id, style_id, name, original_price, sale_price, "default?") FROM stdin;
1	1	Intelligent Rubber Hat	$956.00	$112.00	1
1	2	Sleek Granite Towels	$745.00	$107.00	0
2	1	Small Steel Bacon	$774.00	$113.00	1
2	2	Small Wooden Chicken	$823.00	$321.00	0
3	1	Sleek Metal Fish	$509.00	$422.00	1
3	2	Awesome Granite Car	$952.00	$83.00	0
4	1	Incredible Cotton Table	$949.00	$465.00	1
4	2	Refined Wooden Pants	$933.00	$146.00	0
5	1	Refined Soft Ball	$869.00	$382.00	1
5	2	Ergonomic Cotton Fish	$566.00	$345.00	0
6	1	Handcrafted Rubber Sausages	$796.00	$58.00	1
6	2	Refined Soft Tuna	$646.00	$240.00	0
7	1	Refined Plastic Table	$569.00	$397.00	1
7	2	Practical Granite Chicken	$872.00	$492.00	0
8	1	Awesome Rubber Cheese	$652.00	$302.00	1
8	2	Fantastic Soft Shoes	$680.00	$253.00	0
9	1	Fantastic Cotton Shoes	$639.00	$113.00	1
9	2	Handmade Granite Car	$890.00	$266.00	0
10	1	Practical Soft Hat	$761.00	$355.00	1
10	2	Tasty Frozen Shirt	$893.00	$165.00	0
11	1	Small Plastic Gloves	$771.00	$173.00	1
11	2	Ergonomic Rubber Shirt	$818.00	$281.00	0
12	1	Handmade Frozen Bike	$648.00	$367.00	1
12	2	Unbranded Frozen Pants	$671.00	$433.00	0
13	1	Tasty Fresh Car	$860.00	$348.00	1
13	2	Rustic Plastic Gloves	$632.00	$455.00	0
14	1	Rustic Soft Shoes	$989.00	$154.00	1
14	2	Ergonomic Wooden Car	$819.00	$126.00	0
15	1	Fantastic Wooden Chair	$656.00	$200.00	1
15	2	Awesome Plastic Keyboard	$865.00	$234.00	0
16	1	Tasty Metal Chair	$723.00	$488.00	1
16	2	Rustic Soft Bacon	$635.00	$199.00	0
17	1	Unbranded Cotton Table	$723.00	$131.00	1
17	2	Intelligent Concrete Soap	$699.00	$212.00	0
18	1	Licensed Wooden Soap	$679.00	$378.00	1
18	2	Handmade Cotton Keyboard	$962.00	$429.00	0
19	1	Rustic Wooden Mouse	$649.00	$448.00	1
19	2	Incredible Metal Mouse	$848.00	$354.00	0
20	1	Awesome Metal Fish	$774.00	$315.00	1
20	2	Ergonomic Steel Tuna	$918.00	$461.00	0
21	1	Intelligent Wooden Salad	$527.00	$181.00	1
21	2	Gorgeous Rubber Table	$509.00	$119.00	0
22	1	Awesome Plastic Car	$527.00	$197.00	1
22	2	Intelligent Plastic Hat	$530.00	$140.00	0
23	1	Gorgeous Frozen Keyboard	$567.00	$102.00	1
23	2	Unbranded Rubber Cheese	$705.00	$212.00	0
24	1	Awesome Frozen Chicken	$974.00	$364.00	1
24	2	Incredible Concrete Tuna	$928.00	$123.00	0
25	1	Unbranded Granite Cheese	$579.00	$144.00	1
25	2	Ergonomic Soft Car	$700.00	$431.00	0
26	1	Gorgeous Wooden Ball	$617.00	$176.00	1
26	2	Handmade Concrete Bacon	$630.00	$193.00	0
27	1	Refined Concrete Sausages	$549.00	$77.00	1
27	2	Rustic Soft Mouse	$941.00	$416.00	0
28	1	Ergonomic Cotton Car	$733.00	$96.00	1
28	2	Incredible Steel Soap	$802.00	$51.00	0
29	1	Fantastic Fresh Ball	$852.00	$168.00	1
29	2	Ergonomic Concrete Ball	$854.00	$108.00	0
30	1	Generic Rubber Pizza	$835.00	$367.00	1
30	2	Licensed Concrete Table	$808.00	$469.00	0
31	1	Awesome Steel Keyboard	$775.00	$283.00	1
31	2	Intelligent Plastic Salad	$904.00	$439.00	0
32	1	Sleek Concrete Car	$584.00	$296.00	1
32	2	Awesome Granite Chair	$967.00	$307.00	0
33	1	Incredible Granite Bacon	$514.00	$491.00	1
33	2	Gorgeous Fresh Chair	$764.00	$289.00	0
34	1	Refined Rubber Table	$546.00	$339.00	1
34	2	Small Frozen Sausages	$560.00	$254.00	0
35	1	Fantastic Wooden Fish	$649.00	$481.00	1
35	2	Unbranded Metal Salad	$703.00	$90.00	0
36	1	Awesome Wooden Chips	$856.00	$459.00	1
36	2	Refined Metal Car	$653.00	$15.00	0
37	1	Incredible Rubber Chicken	$881.00	$148.00	1
37	2	Sleek Rubber Fish	$618.00	$50.00	0
38	1	Sleek Concrete Pants	$592.00	$107.00	1
38	2	Fantastic Concrete Bike	$787.00	$136.00	0
39	1	Handmade Cotton Sausages	$575.00	$468.00	1
39	2	Licensed Granite Pizza	$745.00	$336.00	0
40	1	Small Frozen Ball	$555.00	$297.00	1
40	2	Tasty Cotton Shirt	$547.00	$118.00	0
41	1	Handmade Plastic Chicken	$853.00	$132.00	1
41	2	Gorgeous Plastic Table	$724.00	$482.00	0
42	1	Fantastic Concrete Chips	$551.00	$409.00	1
42	2	Sleek Metal Pizza	$644.00	$293.00	0
43	1	Gorgeous Rubber Soap	$969.00	$242.00	1
43	2	Fantastic Steel Towels	$999.00	$344.00	0
44	1	Fantastic Metal Salad	$959.00	$470.00	1
44	2	Intelligent Steel Ball	$694.00	$5.00	0
45	1	Practical Cotton Car	$517.00	$310.00	1
45	2	Incredible Granite Ball	$518.00	$348.00	0
46	1	Small Granite Towels	$960.00	$115.00	1
46	2	Ergonomic Frozen Salad	$640.00	$393.00	0
47	1	Intelligent Metal Car	$809.00	$124.00	1
47	2	Handcrafted Cotton Chips	$928.00	$353.00	0
48	1	Intelligent Wooden Cheese	$644.00	$450.00	1
48	2	Incredible Wooden Shoes	$973.00	$469.00	0
49	1	Sleek Cotton Car	$880.00	$215.00	1
49	2	Tasty Frozen Chicken	$763.00	$115.00	0
50	1	Sleek Cotton Chair	$910.00	$166.00	1
50	2	Licensed Fresh Bacon	$624.00	$361.00	0
51	1	Ergonomic Concrete Sausages	$507.00	$454.00	1
51	2	Gorgeous Fresh Cheese	$907.00	$234.00	0
52	1	Sleek Granite Chair	$648.00	$195.00	1
52	2	Incredible Concrete Sausages	$736.00	$438.00	0
53	1	Ergonomic Metal Car	$648.00	$317.00	1
53	2	Awesome Frozen Ball	$529.00	$24.00	0
54	1	Incredible Frozen Mouse	$845.00	$411.00	1
54	2	Practical Cotton Towels	$557.00	$435.00	0
55	1	Small Plastic Hat	$716.00	$409.00	1
55	2	Refined Wooden Gloves	$556.00	$334.00	0
56	1	Rustic Plastic Shirt	$767.00	$482.00	1
56	2	Sleek Wooden Shoes	$624.00	$308.00	0
57	1	Fantastic Metal Computer	$692.00	$164.00	1
57	2	Refined Fresh Soap	$595.00	$36.00	0
58	1	Handmade Steel Bike	$681.00	$380.00	1
58	2	Licensed Soft Pants	$594.00	$422.00	0
59	1	Handmade Concrete Chicken	$611.00	$302.00	1
59	2	Practical Soft Car	$715.00	$57.00	0
60	1	Intelligent Plastic Chair	$953.00	$209.00	1
60	2	Gorgeous Fresh Bike	$908.00	$245.00	0
61	1	Rustic Rubber Chicken	$544.00	$341.00	1
61	2	Rustic Cotton Cheese	$569.00	$32.00	0
62	1	Generic Concrete Computer	$884.00	$106.00	1
62	2	Sleek Concrete Shoes	$757.00	$124.00	0
63	1	Tasty Rubber Tuna	$710.00	$108.00	1
63	2	Small Wooden Computer	$753.00	$177.00	0
64	1	Awesome Metal Shirt	$750.00	$269.00	1
64	2	Handcrafted Soft Bike	$682.00	$404.00	0
65	1	Rustic Cotton Computer	$587.00	$217.00	1
65	2	Gorgeous Steel Ball	$581.00	$205.00	0
66	1	Ergonomic Rubber Hat	$821.00	$396.00	1
66	2	Awesome Metal Gloves	$681.00	$336.00	0
67	1	Rustic Granite Keyboard	$934.00	$20.00	1
67	2	Rustic Concrete Soap	$516.00	$91.00	0
68	1	Rustic Metal Salad	$814.00	$177.00	1
68	2	Intelligent Frozen Keyboard	$671.00	$178.00	0
69	1	Fantastic Soft Table	$808.00	$367.00	1
69	2	Practical Metal Tuna	$983.00	$185.00	0
70	1	Handcrafted Rubber Bacon	$898.00	$12.00	1
70	2	Gorgeous Granite Pants	$863.00	$347.00	0
71	1	Gorgeous Granite Mouse	$655.00	$273.00	1
71	2	Handmade Rubber Bike	$616.00	$280.00	0
72	1	Ergonomic Frozen Tuna	$681.00	$101.00	1
72	2	Tasty Steel Bike	$872.00	$197.00	0
73	1	Small Soft Soap	$727.00	$195.00	1
73	2	Handmade Concrete Sausages	$666.00	$472.00	0
74	1	Intelligent Metal Pizza	$534.00	$198.00	1
74	2	Awesome Frozen Hat	$728.00	$308.00	0
75	1	Rustic Cotton Fish	$866.00	$58.00	1
75	2	Tasty Fresh Chair	$890.00	$414.00	0
76	1	Ergonomic Cotton Chips	$977.00	$306.00	1
76	2	Rustic Plastic Ball	$699.00	$106.00	0
77	1	Practical Wooden Ball	$604.00	$281.00	1
77	2	Handmade Steel Sausages	$917.00	$483.00	0
78	1	Incredible Cotton Shirt	$933.00	$153.00	1
78	2	Handcrafted Concrete Towels	$980.00	$12.00	0
79	1	Sleek Frozen Table	$569.00	$288.00	1
79	2	Refined Wooden Shoes	$803.00	$480.00	0
80	1	Awesome Wooden Fish	$564.00	$129.00	1
80	2	Refined Plastic Soap	$576.00	$318.00	0
81	1	Sleek Concrete Chicken	$638.00	$99.00	1
81	2	Sleek Soft Tuna	$782.00	$63.00	0
82	1	Fantastic Granite Bacon	$542.00	$256.00	1
82	2	Rustic Rubber Shoes	$559.00	$387.00	0
83	1	Unbranded Metal Pizza	$606.00	$286.00	1
83	2	Unbranded Metal Chips	$722.00	$79.00	0
84	1	Handmade Rubber Computer	$673.00	$423.00	1
84	2	Handmade Plastic Cheese	$539.00	$77.00	0
85	1	Handcrafted Concrete Sausages	$655.00	$46.00	1
85	2	Handcrafted Steel Gloves	$583.00	$425.00	0
86	1	Refined Metal Pants	$664.00	$271.00	1
86	2	Handcrafted Soft Salad	$984.00	$32.00	0
87	1	Handcrafted Wooden Salad	$837.00	$88.00	1
87	2	Practical Metal Chicken	$992.00	$319.00	0
88	1	Small Granite Tuna	$724.00	$269.00	1
88	2	Awesome Cotton Chips	$964.00	$475.00	0
89	1	Sleek Soft Bacon	$969.00	$477.00	1
89	2	Fantastic Wooden Shirt	$568.00	$366.00	0
90	1	Gorgeous Fresh Ball	$630.00	$75.00	1
90	2	Practical Metal Pants	$763.00	$378.00	0
91	1	Rustic Cotton Mouse	$579.00	$478.00	1
91	2	Ergonomic Soft Bike	$529.00	$5.00	0
92	1	Ergonomic Fresh Pants	$682.00	$284.00	1
92	2	Small Concrete Car	$877.00	$291.00	0
93	1	Sleek Plastic Sausages	$776.00	$184.00	1
93	2	Practical Metal Towels	$684.00	$31.00	0
94	1	Fantastic Concrete Chicken	$554.00	$403.00	1
94	2	Generic Wooden Car	$833.00	$484.00	0
95	1	Practical Plastic Mouse	$764.00	$347.00	1
95	2	Practical Metal Bacon	$623.00	$101.00	0
96	1	Intelligent Granite Pizza	$708.00	$87.00	1
96	2	Rustic Steel Sausages	$823.00	$55.00	0
97	1	Fantastic Fresh Bacon	$987.00	$81.00	1
97	2	Unbranded Fresh Sausages	$583.00	$418.00	0
98	1	Ergonomic Fresh Mouse	$729.00	$325.00	1
98	2	Fantastic Concrete Bike	$721.00	$214.00	0
99	1	Intelligent Rubber Gloves	$669.00	$317.00	1
99	2	Gorgeous Granite Tuna	$597.00	$402.00	0
100	1	Practical Rubber Computer	$523.00	$82.00	1
100	2	Handmade Frozen Tuna	$739.00	$286.00	0
\.


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: product_features_product_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_features_product_id_idx ON public.product_features USING btree (product_id);


--
-- Name: products_product_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX products_product_id_idx ON public.products USING btree (id);


--
-- Name: styles_photos_product_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX styles_photos_product_id_idx ON public.style_photos USING btree (product_id);


--
-- Name: styles_product_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX styles_product_id_idx ON public.styles USING btree (product_id);


--
-- Name: styles_skus_product_id_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX styles_skus_product_id_idx ON public.style_skus USING btree (product_id);


--
-- Name: product_features product_features_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_features
    ADD CONSTRAINT product_features_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- Name: style_photos style_photos_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.style_photos
    ADD CONSTRAINT style_photos_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- Name: style_skus style_skus_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.style_skus
    ADD CONSTRAINT style_skus_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- Name: styles styles_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.styles
    ADD CONSTRAINT styles_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- PostgreSQL database dump complete
--

