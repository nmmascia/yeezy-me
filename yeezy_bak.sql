--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases
--

DROP DATABASE yeezy;




--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;






--
-- Database creation
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;
CREATE DATABASE yeezy WITH TEMPLATE = template0 OWNER = postgres;


\connect postgres

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- PostgreSQL database dump complete
--

\connect template1

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- PostgreSQL database dump complete
--

\connect yeezy

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

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
-- Name: albums; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE albums (
    id integer NOT NULL,
    title character varying(80) NOT NULL
);


ALTER TABLE albums OWNER TO postgres;

--
-- Name: albums_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE albums_id_seq OWNER TO postgres;

--
-- Name: albums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE albums_id_seq OWNED BY albums.id;


--
-- Name: lyrics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE lyrics (
    id integer NOT NULL,
    text character varying(255) NOT NULL,
    line_number integer NOT NULL,
    song_id integer NOT NULL
);


ALTER TABLE lyrics OWNER TO postgres;

--
-- Name: lyrics_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lyrics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lyrics_id_seq OWNER TO postgres;

--
-- Name: lyrics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lyrics_id_seq OWNED BY lyrics.id;


--
-- Name: songs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE songs (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    album_id integer NOT NULL
);


ALTER TABLE songs OWNER TO postgres;

--
-- Name: songs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE songs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE songs_id_seq OWNER TO postgres;

--
-- Name: songs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE songs_id_seq OWNED BY songs.id;


--
-- Name: albums id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY albums ALTER COLUMN id SET DEFAULT nextval('albums_id_seq'::regclass);


--
-- Name: lyrics id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lyrics ALTER COLUMN id SET DEFAULT nextval('lyrics_id_seq'::regclass);


--
-- Name: songs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY songs ALTER COLUMN id SET DEFAULT nextval('songs_id_seq'::regclass);


--
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY albums (id, title) FROM stdin;
1	Yeezus
2	Graduation
4	My Beautiful Dark Twisted Fantasy
5	The Life of Pablo
7	College Dropout
6	808s And Heartbreak
3	Late Registration
\.


--
-- Name: albums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('albums_id_seq', 7, true);


--
-- Data for Name: lyrics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lyrics (id, text, line_number, song_id) FROM stdin;
1	Yeezy season approaching	0	1
2	Fuck whatever y'all been hearing	1	1
3	Fuck what, fuck whatever y'all been wearing	2	1
4	The monster about to come alive again	3	1
5	Soon as I pull up and park the Benz	4	1
6	We get this bitch shaking like Parkinsons	5	1
7	Take my number and lock it in	6	1
8	Indian hair, no moccasins	7	1
9	It's too many hoes in this house of sin	8	1
10	Real nigga back in the house again	9	1
11	Black Timbs all on your couch again	10	1
12	Black dick all in your spouse again	11	1
13	And I know she like chocolate men	12	1
14	She got more niggas off than , huh	13	1
15	On sight	14	1
16	On sight	15	1
17	How much you wanna give a fuck?	16	1
18	Let me show you right now before you give it up	17	1
19	How much do I not give a fuck?	18	1
20	Let me show you right now before you give it up	19	1
21	Baby girl tryna get a nut	20	1
22	And her girl tryna give it up	21	1
23	Chopped 'em both down	22	1
24	Don't judge 'em, 	23	1
25	One last announcement	24	1
26	No sports bra, lets keep it bouncin'	25	1
27	Everybody wanna live at the top of the mountain	26	1
28	Took her to The Bleau she tried to sip the fountain	27	1
29	That when David Grutman kicked her out	28	1
30	But I got her back in and put my dick in her mouth	29	1
31	On sight	30	1
32	On sight	31	1
33	Uh	32	1
34	Uh-huh	33	1
35	Uh-huh	34	1
36	Right now	35	1
37	I need, right now	36	1
38	I need, I need, right now	37	1
39	Right now	38	1
40	I need, I need, right now	39	1
41	Blazin', mi don't want dem	0	3
42	Mi need dem	1	3
43	Blazin'	2	3
44	Suh mi tek har outta bugah red and put her in a tall skirt	3	3
45	And now she find out what life is really worth	4	3
46	No to X rated	5	3
47	Yo mi tek har outta bugah red and put her in a tall skirt	6	3
48	And now she find out what life is really worth	7	3
49	No to X rated	8	3
50	I am a god	9	3
51	I am a god	10	3
52	I am a god	11	3
53	I am a god	12	3
54	Hurry up with my damn massage	13	3
55	Hurry up with my damn ménage	14	3
56	Get the Porsche out the damn garage	15	3
57	I am a god	16	3
58	Even though I'm a man of God	17	3
59	My whole life in the hand of God	18	3
60	So y'all better quit playin' with God	19	3
61	Soon as they like you make 'em unlike you	20	3
62	'Cause kissin' people ass is so unlike you	21	3
63	The only rapper compared to Michael	22	3
64	So here's a few hatin'-ass niggas to fight you	23	3
65	And here's a few snake-ass niggas to bite you	24	3
66	And I don't even wanna hear 'bout what niggas might do	25	3
67	Old niggas mentally still in high school	26	3
68	Since the tight jeans they ain't never liked you	27	3
69	Pink-ass polos with a fuckin' backpack	28	3
70	But everybody know you brought real rap back	29	3
71	Nobody had swag, man, we the Rat Pack	30	3
72	Virgil, Pyrex, Don C snapback	31	3
73	Ibn diamond, Chi-town shinin'	32	3
74	Monop' in this bitch again, changed the climate	33	3
75	Hop in this bitch again, same thing I'm in	34	3
76	Until the day I get struck by lightning	35	3
77	I am a god	36	3
78	So hurry up with my damn massage	37	3
79	In a French-ass restaurant	38	3
80	Hurry up with my damn croissants	39	3
81	I am a god	40	3
82	I am a god	41	3
83	I am a god	42	3
84	Ahh	43	3
85	Ahh	44	3
86	I just talked to Jesus	45	3
87	He said, "What up, Yeezus?"	46	3
88	I said, "Shit I'm chillin'	47	3
89	Tryna stack these millions"	48	3
90	I know he the most high	49	3
91	But I am a close high	50	3
92	Mi casa, su casa	51	3
93	That's our cosa nostra	52	3
94	I am a god	53	3
95	I am a god	54	3
96	I am a god	55	3
97	Ahh	56	3
98	Ahh	57	3
99	Ahh	58	3
100	Ahh	59	3
101	Ain't no way I'm givin' up	60	3
102	I'm a god	61	3
103	My mama was raised in the era when	0	4
104	Clean water was only served to the fairer skin	1	4
105	Doing clothes you would have thought I had help	2	4
106	But they wasn't satisfied unless I picked the cotton myself	3	4
107	You see it's broke nigga racism, that's that "Don't touch anything in the store"	4	4
108	And this rich nigga racism, that's that "Come in, please buy more	5	4
109	What you want, a Bentley? Fur coat? A diamond chain?	6	4
110	All you blacks want all the same things"	7	4
111	Used to only be niggas now everybody playing	8	4
112	Spending everything on Alexander Wang, new slaves	9	4
1099	I am so outrageous	98	16
113	You see it's leaders and it's followers	10	4
122	Fuck you and your corporation, y'all niggas can't control me	19	4
131	So go and grab the reporters, so I can smash their recorders	28	4
141	I won't end this high, not this time again	38	4
151	Elaludt mély zöld tó ölén	48	4
159	Now I'm holdin' down the summer now (Breeze)	4	7
169	All want something out me (Hangin' in the summer breeze)	14	7
179	When you tried your first molly	24	7
188	Before the blood on the leaves (Black bodies hangin' in the summer breeze, breeze)	33	7
197	And came out of our body	42	7
206	I ride with my niggas, I'd die for my	51	7
215	He only wanna see that ass in reverse	60	7
224	That goin' to that owin' money that the court got	69	7
234	And breathe and breathe (Black bodies hangin' in the summer breeze)	79	7
243	(Breeze, breeze)	88	7
252	All dem a gwaan dem a dem a dem a gwaan	8	8
261	'Cause it's the time when my heart got shot down	17	8
277	Dem a gwaan gwaan gwaan, sof-sof-softer sof-softer	33	8
286	If you love me so much then why'd you let me go?	42	8
295	Relivin' the past?	0	9
303	Tattoos, how they break the news	7	9
311	We can send this bitch up, it can't go down	15	9
320	Since "In da Club"	24	9
328	When I wake up, I like to go again	32	9
337	We can send this bitch up, it can't go down	41	9
346	It's just the memories that you have	50	9
355	They ordered champagne but still look thirsty	8	10
364	Dutty wining 'round all these Jamaicans	17	10
373	Bound  Bound 	26	10
379	And I know, with the hoes I got the worst rep	35	10
390	After all these long-ass verses	43	10
397	Jerome's in the house, watch your mouth	50	10
406	Well gather 'round children, zip it, listen	7	11
415	Yeah	16	11
423	Me found bravery in my bravado	25	11
433	(Oh, oh, oh, oh, oh, oh, oh, oh, oh)	34	11
442	But what's worse, the pain or the hangover?	43	11
451	At the mall, there was a seance	52	11
460	So high, oh, oh, oh, oh, oh, oh, oh, oh, oh	61	11
469	Can we get much higher?	70	11
478	But these bitches can't handle me	7	5
486	Okay, I smashed your Corolla	16	5
496	Pussy had me dead	25	5
505	Skinny bitch with no shoulders	34	5
514	When it's over it's over"	43	5
523	And my niggas they can't control me	52	5
533	Oh, I wanna phone home	62	5
543	We was up at the party but we was leavin' fast	9	6
553	Just a badman ting, a dat man do	19	6
563	We agon' smile 'pon court day	29	6
573	Uh, picked up where we left off	39	6
581	And held it till the right time	48	6
591	(I'll be gone long, grab that ass, shed your clothes)	57	6
600	Uh, got the kids-and-the-wife life	66	6
609	Uh, gettin' head by the nuns	75	6
618	Not for nothing I've forseen it, I dream it	4	12
627	Based off the way we was branded	13	12
636	I won't be satisfied till all my niggas get it, get it?	22	12
644	Malcolm West had the whole nation standing at attention	30	12
653	I insisted to get up off a this dick	39	12
660	And that American Apparel girl in just tights	48	12
667	I was looking at my resume feeling real fresh today	53	12
671	Act like I aint had a belt in two classes	63	12
680	You blowing up, that's good, fantastic	66	12
684	Ain't no question if I want it, I need it	70	12
692	Kites off to jails, buying sweats, running up in Stetson	79	12
700	If you can't live, you dying, you give or buy in	86	12
712	Stop trippin', I'm trippin' off the power	6	13
719	So good night, cruel world, I see you in the mornin'	13	13
727	And then they	21	13
735	Tell 'em Yeezy said they can kiss my whole ass	28	13
742	My childlike creativity, purity, and honesty	37	13
752	Stop trippin', I'm trippin' off the powder	45	13
761	Colin Powers, Austin Powers	54	13
770	Where the bad bitches, huh? Where ya hidin'?	64	13
780	Now this'll be a beautiful death	70	13
789	21st century schizoid man	79	13
805	I slapped my girl, she called the feds	17	14
821	Turn up the lights in here, baby	33	14
830	Courts sucked me dry, I spent that bread	42	14
850	Got to let these niggas know, yeah	60	14
867	Turn up the lights in here, baby	78	14
883	Fat motherfucker, now look who's in trouble	5	15
900	And my only focus is staying on some bogus shit	22	15
918	Now she claiming that I bruise her esophagus	40	15
936	None of you niggas have seen the carnage that I've seen	58	15
945	Milling about, spilling there feelings in the air	67	15
955	Everybody know I'm a motherfucking monster	77	15
973	Yeah my money's so tall that my Barbie's gotta climb it	95	15
983	I think me, you and Am should ménage Friday	106	15
990	And I'll, I'll let God decide, cide	112	15
999	I, I wouldn't last these shows	121	15
1009	I'm so appalled, Spalding ball	8	16
1018	Let it be a bad bitch sweeping	17	16
1026	Baby I'm magic, ta da	25	16
1035	Fucking ridiculous	34	16
1043	Just to show niggas how much more I have in store	42	16
1053	The Hammer went broke so you know I'm more focused	52	16
114	But I'd rather be a dick than a swallower	11	4
123	I know that we the new slaves, I know that we the new slaves	20	4
132	See they'll confuse us with some bullshit like the New World Order	29	4
142	So long, so long, so long, you cannot survive	39	4
152	Az embereknek fájt a sötét	49	4
160	And all I want is what I can't buy now (Blood on the leaves)	5	7
170	Then they talk about me (Breeze)	15	7
180	And came out of your body	25	7
189	I know there ain't wrong with me (Strange fruit hangin')	34	7
199	Before they call lawyers	43	7
207	(From the poplar trees)	52	7
216	Two-thousand-dollar bag with no cash in your purse	61	7
226	All in on that alimony, uh, yeah-yeah, she got you homie, yeah	70	7
235	And live and learn (Breeze)	80	7
244	I need to call it off	0	8
253	Dem a gwaan gwaan gwaan, sof-sof-softer sof-softer ('Nother one)	9	8
262	Blocka, blocka, blocka-blocka, blocka	18	8
279	None ah dem have the guts to bust the SK	35	8
289	All dem a gwaan dem a dem a dem a gwaan	44	8
305	Last night my bitches came in twos	9	9
322	On my bodyguard's back like Prince in the club	26	9
340	They always 'member you	44	9
358	Walking-'round-always-mad reputation	11	10
376	Step back, can't get spunk on the mink	29	10
392	I know you're tired of lovin', of lovin'	45	10
410	So high, oh, oh, oh, oh, oh, oh, oh, oh, oh	11	11
428	Stupid, but what the fuck do I know?	29	11
446	Don't make me pull the toys	47	11
464	So high, oh, oh, oh, oh, oh, oh, oh, oh, oh	65	11
482	But you really just know the old me	11	5
500	Still ain't learn me no manners	29	5
518	I don't hear your phone	47	5
527	I heard you need a new stack (A new girl)	56	5
537	And you turn off your iPhone	3	6
547	Eatin' Asian pussy, all I need was sweet and sour sauce	13	6
557	Try that 'pon February the 30th	23	6
567	That's right (And your boys at your door)	33	6
577	Uh, she cut from a different textile	43	6
595	Star fucker	61	6
613	Uh, I be speakin' Swaghili	79	6
632	I need a happy ending and a new beginning	17	12
648	If a nigga ain't running shootin a jump shot running a track meet	34	12
663	He said, "Take them glasses off and get in the pool"	50	12
672	Tell 'em hug and kiss my ass, X and O	60	12
685	I can feel it slowly drifting away from me	71	12
693	Nigga hat game was special	80	12
701	Keep it real or keep it moving, keep grinding	87	12
705	I will never ever let you live this down, down, down	93	12
709	No one man should have all that power	4	13
715	Huh? Motherfucker, we rollin'	10	13
720	This is way too much, I need a moment	15	13
728	And then they (Go)	22	13
734	Ooh, fuck SNL and the whole cast	27	13
740	He knows he so fuckin' gifted	34	13
746	With these responsibilities that they entrusted me	41	13
749	The clock's tickin', I just count the hours	44	13
757	And then they (Go)	49	13
766	At the end of day, goddammit, I'm killin' this shit	58	13
781	Lettin' everything go)	73	13
790	All of the lights	2	14
807	I'm heading home, I'm almost there	19	14
823	Want you to see everything	35	14
840	(All of the lights, all of the lights)	52	14
857	And also was about to do that line?	69	14
874	"Whoa, whoa"	86	14
891	Everybody know I'm a motherfucking monster	13	15
909	Goddamn, Yeezy, how he hit em with the new style	31	15
927	Everybody know I'm a motherfucking monster	49	15
946	All I see is these fake fucks with no fangs	68	15
964	'Cause that's what a muthafucking monster do	86	15
982	Just killed another career, it's a mild day	104	15
989	I, I crossed the line, line	111	15
998	And I'll, I'll let God decide, cide	120	15
1008	Life can be sometimes ridiculous	7	16
1017	Housekeeping, I mean got damn one time	16	16
1025	Praises due to the most fly, Prada	24	16
1034	I mean this shit is fucking ridiculous	33	16
1042	I'm so appalled I might buy the mall	41	16
1052	Show me where the boats is, Ferrari Testarossa's	51	16
1060	Champagne wishes, thirty white bitches	59	16
1067	An arrogant drug dealer the legend I've become	68	16
1077	Them hoes coming in a bakers dozen	76	16
1086	Eye of the law, aspire for more	85	16
1095	One hand in the air if you don't really care	94	16
1104	Dummy, dammit, not like for me to waste it	103	16
1114	Plus a Trojan in my pocket, Matt Leinart	113	16
1123	Cars for the missus and furs for the mistress	122	16
1132	It's like that sometimes I mean ridiculous	131	16
1140	Uh put your hands to the constellations	2	17
1148	What happened to religion? oh she lose it	11	17
1153	I thought I was the ass hole, I guess it's rubbing off	15	17
1160	We love Jesus but you done learned a lot from Satan	23	17
1166	You got green on your mind, I can see it in your eyes	28	17
1173	But tonight you should have seen how quiet the room was	36	17
1186	Double headed monster with a mind of its own	49	17
1197	When it came to dope I was quick to export	60	17
1203	Whole clique appetites had tapeworms	66	17
1215	Look at ya, look at ya	3	18
115	You see it's leaders and it's followers	12	4
124	I'm 'bout to wild the fuck out, I'm going Bobby Boucher	21	4
133	Meanwhile the DEA, teamed up with the CCA	30	4
143	And I'm not dyin', and I can't lose	40	4
153	Ő megsajnált, eljött közénk	50	4
161	Cause I ain't got the money on me right now	6	7
171	Would be lost without me	16	7
181	And came out of your body	26	7
190	Something strange is happenin' (From the poplar trees)	35	7
198	Before you tried to destroy us	44	7
208	(From the poplar trees)	53	7
217	Now you sittin' courtside, wifey on the other side	62	7
225	Till death but do your part, uh, unholy matrimony	71	7
236	And live and learn (Strange fruit hangin' from the poplar trees)	81	7
245	I need to, I need to make it known	1	8
254	All dem a gwaan dem a dem a dem a gwaan	10	8
269	Focus on the future and let the crew knock her	25	8
276	All dem a gwaan dem a dem a dem a gwaan	32	8
285	Let me go	41	8
294	None ah dem have the guts to bust the SK	51	8
302	Shorty's killin', while I'm drillin'	6	9
309	Killin' 'em, honey how I make the pain improve	14	9
319	This the greatest shit in the club	23	9
327	When I go raw, I like to leave it in	31	9
336	We can send this bitch up, it can't go down	40	9
345	Whether things are good or bad	49	9
354	She say she only here for her girl birthday	7	10
363	How you gon' be mad on vacation?	16	10
372	One good girl is worth a thousand bitches	25	10
382	And hey, you know ain't nobody perfect	34	10
389	But first, you gon' remember how to forget	42	10
396	Jerome's in the house, watch your mouth	49	10
405	Twisted fiction, sick addiction	6	11
414	So high, oh, oh, oh, oh, oh, oh, oh, oh, oh	15	11
422	Me drown sorrow in that Diablo	24	11
432	Can we get much higher? 	33	11
441	The plan was to drink until the pain over	42	11
450	So high, oh, oh, oh, oh, oh, oh, oh, oh, oh	51	11
459	(Can we get much higher?)	60	11
468	So high, oh, oh, oh, oh, oh, oh, oh, oh, oh	69	11
477	I can't handle no liquor	6	5
485	Slightly scratch your Corolla	15	5
495	Feel like Deepak Chopra	24	5
504	Then her auntie came over	33	5
513	Soul mates become soulless	42	5
522	I can't control my niggas	51	5
532	I don't hear your phone	61	5
542	Thank God almighty, they free at last	8	6
552	We deal with action ting	18	6
562	Nuh badda feel seh we won't spray like an aerosol can	28	6
572	(I'll be gone long, grab that ass, shed your clothes)	38	6
580	And grabbed it with a slight grind	47	6
590	That's right, I'm in it	56	6
599	Uh, Michael Douglas out the car now	65	6
608	Uh, I'm a rap-lic priest	74	6
617	I will never ever let you live this down, down, down	3	12
625	Inter-century anthems based off inner city tantrums	12	12
635	I treat the cash the way the government treats AIDS	21	12
642	But this is more than just my road to redemption	29	12
652	Choke a South Park writer with a fishstick	38	12
659	I need more drinks and less lights	47	12
666	'Cause like a Crip said, "I got way too many blues for any more bad news"	52	12
670	'Cause people is looking at me like I'm sniffing coke	58	12
681	That y'all, it's like that ya'll	67	12
698	That meant code red, bent off the black skunk	84	12
708	I guess every superhero need his theme music	3	13
718	Huh? I see you in the mornin'	14	13
722	The clock's tickin', I just count the hours	17	13
724	Till then, fuck that, the world's ours	19	13
730	And then they (Go)	24	13
739	Now I embody every characteristic of the egotistic	33	13
744	Takin' my inner child, I'm fighting for it, custody	40	13
750	Thinkin' no one man should have all that power	43	13
756	And then they	48	13
763	Lost in translation with a whole fuckin' nation	55	13
774	Now this'll be a beautiful death	66	13
791	Turn up the lights in here, baby	3	14
806	I did that time and spent that bread	18	14
822	You know what I need	34	14
831	She need her daddy, baby please	43	14
839	Every night	51	14
847	Getting mine, baby	59	14
856	Did I not mention I was about to lose my mind	68	14
864	Turn up the lights in here, baby	76	14
873	I tried to tell you but all I could say was	85	14
881	Are you willing to sacrifice your life?	3	15
890	Profit profit, nigga I got it	12	15
898	Matter who you go and get, ain't nobody cold as this	20	15
907	If you wanna make your number one your number two now	29	15
916	Have you ever had sex with a pharaoh?	38	15
925	I'mma need to see your fucking hands at the concert	47	15
934	Conquer, stomp ya, stop your silly nonsense	56	15
943	All I get is these vampires and blood suckers	65	15
953	I'mma need to see your fucking hands at the concert	75	15
962	First things first I'll eat your brains	84	15
971	But my features and my shows ten times your pay?	93	15
979	She's on a diet but my pockets eating cheesecake	102	15
988	Aaaaahhh, I'm a motherfucking monster	110	15
997	I, I crossed the line, line	119	15
1956	Now I don't need no RoboCop	18	30
116	But I'd rather be a dick than a swallower	13	4
135	See that's that privately owned prison, get your piece today	32	4
145	'Cause I can't leave it to you	42	4
163	Yeah, I told you to wait (Breeze)	8	7
173	Thought you'd be different 'bout it (Hangin')	18	7
191	(From the poplar trees)	36	7
209	To all my second string bitches, try and get a baby	54	7
228	Strange fruit hangin' from the poplar trees	73	7
246	'Nother one	2	8
264	Pour a little champagne, cranberry vodka	19	8
278	None ah dem have the guts to rise it and spray	34	8
287	Let me go	43	8
297	Hahahaha	1	9
313	We can send this bitch up, it can't go down	18	9
330	She can't go to work, same clothes again	34	9
339	Memories don't live like people do	43	9
348	Bound to fall in love	1	10
357	I know I got a bad reputation	10	10
366	This that what-we-do-don't-tell-your-mom shit	19	10
375	After that, give you somethin' to drink	28	10
384	And hey, ayo, we made it: Thanksgivin'	37	10
399	You might think you've peeped the scene	0	11
408	So high, oh, oh, oh, oh, oh, oh, oh, oh, oh	9	11
417	Yeah	18	11
426	You ain't got no fuckin' Yeezy in your Serrato?	27	11
435	Sex is on fire, I'm the King of Leon-a Lewis, beyond the truest	36	11
444	Too many Urkels on your team, that's why your wins low	45	11
453	Then the sky filled with herons	54	11
462	So high, oh, oh, oh, oh, oh, oh, oh, oh, oh	63	11
471	I can hold my liquor	0	5
480	And my niggas they can't control me	9	5
489	Five years we been over	18	5
498	Yeezy's all on your sofa	27	5
507	Bitch you don't even know us	36	5
516	Callin' up your uncle's place	45	5
525	But you really just know the old me	54	5
535	As I turn my Blackberry off	1	6
545	I'm lyin', I needed condoms, don't look through the glass	11	6
555	I'm a badman if you know say	21	6
565	That's right, I'm in it (Should've known I would fall)	31	6
575	Uh, you know I need that wet mouth	41	6
584	That's why I'm in it and I can't get out	50	6
593	Lay it off with all your rules	59	6
602	Uh, I'm so scared of my demons	68	6
611	Uh, they don't see what I'm sayin'	77	6
620	No more chances if you blow this, you bogus	6	12
629	And at the airport they check all through my bag and tell me that it's random	15	12
638	I can feel it slowly drifting away from me	24	12
646	But they would try to crack me if they ever see a black me	32	12
655	Remind me of when they tried to have Ali enlisted	41	12
668	They rewrite history I don't believe in yesterday	54	12
675	I ain't got it I'm going after whoever who has it	64	12
682	I don't really give a fuck about it at all	68	12
691	Live as a red Jag, a Louis bag, grabbing a blunt, fuck it	77	12
699	The black Dutch, back of the old shed	85	12
713	(21st century schizoid man)	7	13
733	(21st century schizoid man)	26	13
760	And then they (Go)	51	13
768	I know damn well y'all feelin' this shit	59	13
777	Lettin' everything go)	69	13
786	You got the power to let power go?	78	13
794	You know what I need	6	14
801	If you want it, you can get it for the rest of your life	13	14
810	I had to take him to that ghetto university (All of the lights)	22	14
817	Every night	29	14
826	Her mother, brother, grandmother hate me in that order	38	14
835	Street lights	47	14
843	Turn up the lights in here, baby	55	14
852	Got to let these niggas know, yeah	64	14
860	We going all the way this time	72	14
869	Want you to see all of the lights	81	14
877	I tried to tell you but all I could say	89	14
886	Gossip gossip, nigga just stop it	8	15
894	Oh, the best living or dead hands down, huh?	16	15
903	Bought the chain that always give me back pain	25	15
912	Know I'm gonna do, ah, it's the new now	34	15
921	My presence is a present, kiss my ass	43	15
930	Sasquatch, Godzilla, King Kong, Lochness	52	15
939	Kill the block I murder the avenues, I	61	15
949	Seems to be the only way to back you bastards up	71	15
958	Pull up in a monster automobile, gangsta	80	15
967	Young Money is the roster and a monster crew	89	15
977	Nicki on them titties, when I sign it	98	15
986	I think big, get cash, make 'em blink fast	108	15
996	I, I wouldn't last these shows	117	15
1005	One hand in the air if you don't really care	4	16
1014	I got dogs that'll chew a fuckin' hole through the wall	13	16
1022	Will be the same day MTV played videos	21	16
1031	That's why another got damn dance track, gotta hurt	30	16
1039	Fucking ridiculous)	38	16
1049	Or would you rather be underpaid or overrated?	48	16
1057	Not only am I fly, I'm fucking not playing	56	16
1065	Fucking ridiculous)	65	16
1074	While to you I'm just a young rich nigga that lacks faith	73	16
1083	I speak the gospel, hostile	82	16
1092	Two hands in the air if you don't really care	91	16
1101	If God had a iPod, I'd be on his playlist	100	16
1111	Damn another broken heart	110	16
1120	You know this shit is fucking ridiculous	119	16
1129	Fucking ridiculous	128	16
117	I throw these Maybach keys, I wear my heart on the sleeve	14	4
126	Y'all throwing contracts at me, you know that niggas can't read	23	4
136	They prolly all in the Hamptons, bragging 'bout what they made	33	4
146	So let's get too high, get too high again	43	4
164	So I'mma need a little more time now (Blood on the leaves)	9	7
174	Now I know you not it (From the poplar trees)	19	7
183	And you was screamin' that you love me	28	7
192	You could've been somebody	37	7
201	It's like I don't even know ya	46	7
210	Trying to get a baby, now you talkin' crazy	55	7
219	Then she said she impregnated, that's the night your heart died	64	7
229	Strange fruit hangin' from the poplar trees	74	7
238	And livin' all I have	83	7
247	Something gone, capricorn	3	8
256	Maybe it's 'cause she into Leos and I was into trios	12	8
263	Feelin' lied to like parents never say you adopted	20	8
271	The one Chief Rocka, number one Chief Rocka, oh	27	8
280	Oh, oh, oh	36	8
290	All dem a gwaan dem a dem a dem a gwaan	46	8
298	Your loss	2	9
307	And they both sucked like they came to lose	10	9
315	We can send this bitch up, it can't go down	19	9
325	She say, "Can you get my friends in the club?"	27	9
332	Louboutin on the toes again	36	9
341	Whether things are good or bad	45	9
350	When a real nigga hold you down, you supposed to drown	3	10
359	Leave-a-pretty-girl-sad reputation	12	10
368	Got a fresh cut, straight out the salon, bitch	21	10
377	I mean damn, what would Jeromey Romey Romey Rome think?	30	10
386	She asked me what I wished for on my wishlist	39	10
393	With nobody to love, nobody, nobody	46	10
401	Was made up centuries ago	3	11
411	Oh can we get much higher?	12	11
419	Mercy, mercy me, that Murcielago	21	11
429	I'm just a Chi-town nigga with a Nas flow	30	11
438	Respark the soul and rebuild the energy?	39	11
447	And fire up the engines, huh	48	11
456	And the fires did declare us	57	11
465	Can we get much higher?	66	11
474	On Chicago, south of town	3	5
483	Bitch, I'm back out my coma	12	5
492	One more fuck and I can own ya	21	5
501	You love me when I ain't sober	30	5
510	Late-night organ donor	39	5
519	Oh, I wanna phone home	48	5
529	I know your 'rents ain't be home (A new girl)	58	5
539	Neck, ears, hair, legs, eating ass	5	6
549	Get you super wet after we turn the shower off	15	6
559	When we roll 'round 'pon your block	25	6
569	That's right, I'm in it (Then don't let me at your table)	35	6
578	Uh, she love different kinds of sex now	44	6
587	(That's all dem can do	53	6
596	Star fucker	62	6
605	Uh, pop a wheelie on the Zeitgeist	71	6
614	Ain't no question if I want it, I need it	0	12
623	And eventually answers to the call of autumn	9	12
631	And a new fitted and some job opportunities thats lucrative	18	12
640	I will never ever let you live this down, down, down	26	12
649	But this pimp is, at the top of Mount Olympus	35	12
658	I can feel it slowly drifting away from me	44	12
665	It's been a while since I watched the tube	51	12
669	But God said I need a different approach	57	12
678	I'm coming after whoever who has it?	65	12
683	'Cause the same people that tried to black ball me forgot about two things, my black balls	69	12
695	Steam about a hundred and one L's	78	12
753	Screams from the haters, got a nice ring to it	2	13
773	How Ye doin'? I'm survivin'	62	13
785	(Jumpin' out the window	75	13
798	(All of the lights, all of the lights)	10	14
814	(All of the lights, all of the lights)	26	14
832	Can't let her grow up in that ghetto university (All of the lights)	44	14
848	Getting right, babe	61	14
865	Extra bright, I want y'all to see this	77	14
882	Bitch, I'm a monster, no good blood sucker	4	15
899	Do the rap and the track, triple double no assist	21	15
908	This that goose and malibu, I call it Malibooyah"	30	15
917	I put the pussy in a sarcophagus	39	15
926	Profit profit, nigga I got it	48	15
935	Nonsense, none of you niggas know where the swamp is	57	15
944	All I see is these niggas I've made millionnaires	66	15
954	Profit profit, nigga I got it	76	15
963	Then I'mma start rocking gold teeth and fangs	85	15
972	50k for a verse, no album out	94	15
980	And I'll say bride of Chucky is child's play	103	15
987	Now look at what you just saw, this is what you live for	109	15
995	So I, I am headed home	118	15
1006	Middle finger in the air if you don't really care	5	16
1015	But since they all lovers, I need more rubbers	14	16
1023	That was a little joke, voila	22	16
1032	That's why I rather spit something that gotta perk	31	16
1040	How should I begin this, I'm just so offended	39	16
1050	Moral victories is for minor league coaches	49	16
1058	All these little bitches too big for their britches	57	16
1070	Success is what you make it, take it how it come	66	16
1075	Range Rove leather roof, love war fuck a truce	74	16
1084	Tony doing time for what he did to nostrils	83	16
1093	It's like that sometimes I mean ridiculous	92	16
118	I know that we the new slaves, I see the blood on the leaves	15	4
127	Throw 'em some Maybach keys, fuck it, c'est la vie	24	4
137	Fuck you and your Hampton house, I'll fuck your Hampton spouse	34	4
147	Too high again, too high	44	4
155	Strange fruit hangin' from the poplar trees	0	7
165	'Cause I ain't got the money on me right now	10	7
175	So let's get on with it (From the poplar trees)	20	7
184	Before the limelight tore ya	29	7
195	We could've ugh, we could've been somebody	38	7
203	I gotta bring it back to the 'nolia	47	7
211	I don't give a damn if you used to talk to Jay Z	56	7
222	Then you gotta go and tell your girl and report that	65	7
230	That summer night holdin' long and long (Breeze), 'din long (Breeze)	75	7
242	And livin' all (Breeze, breeze)	84	7
248	Dancing out on the lawn	4	8
257	Plus all the trips to Rio couldn't have helped	13	8
265	Your feelings like Zulu, then nothing is a Shaka	21	8
272	All dem a gwaan dem a dem a dem a gwaan	28	8
281	If you love me so much then why'd you let me go?	37	8
296	Dem a gwaan gwaan gwaan, softer than clay	47	8
314	We can send this bitch up, it can't go down	17	9
333	And her heart colder than the souls of men	35	9
349	All them other niggas lame and you know it now	2	10
367	This that red-cup-all-on-the-lawn shit	20	10
385	So hey, maybe we can make it to Christmas	38	10
402	The watered down one, the one you know	2	11
420	I fantasized 'bout this back in Chicago	20	11
437	And refresh the page and restart the memory	38	11
455	And the hell, it wouldn't spare us	56	11
473	Dark and lonely now	2	5
491	One more hit and I can own ya	20	5
509	Baby girl, he's a loner	38	5
528	I heard you need a new phone (A new girl)	57	5
538	Careless whispers, eye fuckin', bitin' ass	4	6
548	Tell your boss you need an extra hour off	14	6
558	That's right, couldn't try that no day	24	6
568	That's right, I'm in it (Well, you need to fight for your own)	34	6
586	That's why I'm in it and I can't get out	52	6
604	Uh, my mind move like a Tron bike	70	6
622	Penitentiary chances, the devil dances	8	12
639	I'm on the edge, so why you playing? I'm saying	25	12
657	Ain't no question if I want it, I need it	43	12
679	And what's a black Beatle anyway? A fucking roach	55	12
690	Counting up, smoking, one cuff	76	12
731	No more chances if you blow this, you bogus	92	12
751	Got treasures in my mind, but couldn't open up my own vault	36	13
762	(21st century schizoid man)	53	13
772	I got the power, make yo' life so excitin'	65	13
779	Lettin' everything go	72	13
788	Lights, lights	1	14
797	Want you to see all of the lights	8	14
803	Something wrong, I hold my head	15	14
812	Spot lights, strobe lights	24	14
819	Turn up the lights in here, baby	31	14
828	Told her she take me back, I'll be more supportive	40	14
837	Fast life, drug life	49	14
844	Want you to see everything	57	14
854	You should go and get your own	66	14
861	We going all the way this time	74	14
871	I tried to tell you but all I could say was	83	14
879	Hide till it's bright out	1	15
888	I'mma need to see your fucking hands at the concert	10	15
896	And my eyes more red than the devil is	18	15
905	Chi nigga but these hoes love my accent	27	15
914	'Cause you will never get on top of this	36	15
923	Everybody know I'm a motherfucking monster	45	15
933	Question, what do these things all have in common?	54	15
941	Everybody wanna know what my Achilles heel is?	63	15
951	Everybody know I'm a motherfucking monster	73	15
960	Yeah I'm in that Tonka color of Willy Wonka	82	15
969	And if I'm fake, I ain't notice 'cause my money ain't	91	15
984	But really, really I don't give a F-U-C-K	100	15
991	I, I wouldn't last these shows	113	15
1002	So I, I am headed home	122	15
1010	Balding, Donald Trump taking dollars from y'all	9	16
1019	That know we get O's like Cheerios	18	16
1027	Address me as your highness	26	16
1036	I mean this shit is fucking ridiculous	35	16
1044	I'm fresher than you all, so I don't have to pause	43	16
1054	I lost thirty mill so I spent another thirty	53	16
1062	Fucking ridiculous	61	16
1069	Blackjack I just pulled in aces	70	16
1079	I keep the city's best, never said she was the brightest	78	16
1088	Flaws ain't flaws when it's you that makes the call	87	16
1097	It's like that sometimes, man ridiculous	96	16
1106	My movement is like the civil rights I'm Ralph David	105	16
1116	'Cause you haters got PhDs	115	16
1125	Fucking ridiculous	124	16
1134	One hand in the air if you don't really care	133	16
1142	I know I'm preaching to the congregation	4	17
1154	Hood phenomenon, the LeBron of rhyme	16	17
1168	Don't leave while your hot that's how Mase screwed up	30	17
1179	Uh put your hands to the constellations	41	17
1191	Before his jaw shattered climbing up the lord's ladder	54	17
1205	Spinnin’ Teddy Pendergrass vinyl as my jay burns	67	17
1214	Look at ya, look at ya	2	18
1223	Look at ya, look at ya	11	18
1965	She never let it go	26	30
119	I see the blood on the leaves, I see the blood on the leaves	16	4
128	I know that we the new slaves, y'all niggas can't fuck with me	25	4
138	Came on her Hampton blouse and in her Hampton mouth	35	4
148	Ooh, ooh, ooh	45	4
156	Blood on the leaves	1	7
166	And I thought you could wait (Breeze)	11	7
176	We could've been somebody	21	7
185	Before the limelight stole ya	30	7
193	Or was it on the first party	39	7
202	Fuck them other niggas 'cause I'm down with my niggas (Black bodies)	48	7
212	He ain't with you, he with Beyoncé, you need to stop actin' lazy	57	7
220	Main reason 'cause your pastor said you can't abort that	66	7
231	Now waiting (Blood on the leaves) for the summer rose and (Breeze)	76	7
240	And live (Blood on the leaves)	85	7
249	Fancy like the things she likes	5	8
258	It's gettin' cold, better bring your ski clothes	14	8
266	I hit her with Jamaican dick, I'm the new Shabba	22	8
273	Dem a gwaan gwaan gwaan, sof-sof-softer sof-softer	29	8
282	If you love me so much then why'd you let me go?	38	8
293	All dem a gwaan dem a dem a dem a gwaan	48	8
299	Rockstar bitch call me Elvis	3	9
310	Dropped out the first day of school	11	9
316	We can send this bitch up, it can't go down	20	9
323	I say, "Can you get my Benz in the club?"	28	9
331	Tight dress dancin' close to him	37	9
342	It's just the memories that you have	46	9
351	Bound 	4	10
360	Start-a-Fight-Club-Brad reputation	13	10
369	I know you're tired of lovin', of lovin'	22	10
378	Hey, you remember where we first met?	31	10
387	Have you ever asked your bitch for other bitches?	40	10
394	So just grab somebody, no leavin' this party	47	10
403	It made it sound all whack and corny	4	11
412	So high, oh, oh, oh, oh, oh, oh, oh, oh, oh	13	11
424	That's me, the first year that I blow	22	11
431	And my bitch in that new Phoebe Philo	31	11
439	We stopped the ignorance, we killed the enemy	40	11
448	And then they make noise, oh	49	11
457	But after that, took pills, kissed an heiress	58	11
466	So high, oh, oh, oh, oh, oh, oh, oh, oh, oh	67	11
475	I'm on to Indiana	4	5
487	Wakin' up on your sofa	13	5
493	One cold night in October	22	5
502	You love me when I'm hungover	31	5
511	After that, he disown ya	40	5
520	I can't handle no liquor	49	5
530	Callin' up your uncle's place	59	5
540	Your pussy's too good, I need to crash	6	6
550	That's all dem can do, say wah, say wah?	16	6
560	Nuh badda feel say we won't spray like a aerosol can	26	6
570	I'm in it (If you just gonna lay there)	36	6
579	Uh, black girl sippin' white wine	45	6
588	We deal with action ting	54	6
597	Who, where?	63	6
606	Uh, I'm finna start a new movement	72	6
615	I can feel it slowly drifting away from me	1	12
626	All of them fallin' for the love of ballin'	10	12
633	This the real world, homie, school finished	19	12
643	Is hip hop just a euphemism for a new religion?	27	12
650	Ready for the World's game, this is my Olympics	36	12
664	I'm on the edge, so why you playing? I'm saying	45	12
677	Play strings for the dramatic and end all of that wack shit	62	12
689	Armani suits, fresh fruits, Bally boots, and Benzes	75	12
726	I can feel it slowly drifting away from me	91	12
748	My furs is Mongolian, my ice brought the goalies in	32	13
759	And then they	52	13
771	I was drinkin' earlier, now I'm drivin'	63	13
776	Lettin' everything go	68	13
784	Lettin' everything go)	77	13
793	Turn up the lights in here, baby	5	14
800	(All of the lights, all of the lights)	12	14
809	To my surprise, a nigga replacing me	21	14
816	Thug life, rock life	28	14
825	Restraining order, can’t see my daughter	37	14
834	Spot lights, strobe lights	46	14
842	Extra bright, I want y'all to see this	54	14
851	Getting mine, baby	63	14
859	We going all the way this time	71	14
868	Want you to see everything	80	14
876	"Whoa, whoa"	88	14
885	Kanye West samples, here's one for example	7	15
893	I'mma need to see your fucking hand	15	15
902	I heard that people sing raps to give the track pain	24	15
911	Whatever ever I wanna do, gosh it's cool now"	33	15
920	I'm living the future so the present is my past	42	15
929	I'mma need to see your fucking hand	51	15
938	Murder murder in black convertibles, I	60	15
948	I smell a massacre	70	15
957	I'mma need to see your fucking hand	79	15
966	Monster Giuseppe heel, that's the monster shoe	88	15
975	Tony Matterhorn dutty wine it, wine it	97	15
981	Besides 'Ye, they can't stand besides me	105	15
994	And I'll, I'll let God decide, cide	116	15
1003	It's like that sometimes I mean ridiculous	2	16
1013	We above the law, we don't give a fuck 'bout y'all	12	16
1030	Niggas is going through real shit, man they outta work	29	16
1048	I went from the favorite to the most hated	47	16
1071	Man this shit is fucking ridiculous	64	16
1082	So I dismiss her past until she disappoints your highness	81	16
120	I know that we the new slaves, I see the blood on the leaves	17	4
129	Y'all niggas can't fuck with Ye, y'all niggas can't fuck with Ye	26	4
139	Y'all 'bout to turn shit up, I'm 'bout to tear shit down	36	4
149	Too high, yeah	46	4
157	I just need to clear my mind now	2	7
167	Yeah, I thought you could wait (Breeze)	12	7
177	'Stead you had to tell somebody	22	7
186	Remember we were so young	31	7
194	When we tried our first molly	40	7
204	Fuck them other niggas 'cause I'm down with my niggas (Hangin' in the summer breeze)	49	7
213	She Instagram herself like #BadBitchAlert	58	7
221	Now your driver say that new Benz you can't afford that	67	7
232	And breathe and breathe (Blood on the leaves)	77	7
239	And live (Breeze, breeze)	86	7
250	She lives her life	6	8
259	Peekin' through the keyhole, the door locked by myself	15	8
267	She lookin' for her daddy, call me Big Poppa	23	8
274	All dem a gwaan dem a dem a dem a gwaan	30	8
283	If you love me so much then why'd you let me go?	39	8
291	Dem a gwaan gwaan gwaan, sof-sof-softer sof-softer	49	8
300	M.O.B, she call me selfish	4	9
306	'Cause niggas got cocaine to move	12	9
317	We can send this bitch up, it can't go down	21	9
324	If not, treat your friends like my Benz	29	9
334	Yeezus just rose again	38	9
343	Memories don't live like people do	47	9
352	 Bound 	5	10
361	I turnt the nightclub out of the basement	14	10
370	With nobody to love, nobody, nobody	23	10
383	Okay, I don't remember where we first met	32	10
400	You haven't, the real one's far too mean	1	11
409	Oh (Can we get much higher?)	10	11
418	Yeah	19	11
427	(You ain't got no Yeezy, nigga?)	28	11
436	Hey, teacher, teacher, tell me how do you respond to students	37	11
445	Don't make me pull the toys out, huh	46	11
454	(I saw the devil) In a Chrysler LeBaron	55	11
463	(Can we get much higher?)	64	11
472	But this man can’t handle his weed	1	5
481	You say you know me, my nigga	10	5
490	Ask me why I came over	19	5
499	These the Red Octobers	28	5
508	"Baby girl, he's a loner	37	5
517	Shit's all over the place	46	5
526	I heard you need a new fad (A new girl)	55	5
536	And I turn your bathwater on	2	6
546	Chasin' love, all the bittersweet hours lost	12	6
556	Disrespect we no tek, no way Jose	22	6
566	I'm in it (Steppin' on cracks on the floor)	32	6
576	Uh, I know you need that reptile	42	6
585	(That's all dem can do, say wah, say wah?)	51	6
594	Star fucker	60	6
603	Uh, I go to sleep with a nightlight	69	6
612	Uh, they be ballin' in the D-League	78	6
621	I will never ever let you live this down, down, down	7	12
630	But we stay winning, this week has been a bad massage	16	12
647	I thought I chose a field where they couldn't sack me	33	12
656	If I ever wasn't the greatest, nigga, I must have missed it	42	12
676	I guess that's why they got me sitting in fucking coach	56	12
688	Ayo, I done copped Timb's, lived in lenses, kid	74	12
697	Make sure he right in the field, not a soldier dead	83	12
704	Not for nothing I've forseen it, I dream it	90	12
711	The system broken, the schools closed, the prisons open	8	13
717	In this white man world, we the ones chosen	12	13
723	Stop trippin', I'm trippin' off the power	18	13
732	And then they	25	13
737	I'm an asshole? You niggas got jokes	30	13
743	Is honestly being crowded by these grown thoughts	38	13
758	And then they	50	13
764	They say I was the abomination of Obama's nation	56	13
765	Well, that's a pretty bad way to start the conversation	57	13
775	(I'm jumpin' out the window	67	13
783	Lettin' everything go	76	13
792	Extra bright, I want y'all to see this	4	14
799	Until it's Vegas everywhere we are	11	14
808	I'm on my way, heading up the stairs	20	14
815	Fast life, drug life	27	14
824	Want you to see all of the lights	36	14
833	Cop lights, flash lights	45	14
841	Turn up the lights in here, baby	53	14
849	You should go and get your own	62	14
858	Okay, okay, you know we going all the way this time	70	14
866	You know what I need	79	14
875	I tried to tell you but all I could say was	87	14
884	As you run through my jungles all you hear is rumbles	6	15
892	I'mma need to see your fucking hands at the concert	14	15
901	Argue with my older bitch acting like I owe her shit	23	15
910	Throw that motherfucker, "Well, whatchu gon' do now?	32	15
919	Head of the class and she just want a swallowship	41	15
928	I'mma need to see your fucking hands at the concert	50	15
937	I still hear fiends scream in my dreams	59	15
947	Tryna draw blood from my ice cold veins	69	15
956	I'mma need to see your fucking hands at the concert	78	15
965	Hairdresser from Milan, that's the monster 'do	87	15
974	Hotter than a middle eastern climate, find it	96	15
985	Pink wig, thick ass, give 'em whiplash	107	15
1004	It's like that sometimes this shit ridiculous	3	16
1021	That know, the day that you play me	20	16
121	They throwing hate at me, want me to stay at ease	18	4
130	I'll move my family out the country, so you can't see where I stay	27	4
140	I'm 'bout to air shit out, now what the fuck they gon' say now?	37	4
150	Egyszer a nap úgy elfáradt	47	4
158	It's been racin' since the summertime (Breeze)	3	7
168	These bitches surroundin' me (Black bodies)	13	7
178	Let's take it back to the first party	23	7
187	When I would hold you	32	7
196	And came out of our body	41	7
205	Fuck them other niggas 'cause I'm down with my niggas (Breeze)	50	7
214	He Instagram his watch like #MadRichAlert	59	7
223	All that cocaine on the table you can't snort that	68	7
233	And breathe and breathe (Breeze, breeze)	78	7
241	(Blood on the leaves)	87	7
251	I'm living mine	7	8
260	And I'm feelin' it right now	16	8
268	On to the next saga	24	8
275	Dem a gwaan gwaan gwaan, softer than clay	31	8
284	Let me go, let me go	40	8
292	None ah dem have the guts to rise it and spray	50	8
301	Success got 'em jealous	5	9
308	I be goin' hard, I got a name to prove	13	9
318	We can send this bitch up, it can't go down	22	9
326	Park they ass outside 'til the evenin' end	30	9
335	We can send this bitch up, it can't go down	39	9
344	They always 'member you	48	9
353	What you doin' in the club on a Thursday?	6	10
362	I'll turn the plane 'round, your ass keep complainin'	15	10
371	Close your eyes and let the word paint a thousand pictures	24	10
381	But hey, admittin' is the first step	33	10
388	Maybe we could still make it to the church steps	41	10
395	With nobody to love, nobody, nobody	48	10
404	Yes, it's awful, blasted boring	5	11
413	Oh can we get much higher?	14	11
421	How you say broke in Spanish? Me no hablo	23	11
430	So much head, I woke up in Sleepy Hollow	32	11
440	Sorry for the night demons still visit me	41	11
449	Can we get much higher?	50	11
458	And woke up back in Paris	59	11
467	Can we get much higher?	68	11
476	I heard it in the radio now	5	5
484	When I park my Range Rover	14	5
494	Pussy had me floatin'	23	5
503	Even when I blow doja	32	5
512	After that he's just hopeless	41	5
521	But these bitches can't handle me	50	5
531	Shit's all over the place	60	5
541	Your titties, let 'em out, free at last	7	6
551	That's all dem can do	17	6
561	When we roll 'round 'pon your block	27	6
571	That right (Fist jumps in the air, you love flame wars)	37	6
582	Put my fist in her like a civil rights sign	46	6
589	Just a badman thing, a dat man do)	55	6
598	Time to take it too far now	64	6
607	Uh, being led by the drums	73	6
616	I'm on the edge, so why you playing? I'm saying	2	12
624	Got caught with thirty rocks, the cop look like Alec Baldwin	11	12
634	They done stole your dreams, you dunno who did it	20	12
641	The soul music for the slaves that the youth is missing	28	12
651	We make 'em say ho 'cause the game is so pimpish	37	12
661	I will never ever let you live this down, down, down	46	12
674	Kiss the ring while they at it, do my thing while I got it	61	12
687	I will never ever let you live this down, down, down	73	12
696	The older head, bolder head, would train a soldier head	82	12
703	Learn from others like your brothers Rae and Kanye	89	12
707	Do it better than anybody you ever seen do it	1	13
714	We ain't got nothin' to lose, motherfucker, we rollin'	9	13
725	And then they (Go)	20	13
736	More specifically, they can kiss my asshole	29	13
741	I just needed time alone with my own thoughts	35	13
747	As I look down at my diamond-encrusted piece	42	13
754	Till then, fuck that, the world's ours	46	13
767	I don't need yo' pussy, bitch, I'm on my own dick	60	13
782	Now this'll be a beautiful death	74	13
796	Fast cars, shooting stars	9	14
804	MJ gone, our nigga dead	16	14
813	Street lights	25	14
820	Extra bright, I want y'all to see this	32	14
829	I made mistakes, I bumped my head	41	14
838	Thug life, rock life	50	14
846	Want you to see all of the lights	58	14
855	Unemployment line, credit card declined	67	14
863	We going all the way this time	75	14
872	"Whoa, whoa"	84	14
880	Whoa, just another lonely night	2	15
889	I'mma need to see your fucking hands at the concert	11	15
897	And I'm bout to take it to another level bitch	19	15
906	Chick came up to me and said, "This the number to dial	28	15
915	So mommy best advice is just to get on top of this	37	15
924	I'mma need to see your fucking hands at the concert	46	15
932	Everybody knows I'm a motherfucking monster	55	15
942	Love, I don't get enough of it	64	15
952	I'mma need to see your fucking hands at the concert	74	15
961	You could be the king but watch the queen conquer	83	15
970	So let me get this straight, wait, I'm the rookie?	92	15
978	Forget Barbie, fuck Nicki, 'cause she's fake	101	15
992	So I, I am headed home	114	15
1001	One hand in the air if you don't really care	0	16
1011	Baby you're fired, your girlfriend hired	10	16
125	I know that pussy ain't free, you niggas pussy, ain't me	22	4
134	They tryna lock niggas up, they tryna make new state	31	4
144	I can't lose, no, I can't lose	41	4
154	Igen	51	4
162	And I told you to wait (Breeze)	7	7
172	We could've been somebody (Strange fruit)	17	7
182	Running naked down the lobby	27	7
200	How you gon' lie to the lawyer?	45	7
218	Gotta keep 'em separated, I call that apartheid	63	7
227	Black bodies hangin' in the summer breeze, breeze	72	7
237	And livin' and livin' like I'm lonely, lonely, lonely (From the poplar trees, from the poplar trees)	82	7
255	Dem a gwaan gwaan gwaan, softer than clay	11	8
270	Star Wars fur, yeah, I'm rockin' Chewbacca	26	8
288	Dem a gwaan gwaan gwaan, sof-sof-softer sof-softer	45	8
304	It was real if you made the news	8	9
312	We can send this bitch up, it can't go down	16	9
321	It's so packed I might ride around	25	9
329	When I go to work, she gotta call it in	33	9
338	We can send this bitch up, it can't go down	42	9
347	B-b-b-b-bound to fall in love	0	10
356	Rock Forever 21 but just turned thirty	9	10
365	Uh, this that prom shit	18	10
374	I wanna fuck you hard on the sink	27	10
380	But hey, their backstroke I'm tryna perfect	36	10
391	I'm tired, you tired, Jesus wept	44	10
398	Bound  Bound	51	10
407	(Can we get much higher?)	8	11
416	Yeah	17	11
425	DJs need to listen to the models	26	11
434	Look like a fat booty Celine Dion	35	11
443	Fresh air, rolling down the window	44	11
452	Just kids, no parents	53	11
461	(Can we get much higher?)	62	11
470	So high, oh, oh, oh, oh, oh, oh, oh, oh, oh	71	11
479	I can't control my niggas	8	5
488	I'm hangin' on a hangover	17	5
497	Might call 2Pac over	26	5
506	Tellin' you that I'm bogus	35	5
515	And bitch, I'm back out my coma	44	5
524	You say you know me, my nigga	53	5
534	Damn your lips very soft	0	6
544	Had to stop at 7-Eleven like I needed gas	10	6
554	Action thing yo a badman thing	20	6
564	Because we beat murder charge like OJ	30	6
574	Uh, I need you home when I get off	40	6
583	Then she came like aah!	49	6
592	Say you long for me, for you	58	6
601	Uh, but can't wake up from the nightlife	67	6
610	Uh, they don't play what I'm playin'	76	6
619	I can feel it slowly dripping away from me	5	12
628	Face it, Jerome get more time than Brandon	14	12
637	Ain't no question if I want it, I need it	23	12
645	As long as I'm in Polo's smilin' they think they got me	31	12
654	And these drugs, niggas can't resist it	40	12
662	She told the director she tryna get in a school	49	12
673	It's not funny anymore, try different jokes	59	12
686	I'm on the edge, so why you playing? I'm saying	72	12
694	It matched every black pair of Nikes, throwing dice for decimals	81	12
702	Keep shining, to every young man, this is a plan	88	12
706	I'm livin' in that 21st century, doin' something mean to it	0	13
710	The clock's tickin', I just count the hours	5	13
716	With some light-skinned girls and some Kelly Rowlands	11	13
721	No one man should have all that power	16	13
729	And then they	23	13
738	You short-minded niggas' thoughts is Napoleon	31	13
745	Reality is catchin' up with me	39	13
755	And then they (Go)	47	13
769	I ain't gotta power trip, who you goin' home with?	61	13
778	(Jumpin' out the window	71	13
787	All of the lights, all of the lights	0	14
795	Want you to see everything	7	14
802	If you want it, you can get it for the rest of your life	14	14
811	Cop lights, flash lights	23	14
818	(All of the lights, all of the lights)	30	14
827	Public visitation, we met at Borders	39	14
836	(All of the lights, all of the lights)	48	14
845	You know what I need	56	14
853	Getting right, babe	65	14
862	We going all the way this time	73	14
870	(Whoa, whoa)	82	14
878	I shoot the lights out	0	15
887	Everybody know I'm a motherfucking monster	9	15
895	Less talk more head right now, huh?	17	15
904	Fuckin up my money so, yeh, I had to act sane	26	15
913	Think you motherfuckers really really need to cool out	35	15
922	Gossip gossip, nigga just stop it	44	15
931	Goblin, Ghoul, a zombie with no conscience	53	15
940	Rape and pillage a village, women and children	62	15
950	Gossip gossip, nigga just stop it	72	15
959	With a bad bitch that came from Sri Lanka	81	15
968	And I'm all up all up all up in the bank with the funny face	90	15
976	That's how these niggas so one-track minded	99	15
993	I, I crossed the line, line	115	15
1000	Two hands in the air if you don't really care	1	16
1012	And if you don't mind I'mma keep you on call	11	16
1029	Niggas be writin' bullshit like they gotta work	28	16
1047	Or live long enough to see yourself become a villain	46	16
1064	(Five star dishes, different exotic fishes	63	16
1081	I never met a bitch that didn't need a little guidance	80	16
1090	Spillin' I own you all, yeah	89	16
1007	It's like that sometimes, man ridiculous	6	16
1016	And if I don't use rubbers, need more covers	15	16
1024	Praises due to the most high, Allah	23	16
1033	Champagne wishes, thirty white bitches	32	16
1041	How am I even mentioned by all these fucking beginners?	40	16
1051	And Ye already told you we major, you cockroaches	50	16
1059	Burning their little bridges, fucking ridiculous	58	16
1066	A half a mil in twenties like a billion where I'm from	67	16
1076	Still move a bird like I'm in bed with mother goose	75	16
1085	Paranoid mind I'm still under the watchful	84	16
1094	It's like that sometimes this shit ridiculous	93	16
1103	The favorite, huh, my cup over runneth with hundreds	102	16
1113	I got a seven on me, I call my bro Lamar	112	16
1122	You know this shit is fucking ridiculous	121	16
1131	Two hands in the air if you don't really care	130	16
1139	I love it though	1	17
1146	Make rash decisions oh she do it,	10	17
1152	How she gone wake up and not love me no more	14	17
1158	I know I'm preaching to the congregation	22	17
1165	And outta all the colours that are still up the skies	27	17
1171	You see I always loved your sense of humour	35	17
1178	You love me for me could you be more phoney	40	17
1182	To me this evening	44	17
1189	I never needed acceptance from all you outsiders	52	17
1194	Never that not when i'm in my favorite paper tag	57	17
1202	Different traps, I was gettin’ mail from	64	17
1211	Catchin’ feelings never stumble retracin’ my steps	73	17
1218	Look at ya, look at ya	8	18
1228	So I think it's time, for us, to have a toast	16	18
1235	I don't know what it is with females	23	18
1242	And I always find, yeah I always find, yeah I always find somethin' wrong	29	18
1246	Let's have a toast for the scumbags, every one of them that I know	34	18
1255	Baby I got a plan, run away as fast as you can	44	18
1264	Hoes like vultures, wanna fly in your Freddy loafers	52	18
1273	And I know I did damage	62	18
1282	So I think it's time, for us, to have a toast	71	18
1294	And I always find, yeah I always find somethin' wrong	84	18
1308	I think I just fell in love with a porn star	0	19
1317	We headin to hell for heaven's sake, huh	10	19
1325	Comin' from inside the screen, you a wild bitch	19	19
1337	Bang, bang, bang, bang, bang	27	19
1346	'Specially if she can't get that dress from Oscar de	39	19
1360	No more drugs for me, pussy and religion is all I need	52	19
1370	Let's call out names, names, for sure	4	20
1380	On a bathroom wall I wrote, "I'd rather argue with you than be with someone else"	13	20
1389	Been a long time since I spoke to you in a bathroom	24	20
1399	Running my name through the mud, who's provoking you?	33	20
1407	He was just gon' say whatever that you told him to	39	20
1414	All of the lights, she-was-caught-in-the-hype girl	47	20
1421	"Things used to be, now they not	54	20
1426	Gone for eternity	59	20
1444	I can't love you this much	76	20
1464	Who taught you how to put some motherfucking Jimmy Choos on?	93	20
1477	I'mma buy the album, I'mma download that motherfucker, I'mma shoot a bootlegger	110	20
1491	I'm up in the woods, I'm down on my mind	2	21
1501	You're my heaven, you're my hell	14	21
1511	Let's break out of this fake-ass party, turn this in to a classic night	23	21
1522	I'm lost in the world, I'm down on my mind	35	21
1533	And America is now blood and tears instead of milk and honey. 	4	22
1544	and a rapist known as freedom, free doom. 	15	22
1550	and a children and some food to feed them every night.	21	22
1559	I know you see me now right now (Right now, right now)	3	23
1578	He just walked in nobu like it was wholefoods	20	23
1593	Everything i want, but i dont	36	23
1605	I know you see me now right now	49	23
1624	This the cris year, last year was magic 32	64	23
1632	And this life to crazy to think logicaly	76	23
1642	I know you see me now right now (Right now, right now)	87	23
1652	I pray you will	6	24
1660	When I grab your neck, I touch your soul	14	24
1675	I pray you will	29	24
1686	Dad cracked a joke, all the kids laughed	10	25
1698	I've seen it, I've seen it before	22	25
1708	(Ooh, ooh, ooh)	32	25
1722	No, no, no, no	45	25
1737	I mean after all the things that we've been through	8	26
1751	Oh, how could you be so heartless?	20	26
1761	You'll never find nobody better than me	32	26
1773	And we just gon' be enemies	44	26
1790	So amazing, it's amazing	7	27
1808	My reign is as far as your eyes can see, its amazing	25	27
1817	I'm amazing, yeah I'm all that	34	27
1827	They like, "Oh god why he go so hard	44	27
1836	So amazing, it's amazing	53	27
1846	See I wanna move, but can't escape from you	9	28
1855	I can't keep myself, and still keep you too	19	28
1869	I'm not lovin you, the way I wanted to	32	28
1881	So keep ya love locked down, ya love locked down	44	28
1898	Tell me right now, you really wanna spend your whole life alone?	13	29
1915	Yeah, you see 'em look, baby let 'em look give us cold looks 'cause we look cold	30	29
1932	They'll never know you	47	29
1948	You will never stop it now	9	30
1964	I told her there's some things she don't need to know	25	30
1020	That know because they seen us in the videos	19	16
1028	High as United, thirty thousand feet up and you are not invited	27	16
1037	(Five star dishes, different exotic fishes	36	16
1045	All of y'all can suck my balls through my drawers	44	16
1055	'Cause unlike Hammer thirty million can't hurt me	54	16
1063	I mean this shit is fucking ridiculous	62	16
1072	You looking at the king in his face	71	16
1080	So if you had her too, it don't affect me in the slightest	79	16
1089	Flow similar to the legend of the falls	88	16
1098	Life can be sometimes ridiculous	97	16
1107	Abernathy, so call my lady Rosa Parks	106	16
1117	Y'all just some major haters and some math minors	116	16
1126	You know this shit is fucking ridiculous	125	16
1135	Middle finger in the air if you don't really care	134	16
1143	We love Jesus but you done learned a lot from Satan	5	17
1155	Hard to be humble when you stuntin on a jumbotron	17	17
1167	Why you standing there with your face screwed up	29	17
1175	The Lyor Cohen or Dior Homme thats	37	17
1184	Lookin' at my bitch i bet she give yo ass a bone	46	17
1195	Therefore G4s at the Clearport	58	17
1204	Polk County, Jacksonville, rep Melbourne	65	17
1210	I’m makin’ love to the angel of death	72	17
1219	Look at ya, look at ya	7	18
1227	I'm so gifted at findin' what I don't like the most	15	18
1234	I sent this bitch a picture of my dick	22	18
1239	At least you know that's what I'm good at	28	18
1247	Let's have a toast for the douchebags, let's have a toast for the assholes	33	18
1254	Man I'm 'bout to get crazy, why can't she just, run away? (Look at ya)	43	18
1263	Let's talk over mai tais, waitress, top it off	51	18
1274	'Cause the look in your eyes is killing me	63	18
1283	Let's have a toast for the douchebags, let's have a toast for the assholes	72	18
1290	And I always find, yeah I always find somethin' wrong	81	18
1297	And I always find, yeah I always find, yeah I always find somethin' wrong	88	18
1304	And I always find, yeah I always find somethin' wrong	92	18
1312	She gave that old nigga a ulcer	4	19
1318	Well I'mma levitate, make the devil wait, yeah	11	19
1324	Never in your wildest dreams, in your wildest	17	19
1326	Said her price go down, she ever fuck a black guy	21	19
1330	And if we run trains, we all in the same gang	25	19
1335	No more drugs for me, pussy and religion is all I need	30	19
1343	I'mma need a whole day, at least rolled doja	37	19
1351	How could you say they live they life wrong	42	19
1361	Grab my hand and baby we'll live a hell of a life	53	19
1367	Whose fault?	0	20
1375	At the end of it you know we both were wrong	8	20
1383	Somebody help	17	20
1393	And if you are I hope you have a good time	28	20
1405	Even though I knew, he never told the truth	38	20
1415	And I was satisfied being in love with the lie	48	20
1425	We walk away like strangers in the street	58	20
1431	Let's play the blame game, I love you more	65	20
1439	I can't love you this much	72	20
1445	I heard the whole thing, whole thing, whole thing, whole thing	81	20
1456	My, my God, where'd, where'd you learn that?	89	20
1467	(Yeezy taught me)	100	20
1479	I still can't believe you got me this watch	112	20
1489	I'm building a still to slow down the time	1	21
1500	You're my devil, you're my angel	13	21
1510	Lost in this plastic life	22	21
1521	Who will survive in America?	34	21
1535	fucking up woke up one night digging 	6	22
1545	Democracy, liberty, and justice were revolutionary code names 	16	22
1551	After all is said and done build a new route to China if they'll have you.	22	22
1560	I know you see me now right now (Right now)	4	23
1572	Im in a speed boat, in my boat shoes	16	23
1586	Straight to jail yo, in a hell hole	30	23
1601	I know you see me now right now,	45	23
1613	Somebody needs to put us on camera	57	23
1622	I killt the fur last, Paris rasied the murder rate	68	23
1638	I just go in my zone and imma make it hot	81	23
1648	Hey, hey, hey, hey	2	24
1666	Hey, hey, hey, hey	19	24
1685	(Ooh, ooh, ooh)	9	25
1707	I've seen it, I've seen it before	23	25
1735	No, no, I can't stop	47	25
1752	How could you be so Dr. Evil?	21	26
1764	To a woman so heartless	35	26
1777	I'm gon' take off tonight, into the night	48	26
1785	I'm exhausted barely breathing	2	27
1794	I know I'm wrong, yeah	11	27
1803	I'm a monster I'm a maven	20	27
1812	So amazing, it's amazing	29	27
1822	Die high blood pressure either let the feds catch ya	39	27
1831	So amazing, so amazing	48	27
1841	So ya never know, never, never know	4	28
1861	Somewhere far from home, in the danger zone	21	28
1874	Keep it on a roll, only God knows	37	28
1887	(Yeah, she's so paranoid)	2	29
1894	You worry 'bout the wrong things, the wrong things	9	29
1902	I can make you high, I can make you fly	17	29
1911	Anyway they don't know you like I do (Never know)	26	29
1919	(Baby, don't worry about it	34	29
1928	You worry 'bout the wrong thing, the wrong thing	43	29
1936	They'll never know you	51	29
1944	Checking everything like I'm on parole	5	30
1952	You need to drop it now	13	30
2936	e gon' be there" but	0	48
1038	Man this shit is fucking ridiculous	37	16
1046	Dark Knight feeling, die and be a hero	45	16
1056	Fucking insane, the fuck am I sayin'?	55	16
1073	Everything I dream, motherfuckers, I'm watching it take shape	72	16
1091	One hand in the air if you don't really care	90	16
1110	She found out about April so she chose to march	109	16
1128	Fucking ridiculous	127	16
1144	We ain't married but tonight I need some consummation	7	17
1157	I'm looking at her like "this what you really wanted, huh?"	18	17
1170	Throwing shit around, the whole place screwed up	31	17
1180	The way you look should be a sin, you my "sin-sation"	42	17
1193	We still speeding, running signs like they don't matter	55	17
1206	I shed a tear before the night's over	68	17
1212	Look at ya, look at ya	0	18
1220	Look at ya, look at ya	9	18
1231	Let's have a toast for the douchebags, let's have a toast for the assholes	17	18
1244	So I think it's time, for us, to have a toast	32	18
1257	24/7, 365, pussy stays on my mind	45	18
1268	Comes with a price tag, baby, face it	55	18
1275	I guess you are at an advantage	64	18
1301	And I always find, yeah I always find somethin' wrong	77	18
1344	Make her knees shake, make a priest faint	6	19
1356	Fuck wit' the lights, fuck wit' the, wit' the lights on	48	19
1373	Let's play the blame game for sure	2	20
1386	Till about two AM and I call back and I hang up and I start to blame myself	16	20
1395	And you ain't finna see a mogul get emotional	30	20
1406	At a certain point I had to stop asking questions	40	20
1416	Now who to blame, you to blame, me to blame	49	20
1427	We erased one another	60	20
1442	No, I can't love you this much	74	20
1451	Goddamn, goddamn	85	20
1462	Yo you took your pussy game up a whole 'nother level	95	20
1473	Who, who the fuck got your pussy all reupholstered?	106	20
1485	Where you learn to treat a nigga like this?	118	20
1496	Down for the night, said she's down for the night	8	21
1506	You're my war, you're my truce	18	21
1516	I’m new in the city, and I’m down for the night	29	21
1528	Down for the night, said she's down for the night	40	21
1542	hosed down daily with a gagging perfume. 	12	22
1555	Who will survive in America?	26	22
1566	Cus how we on it all the time (uh)	10	23
1571	 Thats old news	15	23
1579	If you fall on the concrete thats your asphalt	23	23
1589	Yo what you say when your people get out of jail huh?	33	23
1599	(Charlie Wilson - Chorus)	44	23
1610	Now im in the louvre looking for fossils	54	23
1616	End up at 'mani giorgi and service from sergio pacini	61	23
1621	I got style ask julie she heard in may	67	23
1626	Everyone of his majesty's swim partys is pageantrys	72	23
1635	(Beyonce)	79	23
1640	(Charlie Wilson - Chorus)	84	23
1651	Don't say you will then play you will	5	24
1663	Don't say you will	17	24
1672	You will, you will	26	24
1678	He said his daughter got a brand new report card, card	2	25
1690	Where did I go wrong?	14	25
1700	My god-sister getting married by the lake	25	25
1714	Ooh	38	25
1729	Somewhere far along this road, he lost his soul	1	26
1742	So you walk around like you don't know me	13	26
1755	Homie I don't know, she's hot and cold	26	26
1767	Talkin', talkin', talkin', talk	38	26
1778	I hear 'em talk the coldest story ever told	49	26
1786	Holding on to what I believe in	3	27
1795	I'm a problem	12	27
1804	I know this world is changing	21	27
1813	So amazing, so amazing	30	27
1823	I'm amazing born on a full moon	40	27
1832	So amazing, it's amazing	49	27
1842	Never know enough, til it's over, love	5	28
1850	Keeping ya love locked down, ya love locked down	13	28
1854	I can't keep my cool, so I keep it true	17	28
1859	You lose, you lose	23	28
1866	Keepin ya love locked down, ya love locked down	29	28
1872	But I'm not lovin you, way I wanted to	35	28
1879	I been down this road, too many times before	42	28
1885	(She really thought that)	0	29
1892	Baby, don't worry about it	7	29
1900	'Cause I could make it good, I could make it hood	15	29
1909	Anyway they don't know you like I do (They don't know)	24	29
1917	All the talk in the world lost in the world till you finally let that thing go	32	29
1927	Lady, don't even think about it	41	29
1934	They'll never know you	49	29
1943	That'd turn my life to Stephen King's?	3	30
1950	OK, OK, OK	11	30
1958	Just looking at your history	19	30
1967	OK, OK, OK, OK	27	30
1974	You moving like a RoboCop	35	30
1982	Now, now that you know, now, now that you know	43	30
1990	You spoiled little LA girl	51	30
1998	Or you are smoking	59	30
2006	Oh, you need to stop it now	67	30
2014	See I know my destination but I'm just not there	7	31
2022	Life's just not fair	15	31
2029	So I hopped in the cab and I paid my fare	22	31
2037	I'm just not there	30	31
2044	When you decide to break the rules?	4	32
2052	Real bad news, real bad news	12	32
2059	Oh you just gon' keep it like you never knew	19	32
2067	But not quite 'cause you cut off my light	4	33
1061	I mean this shit is fucking ridiculous	60	16
1068	CNN said I'd be dead by twenty-one	69	16
1078	Claiming they was with me when they know they really wasn't	77	16
1087	Them kilo's came we gave you Bobby Brown jaw	86	16
1096	Middle finger in the air if you don't really care	95	16
1105	The new commandment, thou shall not hate kid	104	16
1115	G-A-T in the Pathfinder	114	16
1124	You know that shit is fucking ridiculous	123	16
1133	It's like that sometimes this shit ridiculous	132	16
1141	The way you look should be a sin, you my "sin-sation"	3	17
1159	What we argue anyway, oh I forgot its summertime	19	17
1172	Maybe I should call Mase so that he could pray for us	32	17
1187	Stretch limousine, sippin rosé all alone	48	17
1199	New Mercedes sedan, they’ll export	62	17
1209	Still a real nigga, red Coogi sweater, dice roller	71	17
1226	You been puttin' up with my shit just way too long	14	18
1240	And still be addicted to them hoodrats	26	18
1251	Run away from me baby, run away (Look at ya)	38	18
1267	You can't blame 'em, they ain't never seen Versace sofas	53	18
1278	'Cause you can blame me for everything	65	18
1285	Baby I got a plan, run away fast as you can	75	18
1293	I'm so gifted at findin' what I don't like the most	83	18
1302	I'm so gifted at findin' what I don't like the most	90	18
1311	Turn the corners in a foreign car	2	19
1322	No more drugs for me, pussy and religion is all I need	14	19
1334	Tell me when you think we crossed the line	29	19
1342	She wanna role play, till I roll over	36	19
1350	When you never fuck with the lights on?	43	19
1359	Tell me when you think we crossed the line	51	19
1369	Let's call out names, names, I hate you more	3	20
1379	Let's call her names, names, for sure	12	20
1387	Let's call out names, names, I hate you more	20	20
1397	What the hell was I supposed to do?	26	20
1408	Y'all got dirt on each other like mud wrestlers	41	20
1420	For the pain and it poured every time when it rained	50	20
1434	Let's call out names, names, I hate you more	67	20
1449	Baby you done took this shit to another mother fucking level	83	20
1460	(Yeezy taught me)	94	20
1472	What the fuck happened?	105	20
1484	That's right, that's right, yo yo babe, yo yo this is the best birthday ever	117	20
1495	I'm new in the city, and I'm down for the night	7	21
1505	You're my lies, you're my truth	17	21
1515	I’m lost in the world, been down my whole life	28	21
1527	I'm new in the city, and I'm down for the night	39	21
1540	Two long centuries buried in the musty vault, 	11	22
1554	Who will survive in America?	25	22
1562	(Beyonce - Hook)	6	23
1573	Ha?	17	23
1580	If you pass on that Kane beat, thats your last thought	24	23
1590	(Beyonce)	34	23
1598	Cus i know shes looking down right now	43	23
1609	I admit my first watch was a fossil	53	23
1615	N shortie watch barneys? we head the barneys?	60	23
1620	Cus yall raps aint got no vertebrae	66	23
1625	Imagine the direction of this immaculate conception	71	23
1634	My life is like a childs solutions become reality	78	23
1639	Where you trying to go? you better act like you can see me know	83	23
1650	Hey, hey, hey, hey	4	24
1664	You will, you will	18	24
1673	Hey, hey, hey, hey	27	24
1679	And all I got was a brand new sports car, oh	3	25
1691	And my head keeps spinning	15	25
1697	I've seen it, I've seen it before	21	25
1706	Can't stop having these visions, I gotta get with it	31	25
1720	No, no, no, no	44	25
1728	In the night, I hear 'em talk the coldest story ever told	0	26
1743	You got a new friend, well I got homies	14	26
1756	I won't stop, I won't mess my groove up	27	26
1766	Oh, how could you be so heartless?	37	26
1779	Somewhere far along this road, he lost his soul	50	26
1787	No matter what you'll never take that from me	4	27
1796	That will never ever be solved	13	27
1805	Never gave in never gave up	22	27
1814	So amazing, it's amazing	31	27
1824	I was bred to get it in, no spoon	41	27
1833	So amazing, so amazing	50	27
1843	Til we lose control, system overload	6	28
1851	Now keep ya love locked down, ya love locked down	14	28
1863	No more wastin' time, you can't wait for life	26	28
1875	If I be with you, baby I'm confused	38	28
1888	Yeah, that's good, paranoid	3	29
1895	You worry 'bout the wrong things, the wrong things	10	29
1903	Make you touch the sky, hey maybe so	18	29
1912	They'll never know you	27	29
1922	Lady, we'll go out to the floor)	35	29
1929	You worry 'bout the wrong thing, the wrong thing	44	29
1947	OK, OK, OK, OK	8	30
1963	Keep it up enough to keep it going on	24	30
1979	Ain't used to being told stop	40	30
1996	Oh you're kidding me	57	30
2011	Seems like street lights, glowing	4	31
2026	See I know my destination but I'm just not there	19	31
2042	Didn't you know I was waiting on you?	2	32
2057	Oh you just gon' keep him like you never knew	17	32
2072	But this is farewell, yeah	9	33
2088	And the night is young, the drinks is cold	25	33
2102	But this is farewell, yeah	39	33
2119	On lonely nights I start to fade	1	34
1100	I wear my pride on my sleeve like a bracelet	99	16
1109	I met this girl on Valentine's Day, fucked her in May	108	16
1119	Ayo, champagne wishes and thirty white bitches	118	16
1136	It's like that sometimes, man ridiculous	135	16
1151	She putting on her make up, she casually allure	12	17
1164	We ain't married but tonight I need some consummation	25	17
1183	Cat got your tongue?	45	17
1198	Had cyphers with yeezy before his mouth wired	53	17
1208	Gettin’ 2Pac money twice over	70	17
1225	Look at ya, look at ya	6	18
1237	See I could have me a good girl	25	18
1248	Baby I got a plan, run away fast as you can	36	18
1260	Ichabod Crane with that motherfucking top off	48	18
1270	I'm just young, rich, and tasteless, P	59	18
1279	If one day you just up and leave	67	18
1286	I'm so gifted at findin' what I don't like the most	70	18
1295	You been puttin' up with my shit just way too long	85	18
1306	I'm so gifted at findin' what I don't like the most	94	18
1316	Livin' life like we won the sweepstakes, what	9	19
1332	You could hear the loudest screams	18	19
1355	Fuck wit' the lights, fuck wit' the, wit' the lights on	47	19
1368	Let's play the blame game, I love you more	1	20
1382	Fuck arguing and harvesting the feelings, yo, I'd rather be by my fucking self	15	20
1392	I know you ain't getting this type of dick from that local dude	27	20
1404	Now you noticeable and can't nobody get control of you	35	20
1423	Anything but us is who we are	55	20
1433	Let's play the blame game for sure	66	20
1440	I can't love you this much	73	20
1447	Oh my God	82	20
1453	(Yeezy taught me)	87	20
1458	Look at you mother fucking butt ass naked	91	20
1465	And I thank you, I thank you, my dick thanks you!	98	20
1470	I've never even seen this part of pussy town before	103	20
1476	And when I see that nigga, I'mma thank him	109	20
1482	I saw this shit, I saw it, Twista had this shit on in the Source	115	20
1493	I'm lost in the world, I'm down on my mind	6	21
1503	You're my freedom, you're my jail	16	21
1508	You're my stress and you're my masseuse	20	21
1513	If we die in each others arms, still get laid, yeah	25	21
1519	Who will survive in America?	31	21
1525	Down for the night, said she's down for the night	37	21
1530	And the new word to have is revolution. 	1	22
1537	The signs of Truth were tattooed across our open ended vagina. 	9	22
1543	whose legs were then spread around the world 	14	22
1549	All I want is a good home and a wife	20	22
1558	(I know you see me now right now)	2	23
1565	But i dont really care (yeah) 	9	23
1570	Im Socrates but my skin more chocolaty	14	23
1577	Immatue adult insecure asshole (What else)	22	23
1588	Ask if imma be there soon, and tell him i said hell no.	32	23
1600	(I know you see me now right now)	46	23
1611	And the whips on this ????? is so uncamrie	56	23
1619	I know the flow just hit a hella-fied vertical	63	23
1631	Rap god, Greek mythology	75	23
1644	I know you see me now right now (Right now)	88	23
1653	Can't waste no time, she might leave soon	8	24
1659	One day you will, I pray you will	13	24
1661	Take off your cool, then lose control	15	24
1670	Hey, hey, hey, hey	24	24
1676	My friend showed me pictures of his kids	0	25
1681	And my head keeps spinning	7	25
1687	But I couldn't hear him all the way in first class	11	25
1695	I can't stop having these visions, I gotta get with it	19	25
1703	Welcome to heartbreak	29	25
1712	Ooh	36	25
1718	No, no, no, no, I can't stop	42	25
1726	Ooh, ooh	51	25
1731	How could you be so cold as the winter wind when it breeze, yo?	5	26
1740	Hey yo, I did some things but that's the old me	11	26
1744	In the night, I hear 'em talk the coldest story ever told	16	26
1749	I decided we weren't gon' speak so	23	26
1758	You run and tell your friends that you're leaving me	29	26
1762	Somewhere far along this road, he lost his soul	34	26
1770	They don't know 'bout me and you	41	26
1775	I could just leave it wrong	46	26
1783	It's amazing, I'm the reason	0	27
1792	So amazing, it's amazing	9	27
1802	So amazing, so amazing	18	27
1810	So amazing, it's amazing	27	27
1820	We make history, strive off victory	37	27
1829	So amazing, so amazing	46	27
1839	I'm in love with you, but the vibe is wrong	2	28
1847	So everybody else don't have to know	11	28
1853	I'm not lovin you, the way I wanted to	16	28
1857	How many times did I tell you fo' it finally got through	22	28
1864	So keep ya love locked down, ya love locked down	28	28
1870	Know I said I'm through, but got love for you	34	28
1877	Where I wanna go, I don't need you	41	28
1884	Now keep ya love locked down, you lose, you lose, you lose	47	28
1889	Don't be so	6	29
1899	A little time out might do you good, might do us good before we be done for good	14	29
1908	Lady, we'll go out to the floor)	23	29
1916	Yea you heard about all the word of mouth, don't worry about what we can't control	31	29
1924	Baby, don't worry about it	40	29
1933	Anyway they don't know you like I do	48	29
1941	Who knew she was a drama queen	2	30
1949	You never stop it now	10	30
1102	My phrases amazes the faces in places	101	16
1112	I keep bitches by the twos nigga, Noah's Ark	111	16
1121	Fucking ridiculous	120	16
1130	One hand in the air if you don't really care	129	16
1138	I love it though	0	17
1149	And that magic hour I seen good Christians	9	17
1163	I mean a nigga did a lot of waiting	24	17
1177	Dior Homme not Dior homie	38	17
1188	Cherry red chariot excess is just my character	50	17
1201	Never tired of ballin’ so it’s on to the next sport	61	17
1217	Look at ya, look at ya	5	18
1238	And I just blame everything on you	27	18
1249	Run away from me baby, run away	37	18
1261	Split and go where? Back to wearing knockoffs, haha	49	18
1272	Never was much of a romantic	60	18
1292	Let's have a toast for the jerkoffs, that'll never take work off	74	18
1309	Turn the camera on, she a born star	1	19
1319	Have you lost your mind?	12	19
1328	Tell me what I gotta do to be that guy	20	19
1333	Have you lost your mind?	28	19
1340	We'll have a mansion and some fly maids	34	19
1349	Snatched the dress off her back and told her, “Get away”	41	19
1353	Fuck wit' the lights, fuck wit' the, wit' the lights on	45	19
1366	And got divorced by the end of the night	57	19
1400	Stick around, some real feelings might surface	23	20
1411	That ain't right girl	43	20
1419	Let's play the blame game for sure	53	20
1432	Lack of visual empathy equates the meaning of L-O-V-E	63	20
1437	I can't love you this much	70	20
1446	You ain't pick up but your phone accidentally called me back	79	20
1454	You never used to talk dirty, but now you goddamn disgusting	88	20
1466	How did you learn, how'd, how did your pussy game come up?	99	20
1478	That's how good I feel about this nigga, oh	111	20
1488	I'm up in the woods, I'm down on my mind	0	21
1498	I'm new in the city, and I'm down for the night	11	21
1509	Ma ma se, ma ma se, ma ma ku sa	21	21
1520	Who will survive in America?	32	21
1534	The youngsters who were programmed to continue 	5	22
1546	that preceded the bubbling bubbling bubbling bubbling bubbling 	17	22
1552	Who will survive in America?	23	22
1561	I know you see me now right now	5	23
1574	I swear my whole collection so cruise	18	23
1584	When you getting money they be all up on your ass yo	28	23
1595	And i swear its going down right now	40	23
1606	(Kanye - Verse 2)	50	23
1614	Stay jordan fresh suites and ferraris coupes	59	23
1623	FIrst of all we all know the beats is	69	23
1629	All my hommies GD's but i am lord	74	23
1641	I know you see me now right now,	85	23
1654	Mrs. So Fly crash lands in my room	7	24
1658	Don't say you will	12	24
1669	I admit, I still fantasize about you, about you	23	24
1682	(Ooh, ooh, ooh)	6	25
1696	And my head keeps spinning	18	25
1702	I had to leave before they even cut the cake	28	25
1710	(Ooh, ooh, ooh)	35	25
1717	No, no, no, no, I can't stop	41	25
1723	Ooh, ooh, ooh	50	25
1730	Oh, how could you be so heartless?	4	26
1738	Hey yo, I know of some things that you ain't told me	10	26
1745	But in the end, it's still so lonely	15	26
1750	You bringin' out a side of me that I don't know	22	26
1757	'Cause I already know how this thing go	28	26
1763	In the night, I hear 'em talk the coldest story ever told	33	26
1769	They don't know what we been through	40	26
1774	I know you can't believe	45	26
1782	Oh, how could you be so heartless?	53	26
1791	So amazing, so amazing	8	27
1800	So amazing, it's amazing	17	27
1809	So amazing, so amazing	26	27
1819	Victorious, yeah we warriors	36	27
1828	Look what he's been through, he deserves an applause"	45	27
1838	What I had to do, had to run from you	1	28
1848	So I keep it low, keep a secret code	10	28
1865	We're just racin' time, where's the finish line	27	28
1878	I'm not lovin you, way I wanted to	40	28
1891	Don't be so paranoid	5	29
1907	(Baby, don't worry about it	22	29
1925	They'll never know you	39	29
1940	Straight up out a movie scene	1	30
1957	When did you become a RoboCop?	17	30
1973	Drop it, drop it	33	30
1988	You spoiled little LA girl	49	30
2004	You need to stop it now	65	30
2021	I'm just not there in the streets	13	31
2036	In the streets	28	31
2050	When you decide to break the rules?	10	32
2065	I'm cold (Yeah, yeah)	2	33
2080	And that you know, that you know	17	33
2095	And that's one thing that you know, that you know	32	33
2110	Now tell everybody that you know	47	33
2127	Her love is all that I can see	9	34
2136	If spring can take the snow away	18	34
2145	Yes I did, so I packed it up and brought it back to the crib	2	37
2155	When I shop so much I can speak Italian	12	37
2164	And I don't know what he did for dough	21	37
2173	So if you gon' do it, do it just like this	30	37
2182	Last week, I paid a visit to the institute	39	37
2191	Did you realize	48	37
2200	Stand up, stand up, here he comes	57	37
2214	I need you to hurry up now 'cause I can't wait much longer	3	38
1108	I am nothing like them niggas baby those are marks	107	16
1118	Tiger Woods don't make me grab iron	117	16
1127	Fucking ridiculous	126	16
1147	I mean a nigga did a lot of waiting	6	17
1161	Uh put your hands to the constellations	20	17
1174	I hit the Jamaican spot, at the bar, take a seat	33	17
1185	Lookin' at my wrist, itta turn yo ass to stone	47	17
1196	When it come to tools fool I’m a Pep Boy	59	17
1207	God bless the man I put this ice over	69	17
1213	Look at ya, look at ya	1	18
1222	Look at ya, look at ya (Ladies and gentlemen)	10	18
1229	Let's have a toast for the scumbags, every one of them that I know	18	18
1236	But I'm not too good at that shit	24	18
1258	This is my plan, run away as fast as you can	40	18
1276	Plenty hoes in the balla-nigga matrix	57	18
1300	Cue the pianos	76	18
1310	Call the coroners, do the CPR	3	19
1321	Tell me when you think we crossed the line	13	19
1329	It's kinda crazy that's all considered the same thing	23	19
1339	We'll have a big-ass crib and a long yard	33	19
1347	What party is we goin' to on Oscar day	38	19
1358	Have you lost your mind?	50	19
1364	Honeymoon on the dance floor	56	19
1371	I'll call you bitch for short	5	20
1376	But I love to play the blame game, I love you more	9	20
1391	You weren't perfect but you made life worth it	22	20
1403	You should be grateful a nigga like me ever noticed you	34	20
1412	You always said, "Yeezy, I ain't your right girl	45	20
1424	Disguising ourselves as secret lovers	56	20
1441	I can't love you this much	75	20
1450	Now a neighborhood nigga like me ain't supposed to be gettin' no pussy like this	84	20
1461	This is some Cirque du Soleil pussy now, shit	96	20
1475	(Yeezy reupholstered my pussy)	107	20
1487	(Yeezy taught me)	119	20
1499	Down for the night, said she's down for the night	12	21
1514	I’m up in the woods, been down all my life (Run from the lights, run from the night, run for your life)	26	21
1526	I'm lost in the world, I'm down on my mind	38	21
1531	People don't even want to hear the preacher 	2	22
1539	We learned to our amazement untold tale of scandal. 	10	22
1556	Charlie Wilson - Chorus)	0	23
1567	So imma get my money lets go	11	23
1581	Get what you ask for i swear thats your ass thought	25	23
1591	My niggers is home, i guess i got everything	35	23
1597	And you see me looking up	42	23
1603	I know you see me now right now (Right now)	48	23
1608	Shortie got a man watch, wrist look colossal	52	23
1618	Lamborghini the chain blow off the vertigo	62	23
1627	Like a mix between fergie and jeez	70	23
1636	Now go get my throne cus i dont wanna stop	80	23
1647	Now I'm awake, sleepless in you	1	24
1656	Hey, hey, hey, hey	11	24
1667	I pray you will	21	24
1680	And my head keeps spinning	4	25
1693	(Ooh, ooh, ooh)	17	25
1701	Bad enough that I showed up late	27	25
1711	I can't stop having these visions, I gotta get with it	34	25
1716	No, no, I can't stop	40	25
1725	I gotta get with it	49	25
1733	How could you be so heartless?	3	26
1741	I mean after all the things we got into	9	26
1754	Why does she be so mad at me fo'?	25	26
1768	Baby, let's just knock it off	39	26
1780	To a woman so heartless	51	26
1788	My reign is as far as your eyes can see, it's amazing	5	27
1797	No matter what you'll never take that from me	14	27
1806	I'm the only thing I'm afraid of	23	27
1815	So amazing, so amazing	32	27
1825	That's why I'm so goose summertime no juice	42	27
1834	So amazing, it's amazing	51	27
1844	Screamin no, no, no, no, no	7	28
1858	I got somethin' to lose, so I gotta move	18	28
1871	I met no one new, I got no one new	33	28
1882	Keepin ya love locked down, ya love locked down	45	28
1897	You worry 'bout the wrong things, the wrong things	12	29
1905	You wanna kill the vibe on another night	20	29
1914	So now you're here with me, show some gratitude leave the attitude way back at home	29	29
1921	They'll never know you (Never know)	37	29
1931	Anyway they don't know you like I do	46	29
1938	They'll never know you	53	29
1946	She never let it go	7	30
1954	'Cause I don't want no RoboCop	15	30
1962	Shorty kind of crazy but it turn me on	23	30
1970	You will never stop it now	31	30
1978	Bitch I'm cold, I	39	30
1986	OK, uh, uh	47	30
1994	You spoiled little LA girl	55	30
2001	Your first good one in a while	63	30
2010	That be known let me know, let me	3	31
2017	See I know my destination, but I'm just not there in the streets	11	31
2025	So I hopped in the cab and I paid my fare	18	31
2032	Happen to be just like moments, passing in front of me	25	31
2040	Didn't you know I was waiting on you?	0	32
2047	I played it off and act like I already knew	7	32
2055	Oh you just gon' keep it like you never knew	15	32
2062	Channel crew	22	32
2070	Oh, how did you get there?	7	33
2077	After tonight, there will be no return	14	33
2085	You do you and I'm just gone do mine	22	33
2093	Tell everybody that you know	30	33
2100	Oh but how did you get there?	37	33
1137	Life can be sometimes ridiculous	136	16
1145	May the Lord forgive us, may the gods be with us	8	17
1150	Text message break up, the casualty of tour	13	17
1156	The way you look should be a sin, you my "sin-sation"	21	17
1162	When the sun go down its the magic hour (The magic hour)	26	17
1169	I ordered you jerk, she said "you are what you eat"	34	17
1176	The crib scarface couldn't be more Tony	39	17
1181	Haven't said a word, haven't said a word	43	17
1190	All black tux, nigga shoes lavender	51	17
1192	Hater talking never made me mad	56	17
1200	So many cars DMV thought it was mail fraud	63	17
1216	Look at ya, look at ya	4	18
1224	And I always find, yeah I always find somethin' wrong	13	18
1232	She find pictures in my email	21	18
1243	I'm so gifted at findin' what I don't like the most	31	18
1250	Run away from me baby, run away	41	18
1259	Now pick your next move, you could leave or live with it	47	18
1269	Invisibly set, the Rolex is faceless	58	18
1277	And I don't know how I'mma manage	66	18
1284	Let's have a toast for the scumbags, every one of them that I know	73	18
1289	So I think it's time for us to have a toast	80	18
1298	You been puttin' up with my shit just way too long	89	18
1305	You been puttin' up with my shit just way too long	93	18
1314	Make a nun cum, make her cremate	7	19
1320	Grab my hand and baby we'll live a hell of a life	15	19
1327	Or do anal, or do a gangbang	22	19
1336	One day I'm gon' marry a porn star	32	19
1341	Nothin' to hide, we both screwed the bridesmaids	35	19
1348	La Renta, they wouldn't rent her, they couldn't take the shame	40	19
1352	Fuck wit' the lights, fuck wit' the, wit' the lights on	44	19
1357	Fuck wit' the lights, fuck wit' the, wit' the lights on	49	19
1362	And got married in a bathroom	55	19
1372	As a last resort, and my first result	6	20
1377	Let's call her names, names, I hate you more	11	20
1381	I took a piss and dismiss it like fuck it and I went and found somebody else	14	20
1385	Let's play the blame game for sure	19	20
1390	Gripping you up, fucking and choking you	25	20
1396	Every time I hear bout other niggas is strokin' you	31	20
1402	I'm calling your brother's phone like what was I supposed to do?	37	20
1413	You'll probably find one of them "I like art" type girls"	46	20
1422	We've become public enemies	57	20
1430	Hatred and attitude tear us entirely" - Chloe Mitchell	64	20
1438	I can't love you this much	71	20
1443	And I heard the whole thing	80	20
1452	Who taught you how to get sexy for a nigga?	86	20
1457	(Yeezy taught me)	90	20
1463	You done went all porno on a nigga, okay? And I, and I love it	97	20
1468	I was in there like, "Oh, shit, I never been here before"	102	20
1474	You know what, I got to thank Yeezy	108	20
1480	Even with the bezel? This is the motherfucker I wanted	114	20
1486	Yeezy taught you well, Yeezy taught you well	120	20
1490	I'm up in the woods, I'm down on my mind	4	21
1497	Down the time	9	21
1502	You're my now, you're my forever	15	21
1507	You're my questions, you're my proof	19	21
1512	If we die in each others arms, still get laid in our afterlife	24	21
1517	Down for the night, down for the night	30	21
1523	I'm new in the city, and I'm down for the night	36	21
1529	Us living as we do upside down. 	0	22
1536	America stripped for bed and we had not all yet closed our eyes.	8	22
1541	America was a bastard the illegitimate daughter of the mother country 	13	22
1548	What does Webster say about soul?	19	22
1557	I know you see me now right now,	1	23
1564	Well maybe yall do or maybe yall dont	8	23
1569	Now imma need you to kill the hypocrisy, this an aristocracy	13	23
1575	That nigger crazy i told you	21	23
1582	So you take your last hoe and rope up all the cash flow	27	23
1585	When you getting money cuts dont matter cus a nigger past go	29	23
1592	No women in the crowd, screaming and its loud	38	23
1596	I know one thing my momma would be proud	41	23
1604	I know you see me now right now (Right now, right now)	47	23
1607	Poor the champagne let your watch show	51	23
1617	The world of rollies and everyones family	58	23
1628	Cannon ball of the diving board when i am bored	73	23
1633	Heres somthing that you can use an analogy	77	23
1637	Till its time to go when its time to go	82	23
1646	Why would she make calls out the blue?	0	24
1649	Don't say you will unless you will	3	24
1665	Don't say you will if you will	20	24
1674	Please say you will for real	28	24
1684	I can't stop having these visions, I gotta get with it	8	25
1688	Chased the good life my whole life long	12	25
1694	(Ooh, ooh, ooh)	20	25
1699	I've seen it, I've seen it before	24	25
1713	Ooh	37	25
1719	Can't stop, I can't stop, I can't stop	43	25
1724	Ooh	52	25
1732	Just remember that you talkin' to me, yo	6	26
1739	And now you wanna get me back and you gon' show me	12	26
1746	Somewhere far along this road, he lost his soul	17	26
1753	Why we up 3 AM on the phone?	24	26
1765	How could you be so heartless?	36	26
1781	How could you be so heartless?	52	26
1799	So amazing, so amazing	16	27
1818	If I ain't on my grind then what you call that?	35	27
1221	Look at ya, look at ya (Ladies and gentlemen)	12	18
1230	Baby I got a plan, run away fast as you can	20	18
1241	You been puttin' up with my shit just way too long	30	18
1245	Let's have a toast for the jerkoffs, that'll never take work off	35	18
1252	Run away from me baby, run away (Look at ya)	42	18
1256	I, I, I, I did it, all right, alright, I admit it	46	18
1262	Knock it off, Neiman's, shop it off	50	18
1265	You should leave if you can't accept the basics	56	18
1271	I could never take the intimacy	61	18
1281	You been puttin' up with my shit just way too long	69	18
1287	I'm so gifted at findin' what I don't like the most	79	18
1291	You been puttin' up with my shit just way too long	82	18
1296	I'm so gifted at findin' what I don't like the most	86	18
1303	So I think it's time for us to have a toast	91	18
1313	Her bittersweet taste made his gold teeth ache	5	19
1338	Runaway slaves all on a chain gang	26	19
1354	Fuck wit' the lights, fuck wit' the, wit' the lights on	46	19
1365	That's one hell of a life	58	19
1374	You call me motherfucker for long	7	20
1384	Let's play the blame game, I love you more	18	20
1394	'Cause I definitely be having mine	29	20
1401	One AM and can't nobody get a hold of you	36	20
1410	You getting blackmailed for that white girl	44	20
1418	Let's play the blame game, I love you more	52	20
1429	With so much of everything, how do we leave with nothing?	62	20
1436	I can't love you this much	69	20
1448	And when the phone called it just ring and ring	78	20
1459	With them motherfucking Jimmy Choos on	92	20
1471	It's like you got this shit re-upholstered or some shit	104	20
1483	I remember, Twista had this motherfucker on in the Source	116	20
1492	I'm building a still to slow down the time	5	21
1504	I'm lost in the world, I'm down on my mind	10	21
1524	Who will survive in America?	33	21
1538	Paul Revere and Nat Turner as the good guys. 	7	22
1547	in the mother country's crotch	18	22
1563	I got my suit and tie and i dont know if yall know	7	23
1576	I might walk in nobu, with no shoes	19	23
1587	Right next to lucifer, tell him i said hello	31	23
1594	Doing things not allowed	39	23
1612	Attention to detail is so uncanny	55	23
1643	(I know you see me now right now)	86	23
1657	Don't say you will	10	24
1662	Hey, hey, hey, hey	16	24
1671	Don' say you will	25	24
1677	And all I could show him was pictures of my cribs	1	25
1689	Look back on my life and my life gone	13	25
1705	And my head keeps spinning	30	25
1721	No, no, no, no	46	25
1736	You need to watch the way you talkin' to me, yo	7	26
1748	How could you be so heartless?	19	26
1759	They say that they don't see what you see in me	30	26
1771	So I got something new to see	42	26
1776	And you can't make it right	47	26
1784	Everybody fired up this evening	1	27
1793	I'm a monster I'm a killer	10	27
1801	So amazing, it's amazing	19	27
1811	So amazing, so amazing	28	27
1821	Standing at my podium I'm trying to watch my sodium	38	27
1830	So amazing, it's amazing	47	27
1840	And that haunted me, all the way home	3	28
1849	So keep ya love locked down, ya love locked down	12	28
1862	See I had to go, see I had to move	25	28
1876	You choose, you choose	39	28
1890	Why are you so paranoid?	4	29
1906	Here's another fight, oh here we go	21	29
1923	Anyway, they don't know you like I do (They don't know)	38	29
1939	'Bout the baddest girl I ever seen	0	30
1955	You moving like a RoboCop	16	30
1971	You need to drop it now	32	30
1987	It ain't OK, OK, OK	48	30
2003	Your first good one in a while	64	30
2019	In the streets	12	31
2034	See I know my destination but I'm just not there in the streets	27	31
2048	Let me ask you, how long have you known dude?	8	32
2063	I'm cold (Yeah)	0	33
2078	After tonight, I'm taking off on the road	15	33
2086	You do you 'cause I'm just gon' be fine	23	33
2101	'Cause we were once a fairytale	38	33
2109	And I don't see you with me no more	46	33
2117	And that's one thing that you know, that you know	54	33
2125	It's four AM and I can't sleep	7	34
2134	Goodbye my friend, will I ever love again?	16	34
2143	Did you realize	0	37
2153	You don't see just how fly my style is?	10	37
2162	'Cause every summer he'd get some	19	37
2171	Everything I wanted man it seemed so serious	28	37
2180	'Cause who the kids gon' listen to, huh?	37	37
2189	Now they know they invincible	46	37
2198	This is the story of a champion	55	37
2206	Just a little somethin' show you how we live	63	37
2212	Harder, better, faster, stronger	1	38
2220	Let's get lost tonight	8	38
2227	Do anybody make real shit anymore?	15	38
2235	N-n-now that don't kill me can only make me stronger	24	38
2243	But if God put me in your plans or not	32	38
2252	Heard they do anything for a Klondike	40	38
2260	Man, I been waitin' all night now, that's how long I've been on ya	48	38
2267	Don't act like I (never) told ya	55	38
2271	I need you to hurry up now 'cause I can't wait much longer	61	38
2276	I need you right now	65	38
1233	Let's have a toast for the jerkoffs, that'll never take work off	19	18
1253	Man I'm 'bout to get crazy, just run away	39	18
1266	Every bag, every blouse, every bracelet	54	18
1280	And I always find, yeah I always find somethin' wrong	68	18
1288	You been puttin' up with my shit just way too long	78	18
1299	So I think it's time for us to have a toast	87	18
1307	So I think it's time for us to have a toast	95	18
1315	Move downtown, cop a sweet space	8	19
1323	Never in your wildest dreams	16	19
1331	Well I guess a lotta niggas do gang bang	24	19
1345	Grab my hand and baby we'll live a hell of a life	31	19
1363	I think I fell in love with a porn star	54	19
1378	Let's play the blame game for sure	10	20
1388	Let's call out names, names, for sure	21	20
1398	Lying, say I hit you, he sitting there consoling you	32	20
1409	I heard he bought some coke with my money	42	20
1417	Let's play the blame game	51	20
1428	So far from where we came	61	20
1435	Let's call out names, names, for sure	68	20
1455	And I know that you are somewhere doing your thing	77	20
1469	I was fucking parts of your pussy I'd never fucked before	101	20
1481	This motherfucker is the exact motherfucker I wanted	113	20
1494	I'm building a still to slow down the time	3	21
1518	I’m new in the city, down for the night, down for the night, down for the night	27	21
1532	spill or spiel because God's whole card has been thoroughly piqued. 	3	22
1553	Who will survive in America?	24	22
1568	(Kanye - Verse 1)	12	23
1583	She got a big booty but she couldnt drop that ass low	26	23
1602	Know matter how good it gets it will never be like before	37	23
1630	Lyricaly cant' none of yall murder Ye' 	65	23
1645	I know you see me now right now	89	23
1655	Hey, hey, hey, hey	9	24
1668	I wish this song would really come true	22	24
1683	Can't stop having these visions, I gotta get with it	5	25
1692	Can't stop having these visions, I gotta get with it	16	25
1704	But I couldn't figure out who I'd wanna take	26	25
1709	And my head keeps spinning	33	25
1715	And I, and I can't stop	39	25
1727	I can't stop having these visions	48	25
1734	To a woman so heartless	2	26
1747	To a woman so heartless	18	26
1760	You wait a couple months then you gon' see	31	26
1772	And you just gon' keep hatin' me	43	26
1789	So amazing, so amazing	6	27
1798	My reign is as far as your eyes can see, it's amazing	15	27
1807	No matter what you'll never take that from me	24	27
1816	So amazing, it's amazing	33	27
1826	Big family, small house, no rooms	43	27
1835	So amazing, so amazing	52	27
1845	I'm not lovin you, way I wanted to	8	28
1856	So I keep in mind, when I'm on my own	20	28
1868	Now You keep ya love locked down, you lose	31	28
1883	Now keep ya love locked down, ya love locked down	46	28
1896	You worry 'bout the wrong things, the wrong things	11	29
1904	All of the time, you be up in mine checking through my cell phone, baby no	19	29
1913	All of the time you wanna complain about the nights alone	28	29
1920	Anyway they don't know you like I do (Hey, to the floor, hey)	36	29
1930	You worry 'bout the wrong thing	45	29
1937	Anyway they don't know you like I do	52	29
1945	I told her there's some things she don't need to know	6	30
1953	Drop it, drop it	14	30
1961	Well, let's agree to disagree, heh	22	30
1969	OK, OK, OK	30	30
1977	Stop, drop, roll, pop	38	30
1985	OK, OK	46	30
1993	You're just an LA girl, you need to stop it now	54	30
2002	Haha that was a good one	62	30
2009	Things ain't always set in stone	2	31
2018	So I hopped in the cab and I paid my fare	10	31
2033	So I hopped in the cab and I paid my fare	26	31
2049	You played it off and act like he's brand new	9	32
2064	I'm cold (Yeah)	1	33
2079	I'm taking off on the road	16	33
2094	That I don't love you no more	31	33
2111	That you know	48	33
2128	Her love is all that I can see	10	34
2147	Everybody want it but it ain't that serious	4	37
2165	But he'd send me back to school wit' a new wardrobe	22	37
2183	They got the dropout keeping kids in the school	40	37
2201	Tell me what it takes to be number one	58	37
2213	N-n-now that don't kill me can only make me stronger	2	38
2221	You can be my black Kate Moss tonight	9	38
2228	So go ahead, go nuts, go ape shit	20	38
2238	I need you right now	28	38
2247	So how the hell could you front on me?	35	38
2262	I need you right now	50	38
2272	I know I got to be right now 'cause I can't get much wronger	62	38
2279	You know how long I've been on ya?	68	38
2288	Told ya, told ya, never told ya	76	38
2303	Our work is never over	91	38
2319	I've been waiting on this my whole life	7	39
2333	And that's what intuition is	21	39
2349	Seven o'clock, that's primetime	37	39
2362	I go for mine, I gots to shine	1	40
2372	The good life, let's go on a living spree	11	40
2385	And if they hate then let 'em hate	24	40
2401	The good life, it feel like Houston	39	40
2415	Now I, I go for mine, I got to shine	54	40
5822	Kappa step, Sigma step	39	105
1837	I'm not lovin you, way I wanted to	0	28
1852	Now keep ya love locked down, you lose	15	28
1860	I'm not lovin you, way I wanted to	24	28
1867	Now keep ya love locked down, ya love locked down	30	28
1873	Gotta keep it goin, keep the lovin gone	36	28
1880	I'm not lovin you, way I wanted to	43	28
1886	Yeah	1	29
1893	Lady, don't even think about it	8	29
1901	I can make you come, I can make you go	16	29
1910	They'll never know you (Never know)	25	29
1918	You wanna check in to the heartbreak hotel but sorry we're closed	33	29
1926	You worry 'bout the wrong things, the wrong thing	42	29
1935	Anyway they don't know you like I do	50	29
1942	Up late night like she on patrol	4	30
1951	You will never stop it now	12	30
1959	You're like the girl from Misery	20	30
1966	You will never stop it now	28	30
1975	When did you become a RoboCop	36	30
1983	Yeah, I had her before but that happened before	44	30
1991	You're just an LA girl	52	30
1999	Oh, oh you're kidding me	60	30
2007	Let me know	0	31
2015	All the street lights, glowing	8	31
2023	Seems like street lights glowing	16	31
2030	See I know my destination but I'm just not there	23	31
2038	Life's just not fair	31	31
2045	'Cause I just heard some real bad news	5	32
2053	Real bad news	13	32
2060	My face turned to stone when I heard the news	20	32
2068	But my sight is better tonight	5	33
2075	So good night, I made it out the door	12	33
2083	And that's one thing that you know, that you know	20	33
2091	Well now you know	28	33
2097	But my sight is better tonight	35	33
2106	The clouds is in my vision, look how high that I be getting	43	33
2113	And that's one thing that you know, that you know	51	33
2122	Memories made in the coldest winter	4	34
2131	Memories made in the coldest winter, winter	13	34
2140	Memories made in the coldest winter	22	34
2150	Did you realize	7	37
2159	My daddy'd say, "When you see clothes, close your eyelids"	16	37
2168	That you were a champion in their eyes?	25	37
2177	For me giving up's way harder than trying	34	37
2186	They got the CD, they got to see me	43	37
2194	Stand up, stand up, here he comes	52	37
2203	Did you realize	60	37
2210	Did you realize	67	37
2218	I need you right now	6	38
2225	Damn, they don't make 'em like this anymore	13	38
2233	That I would even show up to this fake shit	19	38
2242	If you made plans or not	31	38
2251	So we gon' do everything that Kan like	39	38
2259	I know I got to be right now, (oh) 'cause I can't get much wronger(oh)	47	38
2266	Don't act like I never told ya	54	38
2270	N-n-now that don't kill me can only make me stronger	60	38
2275	I need you right now	64	38
2283	Don't act like I never told ya	71	38
2296	Work it harder make it better	84	38
2310	More than ever, hour after	98	38
2318	What it means to find your dreams	6	39
2331	You can still be who you wish you is	19	39
2339	You ever wonder what it all really means?	27	39
2347	My name would help light up the Chicago skyline	35	39
2356	Something in your blouse got me feeling so aroused	43	39
2365	(Now throw yo' hands up in the sky	4	40
2374	The good life, it feel like Atlanta	13	40
2382	Yo, it's got to be 'cause I'm seasoned	21	40
2387	Now I, I go for mine, I got to shine	26	40
2394	Ay, (Ay), Ay, (I'm good)	33	40
2402	Ay, this is the good life (Welcome to the good life)	42	40
2409	But, but, I don't think he should (Welcome to the good life)	48	40
2417	I'mma get on this TV momma, I'mma	56	40
2426	I was splurgin' on Tryst, but when I get my card back	65	40
2433	Ain't the only girl callin' me, "Baby"	72	40
2441	Man, it's so hard not to act reckless	4	41
2448	(Oh oh oh oh oh) The drama, people suing me	11	41
2457	Uh-uh, you can't tell me nothing (Yeah)	20	41
2463	But I couldn't tell ya who decide wars	26	41
2471	Ooh, they so sensitive	34	41
2479	Uh-uh, you can't tell me nothing (Yeah)	42	41
2487	How he stay faithful in a room full of hoes?	50	41
2493	I'm in between but way more fresher	56	41
2501	Uh-uh, you can't tell me nothing (Yeah)	64	41
2510	Oh oh oh oh oh, good money made	73	41
2517	Life of a Don, lights keep glowing	4	42
2525	Turn around another plane, my passport on pivot	12	42
2543	But I'm doing pretty good as far as geniuses go	20	42
2552	Yeah, I'm so bright not shady	39	42
2565	I don't front and I don't go backwards	52	42
2573	With something crazy on my arm	61	42
2582	Driving around town looking for the best spot for the (drunk and hot girls)	6	43
2596	Please don't throw up in the car, we almost crashed	20	43
2606	The music plays, it's sweet delight	31	43
2610	Now I'm with this girl for the rest of my life, that drunk and hot girl	38	43
2615	To mess, mess with (She's sucking having game but happy as)	43	43
2623	She don't believe in shooting stars	4	44
2633	And the weather so breezy	12	44
2649	Feeling like Katrina with no F.E.M.A., like Martin with no Gina	28	44
2657	As you recall, you know I love to show off	36	44
2666	Lights, lights, lights, lights	45	44
1960	She said she ain't take it to this degree	21	30
1968	You never stop it now	29	30
1976	Somebody please make her stop	37	30
1984	You get mad when you know, so just don't ask me no more	45	30
1992	You spoiled little LA girl	53	30
2000	Oh, you're kidding me	61	30
2008	Do I still got time to grow?	1	31
2016	Happen to be just like moments, passing in front of me	9	31
2024	Happen to be just like moments passing in front of me	17	31
2031	All the street lights, glowing	24	31
2039	Life's just not fair	32	31
2046	People talk like it's old news	6	32
2054	Oh you just gon' keep another, no, you wrong	14	32
2061	What's on the news?	21	32
2069	And I might see you in my nightmare	6	33
2076	Door, door, door, door	13	33
2084	Okay, I'm back up on my grind	21	33
2092	Tell everybody, everybody that you know	29	33
2098	And I might see you in my nightmare	36	33
2107	And it's all because of you, girl we through	44	33
2115	Letting you know, tell everybody that you know	52	33
2123	Goodbye my friend, will I ever love again?	5	34
2132	Winter, oh	14	34
2141	Goodbye my friend, I won't ever love again	23	34
2151	That you were a champion in their eyes?	8	37
2160	We was sort of like Will Smith and his son	17	37
2169	I think he did, when he packed it up and brought it back to the crib	26	37
2178	Lauryn Hill said her heart was in Zion	35	37
2187	Drop gems like I dropped out of PE	44	37
2196	Tell me what it takes to be number one	53	37
2204	That you were a champion in their eyes?	61	37
2215	That you were a champion in their eyes?	68	37
2236	'Cause right now thou hast forsaken us	17	38
2246	But I know that God put you in front of me	34	38
2249	I'm trippin', I'm caught up in the moment, right?	37	38
2256	N-n-now that don't kill me (oh) can only make me stronger (oh)	45	38
2264	Since Prince was on Apollonia	52	38
2287	Don't act like I never told ya	75	38
2293	Never over, never over	81	38
2301	Do it faster makes us stronger	89	38
2308	Work it harder make it better	96	38
2316	What it means, what it means	4	39
2329	Do you even remember what the issue is?	17	39
2337	The smokescreens	25	39
2345	A psychic read my lifeline	33	39
2353	How many ladies in the house?	41	39
2363	(Now throw yo' hands up in the sky)	2	40
2380	And she got the goods, and she got that ass	19	40
2399	'Cause she feel booze like she bombed at Apollo	38	40
2414	(Now throw yo' hands up in the sky)	53	40
2422	While gettin' some brain?	61	40
2437	La, la, la, la (Yeah), wait till I get my money right	0	41
2454	La, la, la, la, wait till I get my money right	17	41
2468	(Oh oh oh oh oh) No, I already graduated	31	41
2481	Uh uh, you can't tell me nothing (Yeah)	44	41
2488	(Oh oh oh oh oh) Must be the pharaohs, he in tune with his soul	51	41
2505	La, la, la, la (Yeah), then you can't tell me nothing, right?	68	41
2519	With something crazy on my arm	6	42
2527	Talked it then he lived it, spit it then he shit it	14	42
2534	Nigga please, how you gonna say I ain't no Lo-head	22	42
2540	I'm high up on the line, you could get behind me	29	42
2549	Wha, wha, we outta here baby	36	42
2555	I'm all about my Franklins, Lincolns and Reagans	43	42
2562	Stove on my waist turn beef to patties	50	42
2571	Life of a Don, lights keep glowing	59	42
2580	These drunk, all of these drunk and hot girls	5	43
2588	She go through too much bullshit just to mess with these drunk and hot girls	12	43
2593	I don't want to drop your friends off, I just want you, you (drunk and hot girls)	17	43
2599	She go through too much bullshit just to mess with these drunk and hot girls	23	43
2605	Love, the lights are low, your eyes are bright	30	43
2611	We go through too much bullshit just to mess with these drunk and hot girls, a little sippy sippy	39	43
2614	Through too much shit (She's sucking having game but happy as)	42	43
2627	But she believe in shoes and cars	5	44
2641	As I recall, I know you love to show off	20	44
2658	But you never thought that I would take it this far	37	44
2667	Lights, lights, lights, lights	46	44
2676	Be light as Al B. or black as Chauncey	7	45
2689	But everything I'm not, made me everything I am	20	45
2705	Damn, here we go again	36	45
2721	"That's enough Mr. West, please, no more today"	52	45
2737	Uh	3	36
2755	Everything we dreamed of	21	36
2772	Okay look up now, they done stoled yo' streetness	38	36
2780	(Hustlers, that's if you're still livin', get on down)	47	36
2795	I can't study war, no, no (Uh)	9	46
2810	Y'all bridesmaids catch the garter	24	46
2826	How I'm suppose to stand out when everybody get dressed up?	40	46
2834	I spent that gas money on clothes with logos	48	46
2843	I hear people compare themselves to big a lot	57	46
2850	I can't study war, no, no (The glory)	69	46
2858	I can't study war, no, no	74	46
2873	She said "Excuse me lil homey, I know you don't know me	10	47
2881	In the nighttime her face lit up, so astounding	17	47
2890	Do you think about me now and then?	26	47
2908	Reach for the stars so if you fall, you land on a cloud	46	47
2915	I'm in home again	53	47
1972	'Cause I don't want no RoboCop	34	30
1981	Fast or slow, you can stay or can go	42	30
1989	You're just an LA girl	50	30
1997	You must be joking	58	30
2005	You need to stop it now	66	30
2013	So I hopped in the cab and I paid my fare	6	31
2020	I'm just not there	14	31
2028	Happen to be just like moments, passing in front of me	21	31
2035	I'm just not there in the streets	29	31
2043	My face turned to stone when I heard the news	3	32
2051	'Cause I just heard some real bad news	11	32
2058	While I'm waiting on a dream that'll never come true	18	32
2066	I got the right to put up a fight	3	33
2073	I got my life and it's my only one	10	33
2081	Tell every one that you know	18	33
2089	The stars is out, I'm ready to go	26	33
2096	I got the right to put up a fight	33	33
2104	I thought we were cemented, I really thought we meant it	41	33
2112	That you know, tell everybody that you know	49	33
2120	Her love's a thousand miles away	2	34
2129	Memories made in the coldest winter	11	34
2138	Can it melt away all our mistakes?	20	34
2148	Mmm hmm, that's that shit	5	37
2157	And I ain't sayin' we was from the projects	14	37
2166	(And hey, hey, hey, hey)	23	37
2175	That you were a champion in their eyes?	32	37
2184	I guess I cleaned up my act like Prince'd do	41	37
2195	This is the story of a champion	50	37
2216	I know I got to be right now 'cause I can't get much wronger	4	38
2245	You should be honored by my lateness	18	38
2257	Uh, baby, you're makin' it (harder, better, faster, stronger), oh	44	38
2280	Ugh, baby, you're makin' it  (harder, better, faster, stronger)	59	38
2295	Never over, harder, better, faster, stronger	83	38
2311	Our work is never over	99	38
2324	What it means, what it means	12	39
2340	And I wonder if you know	28	39
2357	What you about?	44	39
2368	Ay, (Ay), Ay, (Ay)	7	40
2377	Ahh (Now throw yo' hands up in the sky)	16	40
2392	I'mma put shit down)	31	40
2407	The only thing I wish, I wish a nigga would (Welcome to the good life)	46	40
2424	Whether you broke or rich you gotta get this	63	40
2438	(Oh oh oh oh oh) I had a dream I could buy my way to heaven	1	41
2453	I guess I should've forgot where I came from	16	41
2466	(Oh oh oh oh oh) But homie this is my day	29	41
2474	Let me know if it's a problem then	37	41
2495	'Cause when you try hard, that's when you die hard	58	41
2503	Uh uh, you can't tell me nothing (Yeah)	66	41
2512	Oh oh oh oh oh, good money made	75	41
2528	I don't need writers, I might bounce ideas	15	42
2536	'Cause my Dior got me more model head	23	42
2546	With something crazy on my arm	33	42
2558	I'm such a hay-vic, oops I meant havoc	47	42
2567	And you can get buried, suck my bat bitch	54	42
2576	We go through too much bullshit just to mess with these drunk and hot girls	0	43
2587	Stop talking 'bout your boyfriend since he is not me	9	43
2616	Love the dangerous necessity that people seek without regard	28	43
2630	I'm more of the trips to Florida	9	44
2642	But I never thought that you would take it this far	21	44
2659	But what do you know? (Flashing lights, lights)	38	44
2677	Remember him from Blackstreet, he was as black as the street was	8	45
2690	Damn, here we go again	21	45
2706	But everything I'm not made me everything I am	37	45
2722	Damn, here we go again	53	45
2738	Good morning	4	36
2754	Good morning, on this day we become legendary	20	36
2771	Just peep this, preachers, teach us, Jesus	37	36
2781	Get on down	48	36
2787	Goal, in my mind I can't study war, no, no	1	46
2790	I can't study war, no, no (Uh, now where the south side?)	4	46
2798	Louis Vuitton stitch, with Donatella Versace	12	46
2806	I'm pop the Barkers, I'm hood the Parkers	20	46
2813	I'm on a world tour with Common, my man	27	46
2821	I can't study war, no, no	35	46
2829	But with my ego, I can stand there in a speedo	43	46
2838	House on the hill, two doors from Tracey Ross	52	46
2846	Anyone, Big Pun, Big L, or Notorious	60	46
2849	I can't study war, no, no (Uh)	68	46
2852	I can't study war, no, no (Yeah)	71	46
2864	Yeah	0	47
2871	Do you think about me now and then?	5	47
2884	She said it felt like they walked and drove on me	20	47
2893	Do you think about me now and then?	29	47
2898	They want to rap and make soul beats just like you	38	47
2903	Now everybody got the game figured out all wrong	41	47
2907	If you don't know by now, I'm talking 'bout Chi-Town	48	47
2913	'Cause I'm comin' home again	52	47
2920	Maybe you, do you remember when?	58	47
2928	I'm in home again	63	47
2934	But everything that I felt was more bogus	5	48
2946	Let the story begin	15	48
2953	On that Diamonds remix I swore I spazzed	24	48
2991	No I.D., my mentor, and that's where the story ends	55	48
3010	Man, man I wouldn't let a moment pass	18	49
3022	So I'll just say good night to you	34	49
3032	Dream beautiful and unusual	44	49
3050	All the faces that I know	55	49
3060	But we don't love no more	15	50
3071	Bittersweet	27	50
5939	All these fancy things	26	110
1980	So I could never be your robot	41	30
1995	You're just an LA girl, you need to stop it now	56	30
2012	Happen to be just like moments passing in front of me	5	31
2027	All the street lights, glowing	20	31
2041	Waiting on a dream that'll never come true	1	32
2056	Oh you just gon' keep another love for you	16	32
2071	'Cause we were once a fairytale	8	33
2087	Okay I got you out my mind	24	33
2103	Baby girl I'm finished, I thought we were committed	40	33
2118	On lonely nights I start to fade	0	34
2126	It's four AM and I can't sleep	8	34
2135	Goodbye my friend, will I ever love again?	17	34
2144	That you were a champion in their eyes?	1	37
2154	I don't see why I need a stylist	11	37
2163	Brand new hare-brained scheme to get rich from	20	37
2172	Mmm hmm, that's that shit	29	37
2181	I guess me if it isn't you	38	37
2190	(Hey, hey, hey)	47	37
2199	Runners on your mark and they pop the guns	56	37
2207	Everybody want it but it ain't that serious	64	37
2222	Play secretary, I'm the boss tonight	10	38
2229	Especially in my Pastelle, or my Bape shit	21	38
2244	I'm trippin', this drink got me sayin' a lot	33	38
2254	And she'll do anything for the limelight	42	38
2269	Don't act like I (never) told ya	57	38
2282	Since OJ had Isotoners	70	38
2297	Do it faster makes us stronger	85	38
2312	Find your dreams come true	0	39
2325	And I wonder if you know	13	39
2341	What it means, what it means	29	39
2354	On that independent shit	45	39
2367	I'mma put shit down)	6	40
2376	It feel like N.Y., summertime Chi	15	40
2391	I'mma get on this TV momma, I'mma	30	40
2398	The good life, so keep it comin' with the bottles	37	40
2406	Like I'm new in the hood	45	40
2412	And watch the money pile up, the good life"	51	40
2420	Ay, (Ay), Ay, (I'm good)	59	40
2429	Before I had it, I closed my eyes and imagined the good life	68	40
2436	Hey, hey, ooh I'm good	75	40
2444	(Oh oh oh oh oh) I feel the pressure, under more scrutiny	7	41
2452	I ain't one of the Cosby's, I ain't go to Hillman	14	41
2469	And you can live through anything if Magic made it	32	41
2484	(Oh oh oh oh oh) Let the champagne splash	45	41
2497	When they reminisce over you, my God	60	41
2513	It's what you all been waiting for ain't it?	0	42
2529	But only I could come up with some shit like this	16	42
2553	My teeth and my ice so white like Shady	40	42
2572	We outta here baby	57	42
2583	For in the club look at here what we got, some (drunk and hot girls)	7	43
2595	Please don't fall asleep, baby, we almost back	19	43
2601	Through too much shit (She's sucking having game but happy as)	25	43
2607	Don't tell me, you sing, you about to get a deal, you (drunk and hot girls)	34	43
2613	We go (She's sucking having game but happy as)	41	43
2618	Flashing lights, lights	0	44
2629	You more like, "I love to start shit"	8	44
2638	Till I got flashed by the paparazzi	17	44
2646	I know it was foul, baby, aye babe, lately, you've been all on my brain	25	44
2654	But I never thought that you would take it this far	33	44
2663	Lights, lights, lights, lights	42	44
2672	Damn, here we go again	3	45
2681	You see how I creeped up	12	45
2695	People talk so much shit about me at barbershops	26	45
2703	They'd rather give me the ni-nigga-please award	34	45
2711	But I got the facts to back this	42	45
2719	Pink slip on my door 'cause I can't afford to stay	50	45
2727	Everything I'm not made me everything I am	58	45
2735	Uh	1	36
2743	Mr. Fresh, Mr. By-Himself-He's-So-Impressed	9	36
2751	Good morning	17	36
2760	From the moments of pain, look how far we done came	26	36
2768	Scared to face the world, complacent career student	34	36
2779	Every time that we hear them, good morning	46	36
2784	Get, get on down	51	36
2796	Can I talk my shit again even if I don't hit again?	10	46
2811	On nights when Ye romance, cameras flash so much	25	46
2827	So yeah, at the Grammys I went ultra Travolta	41	46
2844	You know B.I.G. and Pac, you know to get it hot	58	46
2851	I can't study war, no, no (Uh huh, now where the south side?)	70	46
2861	I can't study war, no, no	75	46
2868	And what I loved most she had so much soul	9	47
2880	And when I grew up she showed me how to go downtown	16	47
2889	Do you think about me now and then?	25	47
2895	Then you wouldn't have never hit the airport to follow your dreams	34	47
2899	Talking 'bout what we tryna do: just not new	40	47
2904	And guess when I heard that? When I was back home	44	47
2911	I'm comin' home again	49	47
2918	I'm in home again	57	47
2926	Loyee oyeee oh, loyee oyeee oh	62	47
2935	Only made me more focused, only wrote more potent	6	48
2949	If you feel the way I feel, why don't you wave your hands?	16	48
2955	It was the pride in me that was drivin' me	27	48
2963	I guess Beanie's style was more of a slam dunk	32	48
2970	Then I went and told Jay Brown	40	48
2978	A idol in my eyes, god of the game	48	48
2986	(Bridge - Mos Def)	0	49
2996	I'm just gonna say good night	9	49
3004	Every joke that they told I'd know to laugh	17	49
5943	This is family business	29	110
2074	I got the night, I'm running from the sun	11	33
2082	That I don't love you no more	19	33
2090	You always thought I was always wrong	27	33
2099	But not quite 'cause you cut off my light	34	33
2105	But now we just repent it and now we just resent it	42	33
2116	That I don't love you no more	50	33
2121	Her love's a thousand miles away	3	34
2130	Goodbye my friend, will I ever love again?	12	34
2139	Can it melt away all our mistakes?	21	34
2149	So if you gon' do it, do it just like this	6	37
2158	But every time I wanted, layaway or a deposit	15	37
2167	Did you realize	24	37
2176	When it feel like living's harder than dying	33	37
2185	If not for pleasure, then at least for the principle	42	37
2193	Runners on your mark and they pop the guns	51	37
2202	Tell me what it takes to be number one	59	37
2209	So if you gon' do it, do it just like this	66	37
2217	Man, I been waitin' all night now, that's how long I've been on ya	5	38
2224	Awesome, the Christian and Christian Dior	12	38
2255	And we'll do anything when the time's right	43	38
2273	Don't act like I (never) told ya	58	38
2294	Never over, never over	82	38
2302	More than ever, hour after	90	38
2309	Do it faster makes us stronger	97	38
2317	And I wonder if you know	5	39
2332	It ain't happen yet	20	39
2348	And that's why I'm	36	39
2358	Like we always do at this time	0	40
2369	Ay, (Ay), Ay, (I'm good)	8	40
2378	So I roll through good, y'all pop the trunk	17	40
2389	Now I, I go for mine, I got to shine	28	40
2396	Where we like the girls who ain't on TV	35	40
2404	Why I only got a problem when you in the hood? (Welcome to the good life)	44	40
2411	And if they hate then let 'em hate	50	40
2419	Ay, (Ay), Ay, (Ay)	58	40
2428	'Cause (The good life) I always had a passion for flashin'	67	40
2435	Then put yo' hands up in the sky, and let me hear you say	74	40
2443	Get arrested guess until he get the message	6	41
2450	I'm just saying how I feel man (Why were you late?)	13	41
2459	Uh uh, you can't tell me nothing (Yeah)	22	41
2465	Old folks talking 'bout back in my day	28	41
2473	And say something when you gon' end up apologin'	36	41
2482	Let that man get cash, let that man get past	46	41
2496	(Oh oh oh oh oh) Your homies looking like, "Why God?"	59	41
2504	La, la, la, la, wait till I get my money right	67	41
2522	Uh-uh-hum, and here's another hit, Barry Bonds	7	42
2545	And bow so hard until your knees hit your forehead	25	42
2559	But if you play crazy you be sleeping with daisies	46	42
2569	We outta here baby	56	42
2579	Through too much shit (She's sucking having game but happy as)	3	43
2590	Through too much shit (She's sucking having game but happy as)	14	43
2603	These drunk, all of these drunk and hot girls	27	43
2624	You only live once, do whatever you like	36	43
2639	Damn, these niggas got me	18	44
2647	And if somebody woulda told me a month ago, fronting though, yo, I wouldn't wanna know	26	44
2655	But what do I know? (Flashing lights, lights)	34	44
2664	Lights, lights, lights, lights	43	44
2673	People talking shit but when shit hit the fan	4	45
2682	You see how I played the big role in "Chicago" like Queen Latifah	13	45
2688	Everybody saying what's not for him	19	45
2693	And I'm back to tear it up	24	45
2701	So say goodbye to the N-double A-CP award	32	45
2709	Everything I'm not made me everything I am	40	45
2717	I need to talk to somebody, pastor	48	45
2725	Damn, here we go again	56	45
2733	Yeah baby	64	45
2742	Good morning	7	36
2749	Homie this shit is basic, welcome to graduation	15	36
2758	From the streets to the league, from a eighth to a key	24	36
2766	Good morniying, look at the valedictorian	32	36
2775	(Hustlers, that's if you're still livin', get on down)	41	36
2794	I can't study war, no, no (Yep)	8	46
2802	Class back in session so I upped it a grade	16	46
2818	I can't study war, no, no (The glory)	32	46
2835	The fur is Hermes, shit that you don't floss	49	46
2857	(I can't study war, no, no)	65	46
2877	Niggas come from out of town, I like to show her off	13	47
2923	Now I'm coming home again	31	47
2933	I guess big brother was thinkin' a little different	3	48
2947	Have you ever walked in the shadow of a giant?	17	48
2956	At the Grammys, I said, "I inspired me"	28	48
2969	Translate español, "No way, Jose"	39	48
2977	People never get the flowers while they can still smell 'em	47	48
2982	Number one, Young Hov, also my big brother	51	48
2989	All the faces that I know	3	49
3012	Maybe you could pull em up outta your dreams	25	49
3021	I don't wanna say goodbye to you	33	49
3031	My art will live through you	43	49
3039	I'm not sure anymore-more	53	49
3046	Bittersweet	4	50
3055	And she claim she only wit' me for the currency	9	50
3066	And you talkin' 'bout her family, her aunts and shit	21	50
3078	Never did this before, that's what the virgin says	33	50
3088	'Cause every time that I try you will question me.	43	50
3095	And it's the first time she ever spilled her soul to me	51	50
3102	I don't want you but I need you	60	50
3115	Bittersweet	70	50
2108	You think your shit don't stink but you are Mrs. Pee-Yew	45	33
2114	That I don't love you no more	53	33
2124	Memories made in the coldest winter	6	34
2133	Goodbye my friend, will I ever love again?	15	34
2142	Never again	24	34
2152	You don't see just how wild the crowd is?	9	37
2161	In the movie, I ain't talkin' 'bout the rich ones	18	37
2170	Just a little somethin' show you how we lived	27	37
2179	I wish her heart still was in rhyming	36	37
2188	They used to feel invisible	45	37
2197	Tell me what it takes to be number one	54	37
2205	Yes I did, so I packed it up and brought it back to the crib	62	37
2211	Work it, make it, do it, makes us	0	38
2219	I need you right now	7	38
2226	I ask 'cause I'm not sure	14	38
2231	New gospel, homey, Take Six, and take this, haters	23	38
2239	I know I got to be right now 'cause I can't get much wronger	26	38
2248	There's a thousand yous, there's only one of me	36	38
2263	You know how long I've been on ya?	51	38
2274	Man, I been waitin' all night now, that's how long I've been on ya	63	38
2281	Since Prince was on Apollonia	69	38
2289	Told ya, told ya, never told ya	77	38
2304	Work it harder make it better	92	38
2320	These dreams be waking me up at night	8	39
2330	You just trying to find where the tissue is	18	39
2338	The chokes and the screams	26	39
2346	Told me in my lifetime	34	39
2355	How many ladies in the house without a spouse?	42	39
2364	I go, go for mine, I gots to shine	3	40
2373	Shit, they say the best things in life are free	12	40
2381	I got to look, sorry	20	40
2386	And watch the money pile up, the good life	25	40
2393	Ay, (Ay), Ay, (Ay)	32	40
2400	It feel like VA or the Bay or Yay	41	40
2408	He probably think he could	47	40
2416	(Now throw yo' hands up in the sky	55	40
2425	Havin' money's not everything not havin' it is	64	40
2432	And now my grandmama	71	40
2440	(Oh oh oh oh oh) I told God I'd be back in a second	3	41
2447	More Louis V, my mama couldn't get through to me	10	41
2456	Excuse me, was you saying something? (Why were you late?)	19	41
2462	(Oh oh oh oh oh) I know that Jesus died for us	25	41
2470	(Oh oh oh oh oh) They say I talk with so much emphasis	33	41
2478	Excuse me, was you saying something? (Why were you late?)	41	41
2485	If he can move through the rumors, he can drive off of fumes 'cause	48	41
2491	Life is a uh, depending how you dress her	54	41
2499	La, la, la, la (Yeah), then you can't tell me nothing, right?	62	41
2508	Yeah, yeah, I'm serious, nigga, I got money)	71	41
2515	They want something new, so let's get reacquainted	2	42
2523	We outta here baby	10	42
2531	I've been a very good sport, haven't I, this year	18	42
2538	Top 5 MCs, you ain't gotta remind me	27	42
2551	And me, I'm Mr. Weezy Baby	38	42
2557	Oops, I meant have them, I'm so crazy	45	42
2568	We outta here baby	55	42
2578	We go (She's sucking having game but happy as)	2	43
2589	We go (She's sucking having game but happy as)	13	43
2602	To mess, mess with (She's sucking having game but happy as)	26	43
2608	"Ah da da da da," that's how the fuck you sound, you (drunk and hot girls), yeah	35	43
2612	We gonna through too much bullshit just to mess with these drunk and hot girls, want a little whisky?	40	43
2617	These drunk, all of these drunk and hot girls	44	43
2621	Flashing lights, lights	2	44
2626	Wood floors in the new apartment	6	44
2631	Ordered the hors d'oeuvres, views of the water	10	44
2635	She in the mirror dancing so sleazy	14	44
2643	But what do I know? (Flashing lights, lights)	22	44
2651	In my past, you on the other side of the glass of my memory's museum	30	44
2660	What do you know? (Flashing lights, lights)	39	44
2669	Damn, here we go again	0	45
2678	I never be laid back as this beat was	9	45
2686	'Cause everything I'm not made me everything I am	17	45
2691	People talking shit but when shit hit the fan	22	45
2699	Baggy clothes, Reeboks, or Adidos	30	45
2707	Damn, here we go again	38	45
2715	Do you know what it feel like when people is passin'?	46	45
2723	Everybody saying what's not for him	54	45
2731	We go, we go, we go, we go, we go	62	45
2739	Good morning	5	36
2747	Looking at every ass, cheated on every test	13	36
2756	I'm like the fly Malcolm X, buy any jeans necessary	22	36
2764	Good morniying	30	36
2773	After all of that you received this	39	36
2777	Every time that we hear them, good morning	44	36
2793	I can't study war, no, no (Now where the west side?)	7	46
2801	Off that Bacardi Limon and Corona, I'm zoning	15	46
2809	Married to the game, roc-a-chain 'stead of a wedding ring	23	46
2816	And, oh yeah, Yeezy, I did it for the glory	30	46
2824	I can't study war, no, no (Uh)	38	46
2832	The grind, the empty bottles of No-Doz	46	46
2841	When you meet me in person what do you feel like?	55	46
2856	(I can't study war, no, no)	63	46
2866	Chi-City, Chi-City	2	47
2874	I'm in home again (Ow)	7	47
2878	They like to act tough, she like to tow 'em off	14	47
2887	She said, "'Ye, keep making that keep making that platinum and gold for me"	23	47
2925	Maybe we could start again	32	47
2137	If spring can take the snow away	19	34
2146	Just a little somethin', show you how we live	3	37
2156	I don't know I just want it better for my kids	13	37
2174	Did you realize	31	37
2192	That you were a champion in their eyes?	49	37
2208	Mmm hmm, that's that shit	65	37
2223	And you don't give a fuck what they all say, right?	11	38
2230	Act like you can't tell who made this	22	38
2232	I need you to hurry up now 'cause I can't wait much longer	25	38
2237	Man, I been waitin' all night now, that's how long I've been on ya	27	38
2241	I don't know if you got a man or not	30	38
2253	Well, I'd do anything for a blonde dyke	41	38
2261	I need you right now	49	38
2268	Uh, don't act like I (never) told ya	56	38
2278	I need you right now	67	38
2286	Since OJ had Isotoners	74	38
2292	Never over, never over	80	38
2300	Work it harder make it better	88	38
2307	Our work is never over	95	38
2315	And I wonder if you know	3	39
2323	And I wonder if you know	11	39
2328	You hope that he get what he deserves, word	16	39
2336	Run back to their arms	24	39
2344	And I'm back on my grind	32	39
2352	I'm a star, how could I not shine?	40	39
2361	You wonder if you'll ever find your dreams?	48	39
2371	Won't even get pulled over in they new V	10	40
2384	50 told me, go 'head, switch the style up	23	40
2405	It feel like Philly, it feel like DC	40	40
2423	Whipped it out, she said, "I never seen Snakes on a Plane"	62	40
2439	When I awoke, I spent that on a necklace	2	41
2455	La, la, la, la (Yeah), then you can't tell me nothing, right?	18	41
2467	Class started two hours ago, oh am I late?	30	41
2475	Aight man, holla then	38	41
2489	So when he buried in a tomb full of gold	52	41
2506	(I'm serious nigga, hey) Why were you late?	69	41
2520	We outta here baby	8	42
2535	I'm insulted, you should go 'head	24	42
2539	Top 5 MCs, you gotta rewind me	28	42
2542	Life of a Don, lights keep glowing	31	42
2547	Uh-uh-hum, and here's another hit, Barry Bonds	34	42
2554	Ice in my teeth so refrigerated	41	42
2561	And I'm still cole like Keyshia's family	49	42
2566	And I don't practice and I don't lack shit	53	42
2577	She go through too much bullshit just to mess with these drunk and hot girls	1	43
2585	Stop running up my tab 'cause these drinks is not free, you drunk and hot girl	10	43
2591	To mess, mess with (She's sucking having game but happy as)	15	43
2598	We go through too much bullshit just to mess with these drunk and hot girls	22	43
2604	To where they are, the human heart is curious, above all things	29	43
2622	Flashing lights, lights	3	44
2634	Man, why can't life always be this easy?	13	44
2650	Like a flight with no visa, first class with the seat back, I still see ya	29	44
2668	Lights, lights, lights, lights	47	44
2685	Let me know if you feel it man	16	45
2697	Okay, fair enough, the streets is flaring up	28	45
2713	Man, killing's some wack shit	44	45
2729	Here we go, here, here we go	60	45
2745	You got D's, motherfucker D's, Rosie Perez	11	36
2753	Good morning	19	36
2762	Good morning	28	36
2770	They tell you read this, eat this, don't look around	36	36
2782	Get, get on down	49	36
2785	In my soul, gonna take you to the glory	0	46
2789	I can't study war, no, no (Yeah)	3	46
2797	Dog, are you fucking kidding? My hat, my shoes, my coat	11	46
2805	I'm like Gnarls Barkley meets Charles Barkley	19	46
2812	That I gotta do that Yayo dance	26	46
2820	I can't study war, no, no (I did it for the glory)	34	46
2828	Yeah, that tuxedo might have been a little guido	42	46
2837	Why I gotta ask what that Tudor cost	51	46
2845	I guess after I live I wanna be compared to B.I.G.	59	46
2860	I can't study war, no, no	67	46
2876	I met this girl when I was 3 years old	8	47
2879	And make 'em straighten up their hat cause she know they soft	15	47
2888	I'm coming home again	24	47
2914	But if you really cared for her	33	47
2922	Now I'm comin' home again	60	47
2929	I'm in home again	65	47
2939	Only thing I wanna know is why I get looked over	7	48
2943	Used to be Dame and Biggs brother	12	48
2957	But to be number one I'mma beat my brother	23	48
2965	But I had them singles though	34	48
2975	So here's a few words from ya kid brother	45	48
2984	Used to be Dame and Biggs brother	53	48
2992	You make them sunny and new	4	49
3000	Like it was just yesterday like I could relive it	12	49
3006	What do it mean when you dream that you ballin'	20	49
3015	Into real life, if you try to	26	49
3033	Wake up like everyday new to you	45	49
3041	Who is knocking at my door-door	54	49
3059	We makin' up again	14	50
3065	And she say, muhfucka, yo mama's a bitch	22	50
3074	I love you and hate you at the very same time	30	50
3083	But I've been thinkin' and it got me back to sinkin' in	38	50
3104	(I fucked up and I know it, G)	53	50
3121	I love you and hate you at the very same time	73	50
3140	Mr. West	2	52
3154	Things we see on the screen that's not ours	16	52
3165	It hurts but it may be the only way)	27	52
2234	Bow in the presence of greatness	16	38
2240	I need you right now (Me likey)	29	38
2250	'Cause it's Louis Vuitton Don night	38	38
2258	I need you to hurry up now (oh) 'cause I can't wait much longer (oh)	46	38
2265	Since OJ had Isotoners	53	38
2277	I need you right now	66	38
2284	You know how long I've been on ya?	72	38
2290	Told ya, told ya, never told ya	78	38
2298	More than ever, hour after	86	38
2305	Do it faster makes us stronger	93	38
2313	And I wonder if you know	1	39
2321	You say I think I'm never wrong	9	39
2326	What it means to find your dreams	14	39
2334	When you hop back in the car	22	39
2342	And I wonder if you know	30	39
2350	Heaven'll watch, God calling from the hotlines	38	39
2360	Trade it all for a husband and some kids	46	39
2370	Welcome to the good life, where niggas who sell D	9	40
2379	I pop the hood, Ferrari	18	40
2390	(Now throw yo' hands up in the sky	29	40
2397	'Cause they got mo' ass than the models	36	40
2413	Now I, I go for mine, I got to shine	52	40
2421	Have you ever popped champagne on a plane	60	40
2430	Better than the life I lived	69	40
2445	And what I do, act more stupidly	8	41
2451	(Oh oh oh oh oh) I guess the money should've changed him	15	41
2460	(Oh oh oh oh oh) Let up the suicide doors	23	41
2476	La, la, la, la, wait till I get my money right	39	41
2483	(Oh oh oh oh oh) He don't even stop to get gas	47	41
2490	(Oh oh oh oh oh) Treasure, what's your pleasure?	53	41
2498	La, la, la, la, wait till I get my money right	61	41
2507	(Yeah, haha	70	41
2514	What people pay paper for damn it, they can't stand it	1	42
2521	We outta here baby	9	42
2530	I done played the underdog my whole career	17	42
2537	And the flow just hit code red	26	42
2560	And my drink's still pinker than the Easter rabbit	48	42
2575	Coming in the club with that fresh shit on	60	42
2586	We go through too much bullshit just to mess with these drunk and hot girls	11	43
2592	These drunk, all of these drunk and hot girls	16	43
2620	It's out of sight, I'm feeling right, your dress is tight	32	43
2632	Straight from a page of your favorite author	11	44
2636	I get a call like, "Where are you Yeezy?"	15	44
2644	What do I know? (Flashing lights, lights)	23	44
2652	I'm just saying, hey Mona Lisa come home, you know you can't roam without Caesar	31	44
2661	Flashing lights, lights	40	44
2670	Common passed on this beat, I made it to a jam	1	45
2679	I never could see why people reach a	10	45
2687	Damn, here we go again	18	45
2692	Everything I'm not made me everything I am	23	45
2700	Can I add that he do spaz out at his shows?	31	45
2708	People talking shit but when shit hit the fan	39	45
2716	He got changed over his chains, a block off Ashland	47	45
2724	But everything I'm not made me everything I am	55	45
2732	Go go go again	63	45
2740	Good morning	6	36
2748	I guess this is my dissertation	14	36
2757	Detroit Red cleaned up	23	36
2765	Good morning	31	36
2774	Good morning	40	36
2778	(Hustlers, that's if you're still livin', get on down)	45	36
2792	I can't study war, no, no (Uh, uh)	6	46
2800	I think Hennessy, I drank, I'm gone	14	46
2808	I touched on everything	22	46
2815	It's easy, the hood love to listen to Jeezy and Weezy	29	46
2823	I can't study war, no, no	37	46
2831	The glory, the story, the chain, the polo, the night	45	46
2840	She asking about the speed boats yeah I admit we rented 'em	54	46
2859	And I'm gonna stop killing these niggas soon as the chorus hit	62	46
2872	But, my name is Windy and I like to blow trees"	11	47
2882	I told her in my heart is where she'll always be	18	47
2891	'Cause I'm coming home again	27	47
2900	It always seems like she talking 'bout me	36	47
2910	Do you think about me now and then?	50	47
2917	Now I'm coming home again	56	47
2931	Not only did I not get a chance to spit it	1	48
2944	Who was Hip Hop brother, who was No I.D. friend	13	48
2954	Sibling rivalry, only I could see	26	48
2964	I told Jay I did a song with Coldplay	36	48
2973	Shoulda talked to you like a man, shoulda told you first	42	48
2981	Heart of the City, Roc-a-Fella chain	49	48
2988	Who is knocking at my door-door	2	49
2997	(Verse - Kanye West)	10	49
3003	Man I wish I could stop time like a photograph	16	49
3011	People you never got a chance to say bye to	24	49
3018	No goodbye	31	49
3027	If I part my art will live through you	39	49
3037	So I'll just say good night to you	49	49
3043	I don't want you but I need you	2	50
3048	Never did this before, that's what the virgin says	6	50
3054	And I was too proud to admit that it was hurtin' me	11	50
3063	And you mix them emotions with tequilla	18	50
3068	But I'ma be the bigger man, big pimpin' like jigga man	25	50
3073	I don't want you but I need you	29	50
3075	See what I want so much, should never hurt this bad	32	50
3084	This relationship, it even got me back to drinkin'	39	50
3111	And I never let a nigga get that close to me	47	50
3136	Wake up Mr. West	17	51
3162	But we'll a find a way	25	52
2285	Since Prince was on Apollonia	73	38
2291	Told ya, told ya, never told ya	79	38
2299	Our work is never over	87	38
2306	More than ever, hour after	94	38
2314	What it means, what it means	2	39
2322	You know what, maybe you're right, aight	10	39
2327	You say he get on your fucking nerves	15	39
2335	Drive back to the crib	23	39
2343	What it means to find your dreams	31	39
2351	Why he keep giving me hot lines?	39	39
2359	You ever wonder what it all really mean?	47	39
2366	I'mma get on the TV momma, I'mma	5	40
2375	It feel like L.A., it feel like Miami	14	40
2383	Haters give me them salty looks, Lawry's	22	40
2388	(Now throw yo' hands up in the sky)	27	40
2395	Welcome to the good life	34	40
2403	Homey, tell me what's good	43	40
2410	50 told me, "Go 'head, switch the style up	49	40
2418	I'mma put shit down)	57	40
2427	Activated, I'm back to Vegas	66	40
2434	If you feelin' me now	73	40
2442	(Why were you late?) To whom much is given, much is tested	5	41
2449	I'm on TV talking like it's just you and me	12	41
2458	(Haha), you can't tell me nothing (Yeah, yeah)	21	41
2464	So I parallel double parked that motherfucker sideways (Why were you late?)	27	41
2472	Don't ever fix your lips like collagen (Why were you late?)	35	41
2480	(Haha), you can't tell me nothing (Yeah, yeah)	43	41
2486	How he move in a room full of no's? (Why were you late?)	49	41
2492	(Oh oh oh oh oh) So if the devil wear Prada, Adam Eve wear nada	55	41
2500	Excuse me, was you saying something? (Why were you late?)	63	41
2509	Oh oh oh oh oh, good money made	72	41
2516	Became the hood favorite, I can't even explain it, I surprise myself too	3	42
2524	Dude, fresh off the plane, konichiwa bitches	11	42
2532	They say, "He going crazy and we seen this before"	19	42
2544	Coming in the club with that fresh shit on	32	42
2548	Yeah, yeah, we outta here baby	35	42
2564	I'm so fucking good like I'm sleeping with Megan	42	42
2584	Stop dancing with your girlfriend and come dance with me	8	43
2597	Oh, now you sober, how'd I know you'd say that, you drunk and hot girl	21	43
2625	Oh how I want you right now	33	43
2640	I hate these niggas more than a Nazi	19	44
2648	If somebody woulda told me a year ago, it'll go get this difficult	27	44
2656	What do I know? (Flashing lights, lights)	35	44
2665	Lights, lights, lights, lights	44	44
2674	Everything I'm not made me everything I am	5	45
2683	I never rock a mink coat in the wintertime like Killa Cam	14	45
2694	Haters start your engines, I hear 'em gearing up	25	45
2702	Goodbye to the India Arie award	33	45
2710	I know that people wouldn't usually rap this	41	45
2718	The church want tithe, so I can't afford to pay	49	45
2726	People talking shit but when shit hit the fan	57	45
2734	Uh	0	36
2741	Wake up, Mr. West, Mr. West	8	36
2750	Good morning	16	36
2759	But you graduate when you make it up outta the streets	25	36
2767	Scared of the future while I hop in the DeLorean	33	36
2776	Every time that we hear them, good morning	42	36
2788	I can't study war, no, no	2	46
2803	Two years Dwayne Wayne became Dwyane Wade	17	46
2817	I can't study war, no, no	31	46
2825	What am I supposed to do now? Man, the game all messed up	39	46
2833	Tank on empty, whipping my mama Volvo	47	46
2842	I know, I know I look better in real life	56	46
2848	Yeah I'mma stop killin' these niggas soon as the chorus hit 	64	46
2854	I can't study war, no, no (Now where the west side?)	72	46
2862	I can't study war, no, no	76	46
2865	And you say Chi-City?	1	47
2870	Do you think about me now and then? (Yeah)	4	47
2886	I guess that's why last winter she got so cold on me	22	47
2894	Sometimes I still talk to her, but when I talk to her	35	47
2897	But they just not you" and I just got through	39	47
2901	I guess you never know what you got 'til it's gone	42	47
2905	Every interview I'm representing you, making you proud	45	47
2916	Maybe, do you remember when	54	47
2924	Maybe we can start again	61	47
2938	Carline told me I could buy two tickets	2	48
2942	My big brother was B.I.G.'s brother	11	48
2972	And we know New Jack City got to keep my brother	22	48
2990	Who was Hip Hop brother, who was No I.D. friend	54	48
3007	But it'll fade before I get to get a hold of that	15	49
3016	And so far, no cigar	28	49
3026	(Verse - Al Be)	37	49
3036	I don't wanna say goodbye to you	48	49
3052	You're gonna be the death of me	1	50
3061	I guess we fuckin' then	16	50
3072	Oh, I guess I figure it's	26	50
3082	I need to focus on the girls we gettin' currently	37	50
3096	Bittersweet	52	50
3101	You're gonna be the death of me	59	50
3114	God  talk to me now, this is an emergency	69	50
3120	Always carryin' that little book bag, nobody wants to see that	4	51
3126	You ain't doin' nothin' with your life, nothin' with your life	8	51
3132	Well ain't nothin' promised to you	13	51
3135	Wake up Mr. West	18	51
3143	And I heard 'em say	7	52
3147	Before you ask me to go get a job today	11	52
3157	But they can't cop cars without seeing cop cars	19	52
2431	When I thought that I was gonna go crazy	70	40
2446	(Oh oh oh oh oh) Bought more jewelry	9	41
2461	This is my life homie, you decide yours	24	41
2477	La, la, la, la (Yeah), then you can't tell me nothing, right?	40	41
2494	(Why were you late?) With way less effort	57	41
2502	(Haha), you can't tell me nothing (Yeah, yeah)	65	41
2511	Why were you late?	74	41
2518	Coming in the club with that fresh shit on	5	42
2526	Ask for it I did it, that asshole done did it	13	42
2533	And I'm doing pretty hood in my pink polo	21	42
2541	But my head's so big you can't sit behind me	30	42
2550	Hey Mr. West, we so outta here baby	37	42
2556	Whenever they make them, I shall hayve them	44	42
2563	And I ate it cause I'm so avid	51	42
2570	Swag at a hundred and climbin', baby, yeah	58	42
2574	Ha ha hum, and here's another hit, Barry Bonds	62	42
2581	To mess, mess with (She's sucking having game but happy as)	4	43
2594	You want to sit down but we hit the drive-thru, you (drunk and hot girls)	18	43
2600	We go (She's sucking having game but happy as)	24	43
2609	I thought I'd be with you for only one night	37	43
2619	Flashing lights, lights	1	44
2628	Couture from the store's departments	7	44
2637	And try to hit you with the ol-wu-wopte	16	44
2645	I know it's been a while sweetheart, we hardly talk, I was doing my thang	24	44
2653	As I recall, I know you love to show off	32	44
2662	Flashing lights, lights	41	44
2671	Now everything I'm not made me everything I am	2	45
2680	Fake ass facade that they couldn't keep up	11	45
2698	'Cause they want gun-talk, or I don't wear enough	29	45
2714	Oh, I forgot, 'cept for when niggas is rappin'	45	45
2730	Here we go, we, we, we	61	45
2746	And yer ass barely passed any and every class	12	36
2763	Good morning	29	36
2786	(Hustlers, that's if you're still livin', get on down)	43	36
2804	And, hey, please don't start me	18	46
2819	I can't study war, no, no	33	46
2836	The Goyard so hard man, I'm Hugo's boss	50	46
2853	Uh, these haters be killing theyself they wanna come and get the glory 	66	46
2867	I'm coming home again	3	47
2875	And from that point I never blow her off	12	47
2883	She never messed with entertainers cause they always leave	19	47
2909	I'm in home again	28	47
2921	Fireworks at Lake Michigan, oh	55	47
2930	Maybe we can start again	66	47
2937	I guess I'll understand when I get more older	8	48
2951	The game gettin' foul so here's a free throw	19	48
2961	'Cause even if he gave me the rock, it's give-and-go	31	48
2967	Next thing I know he got a song with Coldplay	37	48
2976	If you admire somebody you should go on 'head tell 'em	46	48
2979	Never be the same, never be another	50	48
2987	I'm not sure anymore-more	1	49
2994	I don't wanna say goodbye to you	6	49
2999	Me and my grandparents on a field trid-ip	13	49
3013	What do it mean when you never dream at all then	21	49
3023	My people, no goodbyes to you	35	49
3030	Stay true to you, a hood musical	42	49
3038	(Bridge - Mos Def) x3	52	49
3045	I love you and hate you at the very same time	3	50
3053	You cut me deep, bitch, cut me like surgery	10	50
3064	And you mix that wit' a little bad advice	19	50
3076	Bittersweet	31	50
3085	Now this Hennessey, is gonna' be the death of me	40	50
3091	And you ain't cracked up	48	50
3097	You're gonna be the death of me	54	50
3106	Bittersweet	58	50
3122	I knew I was gon' see, knew I was gon' you again	1	51
3148	Uh, yeah	3	52
3158	I guess they want us all behind bars, I know it	20	52
3182	My Aunt Pam can't put them cigarettes down	37	52
3192	I gotta testify, come up in the spot looking extra fly	0	53
3205	Jay favorite line, "Dawg, in due time"	14	53
3213	Now let's take 'em high-igh-igh-igh-igh-igh la la la la la la la	22	53
3221	Damn, them new loafers hurt my pocket	31	53
3233	Testify, come up in the spot looking extra fly	42	53
3248	Come as correct as a porn star	57	53
3256	'Fore the day you die, you gonna touch the sky	65	53
3264	I'm, I'm sky high	72	53
3280	 Get down girl, go 'head get down	9	54
3287	And your arm, but I'm lookin' for the one. Have you seen her?	16	54
3294	You know why? It take too much to touch her	24	54
3305	 Get down girl, go 'head get down	33	54
3323	Now I ain't sayin' she a gold digger, uh	52	54
3341	And they gon' keep callin' and tryin', but you stay right, girl	70	54
3357	Plus he had the spinner from his Daytons in his hand	10	56
3374	They had they Lincolns and Auroras, we was hurtin 'em all	27	56
3390	You see them fours crawling? You see them screens falling?	44	56
3408	I got the custom grill, I got the Brabus rims	61	56
3418	I sold O's, and this I know	71	56
3436	Someone to stay in they corner like Mike Tyson	11	57
3451	That real black music nigga)	3	58
3468	From the place where the father's gone, the mothers is hardly home	20	58
3485	That real black music nigga	37	58
3498	Our Father, give us this day, our daily bread	50	58
3513	It'll send her body into a seizure, that little thing by the hospital bed, it'll stop beepin'	2	59
3527	Bitch, is you smokin' reefer?	16	59
2675	I'll never be picture perfect Beyoncé	6	45
2684	Or rock some mink boots in the summertime like Will.I.Am	15	45
2696	They forget to get their hair cut	27	45
2704	But I'll just take the I-got-alotta-cheese award	35	45
2712	Just last year, Chicago had over six hundred caskets	43	45
2720	My fifteen seconds up, but I got more to say	51	45
2728	Here we go, here, here we go	59	45
2736	Uh	2	36
2744	I mean damn, did you even see the test?	10	36
2752	Good morning	18	36
2761	Haters saying you changed, now you doing your thang	27	36
2769	Some people graduate, but be still stupid	35	36
2783	Get on down	50	36
2791	I can't study war, no, no (Uh)	5	46
2799	That's Louis Vuitton bitch	13	46
2807	While y'all was in limbo, I raised the bar up	21	46
2814	After each and every show a couple dykes in the van	28	46
2822	I can't study war, no, no (The glory)	36	46
2830	And be looked at like a fucking hero	44	46
2839	And I'm asking about her girlfriends, yeah, the dark skinned ones	53	46
2847	Till then, get money and stunt and stay glorious	61	46
2855	I can't study war, no, no (Yeah)	73	46
2863	I can't study war, no, no	77	46
2869	'Cause I'm coming home again	6	47
2885	Knew I was gang affiliated, got on TV and told on me	21	47
2892	Do you think about me now and then? Oh	30	47
2896	She said, "You left your kids, and they just like you	37	47
2902	I guess that's why I'm here and I can't come back home	43	47
2906	Jump in the crowd, spark your lighters, wave 'em around	47	47
2912	Do you think about me now and then?	51	47
2919	Fireworks at Lake Michigan, oh	59	47
2927	Loyee oyeee oh, loyee oyeee oh	64	47
2932	And kept little brother at bay, at a distance	4	48
2941	Now I'm on the top and everybody on the scrotum	10	48
2950	I was always on the other side of the peephole	20	48
2958	But my big brother who I always tried to be	29	48
2962	But my shit was more like a finger roll	33	48
2968	Back in my mind I'm like "Damn, no way"	38	48
2980	But I told somebody else and that's what made shit worse	43	48
2985	Toomp killed this shit	56	48
2993	(Chorus - Mos Def)	5	49
2998	Right now I can see it so vivid	11	49
3005	What do it mean when you dream that you fallin'	19	49
3020	(Chorus - Mos Def)	32	49
3034	Stay true to you, a hood musical	46	49
3047	I'm just gonna say good night	51	49
3056	I'd never do that to you, at least purposely	12	50
3081	I'll never hit a girl, but I'll shake the shit outta you	24	50
3090	You don't see how our life was supposed to be	46	50
3103	I love you and hate you at the very same time	61	50
3113	We've been generally warned, that's what the surgeon says	68	50
3123	Goddamn fourth grader, sit your ass down	5	51
3130	You think this is promised	12	51
3133	Does it look like I promised you anything?	15	51
3137	Mr. West	0	52
3141	Uh, yeah	6	52
3146	So this is in the name of love like Robert say	10	52
3152	Allahu Akbar and throw him some hot cars	15	52
3161	"Nothing's ever promised tomorrow today"	24	52
3170	In Jesus, and one day that you see him	32	52
3186	It hurts but it may be the only way)	48	52
3195	I felt like Bad Boy's street team, I couldn't work the LOX	6	53
3199	Me and my momma hopped in that U-Haul van	8	53
3216	Now let's take 'em high-igh-igh-igh-igh-igh la la la la la la la	25	53
3224	Baby, I'm going on an aeroplane and I don't know if I'll be back again	34	53
3234	'Fore the day you die, you gonna touch the sky	43	53
3240	Bottle shaped body like Mrs. Butterworth	50	53
3246	En garde, or touché, Lupe cool as the unthawed	55	53
3254	You gonna touch the sky baby girl	63	53
3261	I'm, I'm sky high	70	53
3269	Uh, feels good to be home, baby	78	53
3276	But she ain't messin' wit' no broke niggas	5	54
3284	With a baby Louis Vuitton under her underarm	13	54
3292	I pulled up in the Benz, they all got up in	21	54
3301	Now I ain't sayin' she a gold digger, uh	30	54
3310	His baby mama car and crib is bigger than his	39	54
3316	Should've got that insured, GEICO for your money 	45	54
3326	But she ain't messin' wit' no broke niggas, uh	55	54
3335	But while y'all washin', watch him	64	54
3344	 Get down girl, go 'head get down	73	54
3351	My homie Marley used to stay 79th and May	4	56
3360	Drove by the teachers, even more by polices	13	56
3368	You was the Chi-Town version of Baby	21	56
3377	So put me on with these hoes, homie	30	56
3385	Them elbows pokin' wide on that candy 'Lac	38	56
3394	But I could still catch boppers if I drove a cab	47	56
3402	(You never know, homie, might meet some hoes, homie	55	56
3412	I got my custom kicks, I got my Jesus chain	65	56
3421	Drive slow, homie	74	56
3432	Pray to God that my arms reach the masses	5	57
3439	Show money becomes bail, relationships become jail	14	57
3448	That's that crack music nigga	0	58
3453	You hear that? What Gil Scott was hearing	6	58
3463	Put the CD on your tongue, yeah that's pure man	15	58
3471	They wanna pack us all in a box like styrofoam	23	58
3479	This that inspiration for the Moes and the Folks man	32	58
3487	God, how could you let this happen?	40	58
2940	Big brother saw me at the bottom of the totem	9	48
2948	Not only a client, the Presidito, hola, Hovito	18	48
2952	Then I dropped Jesus Walks now I'm on the steeple	21	48
2960	When I kicked a flow it like pick-and-roll	30	48
2971	Shoulda known that was gonna come back around	41	48
3002	My people, no goodbyes to you	8	49
3009	It's sorta fly you get a chance to say hi to	23	49
3019	So I'mma live like there's no tomorrow	30	49
3029	Wake up like everyday new to you	41	49
3058	You make them sunny and new	56	49
3069	You know, domestic drama and shit, all the attitude	23	50
3079	And my nigga said I shouldn't let it worry me	36	50
3094	Saying, you fuckin' them girls, disrespecting me	44	50
3109	We've been generally warned, that's what the surgeon says	64	50
3131	Knew I was gon' see you again	2	51
3153	Uh, yeah	5	52
3164	(And nothing last forever but be honest babe	26	52
3172	The devil is alive I feel him breathin'	34	52
3178	I can't figure it out, I'm sick of it now	41	52
3197	'Fore the day I die, I'mma touch the sky	3	53
3207	A hip hop legend, I think I died	16	53
3215	(Top of the world, baby, on top of the world)	24	53
3225	Dog, I was having nervous breakdowns like, "Man, these niggas that much better than me?"	33	53
3238	Here like ear till I'm beer on the curb	47	53
3249	In a fresh pair steps in my best foreign car	58	53
3265	I'm, I'm sky high	74	53
3279	 Get down girl, go 'head get down	8	54
3297	My best friend said she used to fuck with Usher	26	54
3306	 Get down girl, go 'head	35	54
3322	And on her eighteenth birthday, he found out it wasn't his	51	54
3332	You don't want a dude to smoke but he can't buy weed	61	54
3348	Drive slow, homie	1	56
3365	Hit the freeway, go at least 'bout eighty	18	56
3382	You need to pump your brakes and drive slow, homie	35	56
3399	Turn your hazard lights of when you see them hoes (Drive slow, homie)	52	56
3407	And everything I flip, you know it's something serious	60	56
3417	My cylinder quiet, like tip-toes	70	56
3426	(I'm on way home)	1	57
3435	Revolution ain't a game it's another name for life fightin'	10	57
3443	I left three days ago, but no one seems to know I'm gone	19	57
3458	We invested in that, it's like we got Merrill lynched	9	58
3466	(That's that crack music nigga	18	58
3474	Back in the hood, it's a different type of chemical	26	58
3483	This the type of music that you make when you 'round that	35	58
3491	Happen	43	58
3505	So our mamas ain't got to be they cooks and nannies	57	58
3519	You know the best medicine go to people that's paid	8	59
3537	Hey chick, what these doctors know anyway?	24	59
3554	Can't wait, I can't wait, no	42	59
3570	You see, if you ever wanted to ever be anything	7	60
3580	Spanish girls say, "Yo, no hablo inglés"	17	60
3598	Always knew that one day, they'd try to bring me down	35	60
3616	Man, I tried to stop man, I tried the best I could	16	61
3634	Everything they told me not to is exactly what I would	34	61
3652	You motherfuckers better do your job and roll up, and watch how we roll up	0	63
3668	Feelin' better than some head on a Sunday afternoon	16	63
3686	And I can't control it, I can't hold it, it's so nuts	33	63
3701	First line should it be about the hoes or the ice?	49	63
3717	Last longer than more than half of you clowns	65	63
3733	Best things are green now pimpin' get your paper	81	63
3741	Like better late than never is orientation	89	63
3749	On the vocals sings, he sings quite beautifully	99	63
3760	Still we can make it better, throwin' all your cares away (We want you to get used to this)	108	63
3769	Why you actin' all	4	66
3778	You fine and all	13	66
3787	We hit the liquor store	22	66
3797	See you know my style	32	66
3806	So go head pop some Cristal	41	66
3816	Had some problems before but see we let 'em go	51	66
3825	It's too late, he's gone	3	68
3837	(Gone) (I ride on chrome), it's too late	13	68
3853	We striving home, gone	30	68
3869	Fine stay, you got the grind hey	46	68
3884	And since we used to bubble like a tub full of Calgon	62	68
3901	I guess I gone to the well one too many times 'cause I'm gone	79	68
3918	How we out in Europe, spending Euros	96	68
3934	Diamonds are forever (forever, forever)	4	69
3950	- its for yourself that's important	21	69
3967	The international asshole	37	69
3986	The preacher said we need leaders	53	69
3999	You know the next question dog "Yo, where Dame at?"	69	69
4016	If you had a taste of that, you'd probably pay for that	3	70
4032	You mean I missed my major by a couple of seconds?	19	70
4046	I think I was made for that	35	70
4053	That's right, that's right, that's right, that's right	41	70
4064	I'm so live with it, look how I did it	54	70
4069	You can stop complainin' 'cause I'm finally here, yeah	57	70
4076	We want the lord (Yes, Jesus)	2	71
4085	Jesus praise the Lord (Yes, God)	11	71
4093	Deliver us serenity	19	71
4102	This is a God dream	28	71
4111	I'm tryna keep my faith	37	71
4124	Hey, cause I know that you'll make everything alright	50	71
4140	You can feel the lyrics and spirit coming in braille	66	71
4147	This is my part, nobody else speak	75	71
2945	No I.D. my mentor, now let the story begin, begin	14	48
2959	Then my big brother came through and kicked my ass	25	48
2966	And them hoes at the show gonna mingle, yo, heh, y'all know	35	48
2974	My big brother was B.I.G.'s brother	44	48
2983	My big brother was B.I.G.'s brother	52	48
2995	So I'll just say good night to you	7	49
3001	And I'm the little kid tryna touch the exhibits	14	49
3008	And you don't really know cause you can't recall them	22	49
3014	So close, but so far	27	49
3024	I'm just gonna say good night	36	49
3028	Dream beautiful and unusual	40	49
3040	My people, no goodbyes to you	50	49
3044	See what I want so much, should never hurt this bad	5	50
3051	God talk to me now, this is an emergency	8	50
3062	Have you ever felt you ever want to kill her?	17	50
3070	You're gonna be the death of me	28	50
3077	We've been generally warned, that's what the surgeon says	34	50
3086	But I can't even vibe wit you sexually	42	50
3093	You always gone, you always be where them hoes will be	50	50
3098	I don't want you but I need you	56	50
3105	See what I want so much, should never hurt this bad	62	50
3110	See what I want so much, should never hurt this bad	66	50
3116	You're gonna be the death of me	71	50
3119	Where your goddamn book bag at?	3	51
3124	You ain't got somethin' else to do	7	51
3129	You think this shit easy, don't you?	11	51
3142	Look at my face, do I got a promised face?	14	51
3151	So I guess we just pray like the minister say	14	52
3159	And I heard 'em say	23	52
3166	And anything that happen is for a reason	29	52
3173	So now my little cousin smokin' them cigarettes now	38	52
3175	Is it 'cause his skin blacker than licorice now?	40	52
3183	Nothing's ever promised tomorrow today	45	52
3191	Gotta testify, come up in the spot looking extra fly	2	53
3200	Any pessimists I ain't talk to them	9	53
3217	(Top of the world, baby, top top of the world)	26	53
3230	I gotta testify, come up in the spot looking extra fly	39	53
3242	I'm back on the block like I'm laying on the street	52	53
3257	We back at home, baby	66	53
3272	Yeah she's a triflin' friend indeed	1	54
3288	My psychic told me she'll have an ass like Serena	17	54
3295	From what I heard she got a baby by Busta	25	54
3304	 Get down girl, go 'head get down	34	54
3320	'Cause when she leave your ass she gon' leave with half	49	54
3330	 Get down girl, go 'head	59	54
3339	So, stick by his side	68	54
3356	And walked around the mall with his radio face off	9	56
3373	We'd take a Saturday and just circle the mall	26	56
3391	Open up my mouth and sunlight illuminates the dark	43	56
3409	I got the baller genetics, baby, this evidence	62	56
3427	They say home is where the hate is, my dome is where fate is	2	57
3444	Home is where the hatred is	20	57
3457	And we been hangin' from the same tree ever since	10	58
3467	That real black music nigga)	19	58
3475	Arm & Hammer baking soda raised they own quota	27	58
3484	Crack music nigga	36	58
3497	That real black music, black music	49	58
3502	We took that shit, measured it and then cooked that shit	54	58
3511	I know it's past visiting hours but can I please give her these flowers?	0	59
3517	Her family cryin', they want her to live, and she tryin'	6	59
3525	I asked the nurse, "Did you do the research?"	14	59
3532	They outside of the emergency room, room, you can feel my heartbeat, beat, beat	21	59
3540	I think we at a all-time high to get there, we run, we fly, we drive	30	59
3548	And I can't wait for a sunny day (Seeing it through your eyes)	37	59
3557	Momma can't wait for the clouds to break	46	59
3564	One day, they'd tried to bring me down	1	60
3574	But they gon' have to take my life 'fore they take my drive	11	60
3584	Dawg, if I was you, I wouldn't feel myself	21	60
3593	See I'm often at your crossways	30	60
3602	Everything they told me not to is exactly what I would	2	61
3611	Time's of the essence, I need, you to be spontaneous	11	61
3620	So I pour the potion, so we could both get high, as we could go	20	61
3629	Man, I tried to stop man, I tried the best I could	29	61
3638	Just wanted to um, let me, how would I put this uh	38	61
3647	I mean you, her and me	47	61
3656	But really what's amazin' is how I keep blazin'	4	63
3664	We major? C'mon homie we major	12	63
3672	Projects to' up, gang signs is thrown up	20	63
3680	Asked the reverend was the strip clubs cool	28	63
3689	Towel under the door, we smoke until the day's end	37	63
3696	We major? C'mon homie we major	44	63
3705	What this verse sound like, should I freestyle or write?	53	63
3713	And I love to give my blood sweat and tears to the mic	61	63
3721	Feeling better than I ever felt before today	69	63
3729	Towel under the door, we smoke until the day's end	77	63
3737	We major? (C'mon homie we major)	85	63
3747	I gotta figure out what I'm finna wear	95	63
3756	'Cause we takin' these motherfuckers back to school	104	63
3765	Yeah, you know what this is	0	66
3774	Stop that	9	66
3783	All that talkin' is gon' give me a tylenol	18	66
3795	Yeah, you know what this is	28	66
3802	He looked up at me said "Daddy that's the reason why you had me?"	37	66
3812	But I just thought we should know	47	66
3017	We can't dwell on the day PAST all we got is today	29	49
3025	Uhh, to you	38	49
3035	(Chorus - Mos Def)	47	49
3042	Bittersweet	0	50
3049	We've been generally warned, that's what the surgeon says	7	50
3057	We breakin' up again	13	50
3067	On one of them bad nights, y'all have a bad fight	20	50
3080	God talk to me now, this is an emergency	35	50
3087	And I always thought that you havin' my child was our destiny	41	50
3092	To what you was supposed to be	49	50
3099	(I guess it's bittersweet poetry)	55	50
3107	Never did this before, that's what the virgin says	63	50
3112	Never did this before, that's what the virgin says	67	50
3117	I don't want you but I need you	72	50
3128	You better look at me when I'm talkin' to you	10	51
3163	Uh, and I heard 'em say	21	52
3176	And put them lottery tickets just to tease us	36	52
3185	(And nothing last forever but be honest babe	47	52
3189	It hurts but it may be the only way	52	52
3202	Plus I ain't have no phone in my apart-a-ment	10	53
3209	I gotta testify, come up in the spot looking extra fly	18	53
3218	(Top of the world, baby, on top of the world) Uh	27	53
3227	Any girl I cheated on, sheets I skeeted on	36	53
3231	'Fore the day you die, you gonna touch the sky	40	53
3239	Peach fuzz buzz but beard on the verge	48	53
3244	I'm trying to stop lion like I'm Mumm-Ra	53	53
3252	I gotta testify, come up in the spot looking extra fly	61	53
3259	I'm, I'm sky high	68	53
3266	Keep it rollin'	76	53
3274	That digs on me	3	54
3282	 Get down girl, go 'head	11	54
3290	And I gotta take all they bad ass to ShowBiz	19	54
3299	Now I ain't sayin' she a gold digger, uh	28	54
3308	She got one of yo' kids, got you for eighteen years	37	54
3314	She went to the doctor got lipo with your money	43	54
3324	But she ain't messin' wit' no broke niggas, uh	53	54
3333	You got out to eat and he can't pay, y'all can't leave	62	54
3342	And when you get on, he leave yo' ass for a white girl	71	54
3349	You never know, homie, might meet some hoes, homie	2	56
3358	Keys in his hand, reason again to let you know he's the man	11	56
3366	Boned so much that summer, even had him a baby	19	56
3375	With the girls a lot of flirtin' involved, but dog	28	56
3383	What it do? I'm posted up in the parking lot, my trunk waving	36	56
3393	The disco ball in my mouth insinuates I'm ballin'	45	56
3400	If you're riding around the city with nowhere to go (Drive slow, homie)	53	56
3410	You see a player flicking, and how you ain't convinced	63	56
3419	When you see them hoes, little homie, drive slow	72	56
3428	I stroll where souls get lost like Vegas	3	57
3437	Hypes fightin' for hits to heighten they hell	12	57
3446	Home is filled with pain and it	21	57
3452	How we stop the Black Panthers?	4	58
3460	The fiends cop it, nowadays they can't tell if	13	58
3469	And the madigon's lock us up in the Audy Home	21	58
3476	Went from bein' a broke man to bein' a dopeman	30	58
3486	(That's that crack music nigga	38	58
3492	(That's that crack music nigga	46	58
3499	Before the feds give us these days and take our daily bread	51	58
3508	This dark diction has become America's addiction	60	58
3514	Hey chick, I'm at a loss for words	3	59
3520	But since she was just a secretary, worked for the church for thirty-five years	11	59
3529	I smile when Rosie comes to see me	18	59
3535	Plus my Aunt Shirley, Aunt Beverly, Aunt Clay, and Aunt Jean	27	59
3544	Can't wait for the clouds to break	34	59
3553	Can't wait, I can't wait, no	43	59
3561	Said I can't wait, uh-uh	50	59
3571	There'd always be somebody that shoot down any dream	8	60
3581	And everybody want to run to me for their single	18	60
3590	Why'd you come then?	27	60
3599	Way down, they'd try to bring me down	36	60
3608	She's coming over, so I guess, that means, I'm her drugs	8	61
3617	But (You make me smile)	17	61
3626	And I keep co coming over 'cause it's never over	26	61
3635	Man, I tried to stop man, I tried the best I could	35	61
3644	Don't take me, I mean just, uhh, not credibly	44	61
3653	And I can't control it, I can't hold it, it's so nuts	1	63
3661	Best things are green now pimpin get your paper	9	63
3669	Better than a chick that say yes too soon	17	63
3677	Nigga come through flickin' and he had that shine	25	63
3685	I take a sip of that 'gnac, I wanna fuck	34	63
3693	Best things are green now pimpin get your paper	41	63
3702	Fo-fo's or Black Christ? Both flows'd be nice	50	63
3710	To build my very own Motown	58	63
3718	Look, I used to cook before I had the game took	66	63
3725	I take a sip of that 'gnac, I wanna fuck	74	63
3734	High off the ground from stair to skyscraper	82	63
3744	Can I talk my shit again?	92	63
3753	Uh, and Jon Brion on the keys right now	101	63
3762	Uh-uh, uh-uh, they can't do what we do baby	110	63
3771	Why is y'all	6	66
3780	But she not like you	15	66
3796	Had some problems before but see we let 'em go	25	66
3799	And I vow that my child will be well endowed	34	66
3809	It's a celebration, bitches!	44	66
3818	And we about to let it blow.	53	66
3828	See me at the airport, at least twenty Louis	6	68
3089	You don't see how your lies is affectin' me	45	50
3100	I love you and hate you at the very same time	57	50
3108	God talk to me now, this is an emergency	65	50
3118	Oh, whoa ho ho	0	51
3127	You think this is?	9	51
3134	Kanye, nigga, is you snorin' in my class?	16	51
3139	Uh, yeah	4	52
3145	From the Chi, like Tim it's a harder way	9	52
3150	And I know that the government administer AIDS	13	52
3155	But these niggas from the hood so these dreams not far	17	52
3160	"Nothing's ever promised tomorrow today"	22	52
3174	Claiming money is the key, so keep on dreamin'	35	52
3181	And I heard 'em say	44	52
3187	With every worthless word, we get more far away	49	52
3194	Before Cam got the shit to pop, the doors was closed	5	53
3203	Least about an hour I stand on line, I just wanted to dance	12	53
3211	Gotta testify, come up in the spot looking extra fly	20	53
3220	Back when Slick Rick got the shit to pop	29	53
3229	I'm trying to right my wrongs but it's funny them same wrongs helped me write this song, now	38	53
3243	But, before you say another word	51	53
3258	Sky high	67	53
3273	Oh, she's a gold digger, way over town	2	54
3289	Trina, Jeena-fah Lopez, four kids	18	54
3307	Eighteen years, eighteen years	36	54
3321	Eighteen years, eighteen years	50	54
3331	Now I ain't sayin' you a gold digger, you got needs	60	54
3340	I know there's dude's ballin', but yeah that's nice	69	54
3355	Bulls jacket with his hat broke way off	8	56
3364	Hit Lake Shore, girls go all crazy	17	56
3372	Felt like I was almost signed when the shit got cranked	25	56
3381	You never know, homie, might meet some hoes, homie	34	56
3389	It's a star-studded event when I valet park	42	56
3398	I'm looking for them hoes, baby, what it do? Drive slow, homie	51	56
3406	And that don't make no sense, but baby, I'm the shit	59	56
3416	My woodgrain oak, I'm ridin on Vogues	69	56
3425	Yeah	0	57
3434	Makin' sense of it, we hustle for change	9	57
3442	I'm on my way home	18	57
3459	Sometimes I feel the music is the only medicine	11	58
3478	Right when our soldiers, ran for the stove 'cause	28	58
3494	That real black music, black music	45	58
3506	Now the former slaves trade hooks for Grammys	59	58
3521	You telling me if my grandma's in the NBA, right now she'd be okay?	10	59
3538	Let me see the X-rays, I ain't no expert, I'm just hurt	25	59
3551	And I'm sad, when Rosie goes away	40	59
3569	Most you rappers don't even deserve a track from me	6	60
3579	Your girl don't like me, how long has she been gay?	16	60
3589	Everybody feel a way about K but at least y'all feel something	26	60
3607	She's got the same thing, about me, but more, about us	7	61
3625	Roll up the doja, Henny and Coca Cola	25	61
3643	I mean don't take this seriously	43	61
3660	Turn nothin' to somethin', now pimpin' that's a savior	8	63
3676	He ain't never had shit, but he had that nine	24	63
3692	Turn nothin' to somethin', now pimpin' that's a savior	40	63
3709	Now I'm a free agent and I'm thinkin' it's time	57	63
3724	And I can't control it, I can't hold it, it's so nuts	73	63
3742	Still we can make it better throwing all your cares away	90	63
3752	Don't you agree? Don't you agree?	100	63
3770	Shy and all	5	66
3790	And we about to let it flow	24	66
3808	Know what this is	43	66
3827	You a Big L and I ain't talkin 'bout Cool J	5	68
3843	Arguin' over babysitters like, "Bitch it's yo' turn"	21	68
3859	Act up, get out, I don't need you poof	37	68
3875	Gave Weezie a piece of the pie and	53	68
3892	And with that being said I had gone on my instincts	70	68
3909	Before model chicks was bending over	87	68
3926	Hold on, I'll handle it, don't start panickin', stay calm	104	68
3942	And I've realized that I've arrived, cuz	12	69
3958	The Roc is still alive every time I rhyme.	29	69
3974	Its Kanye - But some of my plaques - they still say Kane	44	69
3982	Diamonds are forever (forever, forever)	52	69
3991	Right when magazines wrote Kanye West off	61	69
4007	Diamonds are forever (forever, forever, forever)	77	69
4022	Little girl, please stop your crying	10	70
4030	Not even electives? Not even pre-requits?	18	70
4038	Like old folks pissin', I guess it all depends, oh, oh	27	70
4045	So I'm comin' in when I feel like	36	70
4052	You know when you be late, you miss all the lights	40	70
4059	We about to get real unprofessional	47	70
4070	'Cause I'll be late for that	58	70
4077	And that's it (Yes, God)	3	71
4086	I'm tryna keep my faith	12	71
4094	Deliver us peace	20	71
4103	This is a God dream	29	71
4112	But I'm looking for more	38	71
4123	Head up high, I look to the light	49	71
4139	My daughter look just like Sia, you can't see her	65	71
4146	This little light of mine	76	71
4154	Know what God said when he made the first rainbow	80	71
4163	We on an ultralight beam	89	71
4178	I know I act a fool but I promise you I'm goin' back to school	2	65
4187	I was 3 years old, when you and I moved to the Chi	10	65
4196	And I love you for that Mommy can't you see?	19	65
4206	Send us an angel, and I thank you.	29	65
4216	But still supported me when I did the opposite	39	65
3125	He wanna play it again like he got somethin' else to do	6	51
3138	Mr. West	1	52
3144	"Nothing's ever promised tomorrow today"	8	52
3149	Can I at least get a raise of the minimum wage?	12	52
3156	Where I'm from the dope boys is the rock stars	18	52
3167	They say people in your life are seasons	28	52
3180	"Nothing's ever promised tomorrow today"	43	52
3193	And nothing last forever but be honest babe	51	52
3204	I went to Jacob an hour after I got my advance, I just wanted to shine	13	53
3212	'Fore the day I die, I'mma touch the sky	21	53
3222	I'd do anything to say I got it	30	53
3236	Lupe steal like Lupin the 3rd	46	53
3251	Now let me end my verse right where the horns are like uh	60	53
3267	Yeah	75	53
3281	 Get down girl, go 'head get down	10	54
3298	I don't care what none of y'all say, I still love her	27	54
3313	She was supposed to buy your shorty Tyco with your money	42	54
3319	Yeah, it's something that you need to have	48	54
3329	 Get down girl, go 'head get down, uh	58	54
3338	This week he moppin' floors, next week it's the fries	67	54
3347	Drive slow, homie	0	56
3354	He nicknamed me K-Rock so they would leave me alone	7	56
3363	Al B. Sure nigga with the hair all wavy	16	56
3371	I used to love to play my demo tape when the system yanked	24	56
3380	Drive slow	33	56
3388	Allow me to introduce you to my CL Mercedes	41	56
3397	I'm tipping on them fours, I'm jamming on that Screw	50	56
3405	I got more TVs in here than where I live)	58	56
3415	With that mean lean, smoking on that finest Cali green	68	56
3424	Drive slow, homie	77	56
3433	We wear strugglin' chains, divided only hustle remains	8	57
3445	Might not be such a bad idea if I never, never went home again	17	57
3461	So we, cook it, cut it, measure it, bag it sell it	12	58
3477	'Cause, dreams of being Hova	29	58
3493	Uh, that's that crack music, crack music	44	58
3507	And we gon' repo everything they ever took from granny	58	58
3522	If Magic Johnson got a cure for AIDS and all the broke motherfuckers passed away	9	59
3536	Cousin Kim took off of work	26	59
3552	Oh Rosie brings the sunshine (Say)	41	59
3566	Besides what the pastor say, I have to say since Pac passed away	5	60
3578	And get some leeway on the he say she say	15	60
3588	Now I'll speak from the heart, y'all all frontin'	25	60
3597	Always knew that one day, they'd try to bring me down	34	60
3606	I've been afflicted by not one, not two, but all three	6	61
3615	Everything they told me not to is exactly what I would	15	61
3624	I'm into that now, catch a vibe, when the doors, get closed	24	61
3633	Why everything that's supposed to be bad make me feel so good?	33	61
3642	I was thinking, hypothetically	42	61
3651	Unless you gon' do it (You make me smile)	51	61
3667	We major, c'mon	15	63
3684	You motherfuckers better do your job and roll up, and watch how we roll up	32	63
3699	We major, c'mon homie we major	47	63
3708	Been like twelve years since a nigga first signed	56	63
3726	You motherfuckers better do your job and roll up, and watch how we roll up	72	63
3743	Can I talk my shit again?	91	63
3761	Uh, they can't do what we do baby	109	63
3779	And your girlfriend, she kinda raw	14	66
3788	Got some Cris and some Mo	23	66
3798	I'm very wild	33	66
3807	For my newborn child cause now y'all...	42	66
3817	Got an ounce of that dro	52	66
3826	You sweat her and I ain't talkin 'bout a Coogi	4	68
3835	Y'all don't want no prob' from me	14	68
3851	(I ride on chrome), gone	29	68
3866	My last girl want me back then I'm on	45	68
3882	I been pouring out some liquor for the fact that my pal's gone	60	68
3891	And when I came the next morning he was gone with my bread	69	68
3899	And now we gone for twenty years doing time behind bars	77	68
3908	Light like when I was on the grind in the 1999	86	68
3916	Fired a week later, the manager count the churros	94	68
3925	They got a new bitch, now you Jennifer Aniston	103	68
3941	Seen through Yves St. Laurent glasses	11	69
3949	I remember I couldn't afford a Ford Escort or even a four-track recorder	19	69
3959	Diamonds are forever (forever, forever, forever)	28	69
3975	Got family in the D, Kin-folk from Motown	45	69
3992	I dropped my new shit, it sound like the best of	62	69
4008	The Roc is still alive every time I rhyme.	78	69
4023	'Cause I'll be late for that	11	70
4040	Little girl, please stop your crying (Stop your cryin' baby)	28	70
4050	Little girl, please stop your crying	38	70
4063	Five hours later, I'll be there in five minutes, go 'head ride with it	53	70
4068	I know it's late and I took all year but	56	70
4075	We don't want no devils in the house, God (Yes, Lord)	1	71
4084	Hallej- hand over Satan (Yes, Jesus)	10	71
4092	This is everything	18	71
4101	Pray for the parents	27	71
4110	Everything (Thing, thing, thing)	36	71
4120	(To save) Don't have much strength to fight	46	71
4128	When they come for you, I will shield your name	54	71
4135	I mean I fuck with your friends, but damn, Gina	61	71
4149	He said let's do a good ass job with Chance three	70	71
4156	Ugh, I'm just having fun with it	82	71
4165	This is a God dream	91	71
4175	And end my holy war	101	71
3168	And niggas gun clapping and keep to squeezing	30	52
3177	His job try to claim that he too niggerish now	39	52
3184	But we'll a find a way	46	52
3190	'Fore the day I die, I'mma touch the sky	1	53
3201	Let's take 'em back to the club	11	53
3210	'Fore the day I die, I'm a touch the sky	19	53
3219	Back when Gucci was the shit to rock	28	53
3228	Couldn't keep it at home, thought I needed a Nia Long	37	53
3232	You gonna touch the sky baby girl	41	53
3241	Let's slow it down like we're on the syrup	49	53
3245	But I'm not lyin' when I'm laying on the beat	54	53
3253	'Fore the day you die, you gonna touch the sky	62	53
3260	I'm, I'm sky high	69	53
3268	Yeah	77	53
3275	Now I ain't sayin' she a gold digger	4	54
3283	Cutie the bomb, met her at a beauty salon	12	54
3291	Okay, get your kids, but then they got their friends	20	54
3300	But she ain't messin' wit' no broke niggas, uh	29	54
3309	I know somebody payin' child support for one of his kids	38	54
3315	She walkin' around lookin' like Michael with your money	44	54
3325	Now I ain't sayin' she a gold digger, uh	54	54
3334	There's dishes in the back, he gotta roll up his sleeves	63	54
3343	 Get down girl, go 'head get down	72	54
3350	You need to pump your brakes and drive slow, homie	3	56
3359	Back when we rocked Ellesses, he had dreams of Caprices	12	56
3367	See back-back then-then, if you had a car	20	56
3376	Fuck all that flirtin', I'm tryin' to get in some drawers	29	56
3384	The candy gloss is immaculate, it's simply amazing	37	56
3392	I'm leaning on the switch, sitting crooked in my slab	46	56
3401	Live today, 'cause tomorrow, man, you never know	54	56
3411	That you should go on and kiss it, just a little bit (Just a little bit)	64	56
3420	Yeah, drive slow, homie	73	56
3429	Seen through the eyes of rebel glasses	4	57
3438	Don't he know he could only get as high as he fell?	13	57
3447	Might not be such a bad idea if I never, never went home again	22	57
3454	Ronald Reagan cooked up an answer	5	58
3462	That's that good shit, we ain't sure man	14	58
3470	How the Mexicans say, we just tryin' to party holmes	22	58
3480	To bein' the President, look there's hope man	31	58
3488	That real black music nigga)	39	58
3496	That real black music nigga)	47	58
3501	See I done did all this ol' bullshit	52	58
3509	Those who ain't even black use it	61	58
3515	What do you say at this time, "Remember when I was nine?"	4	59
3524	Things supposed to stop right here, my grandfather tryin to pull it together, he's strong	12	59
3531	And I can't wait for a sunny day (Seeing it through your eyes)	19	59
3542	So many aunties we could have an auntie team	28	59
3547	Oh, Rosie brings the sunshine, oh	35	59
3556	Can't wait, I, can't wait	44	59
3562	I won't wait, no	51	59
3572	There'll always be haters, that's the way it is	9	60
3582	It's funny how these wack niggas need my help	19	60
3591	I bet only for getting what some get would get ya	28	60
3600	You make me smile in my heart, oh	0	61
3609	Just let me peek now, I mean damn, I'm so curious	9	61
3618	I see the emotion in your eyes, that you, try not to show	18	61
3627	Why everything that's supposed to be bad make me feel so good?	27	61
3636	But (You make me smile with my heart)	36	61
3645	I'm feeling incredibly, I mean let it be	45	61
3654	I take a sip of that 'gnac, I wanna fuck	2	63
3662	High off the ground from stair to skyscraper	10	63
3670	Until you have a daughter that's what I call karma	18	63
3678	Put two and two together and a little bad weather	26	63
3687	I take a hit of that chronic, it got me stuck	35	63
3694	High off the ground from stair to skyscraper	42	63
3703	Rap about big paper or the black man plight	51	63
3711	'Cause rappers be deprived, of executive nine to five's	59	63
3719	Either way, my change came like Sam Cooke	67	63
3727	I take a hit of that chronic, it got me stuck	75	63
3735	Cool out, thinkin' we local, c'mon homey we major	83	63
3745	I can't believe I'm back up in this motherfucker	93	63
3754	And Warren Campbell on the keys right now	102	63
3763	Uh-uh, uh-uh, they can't do what we do baby	111	63
3772	Lyin' for?	7	66
3781	No, she not like you	16	66
3789	Got an ounce of that dro	26	66
3800	Like his daddy	35	66
3810	Grab a drink, grab a glass	45	66
3819	Hoe! Hoe! 	54	66
3829	Treat me like the Prince and this my sweet brother Numpsay	7	68
3838	Maybe you could be my intern	16	68
3845	Even your superficial raps is super-official"	23	68
3854	Knock knock, who's there? Killa Cam, Killa who?	32	68
3861	Dag, niggas still doing puff-puff-pass	39	68
3870	Yes I know you wanna see my demise	48	68
3877	The whole West Side I explore with the Bimmer now	55	68
3886	But since they got afoul on, what could've gone wrong?	64	68
3894	But looking back now, I should've gone to the crib	72	68
3903	So the powers that be won't let me get my ideas out	81	68
3911	Man, if I could just get one beat on Hova	89	68
3920	I know I got it, I don't know what y'all on	98	68
3928	Inspiration for they life, they souls, and they songs	106	68
3936	Diamonds are forever (forever, forever, forever)	6	69
3944	he write his own rhymes, so sort of	14	69
3169	And gram keep praying and keep believing	31	52
3179	Uh, and I heard 'em say	42	52
3188	And nothing's ever promised tomorrow today	50	52
3198	Now let's go, take 'em back to the plan	7	53
3208	In that accident, 'cause this must be heaven	17	53
3226	Sure enough, I sent the plane tickets but when she came to kick it, things became different	35	53
3237	Guess who's on third?	45	53
3250	So, I represent the first	59	53
3263	Sky, uh, sky high	73	53
3271	She take my money when I'm in need	0	54
3278	But she ain't messin' wit' no broke niggas	7	54
3286	Far as girls you got a flock, I can tell by your charm	15	54
3293	If you fuckin' with this girl then you better be paid	23	54
3303	 Get down girl, go 'head get down	32	54
3312	Win the Super Bowl and drive off in a Hyundai	41	54
3318	Holla we want prenup (We want prenup!)	47	54
3328	 Get down girl, go 'head get down	57	54
3337	He got that ambition, baby, look at his eyes	66	54
3346	 Get down girl, go 'head	75	54
3353	Down the street from Calumet, a school for the Stones	6	56
3362	Left him with a little somethin, sixteen he was stuntin'	15	56
3370	One of the reasons I looked up to him crazy	23	56
3379	Drive slow, homie	32	56
3387	I'm on a mission for dime-pieces and sexy ladies	40	56
3396	Ridin' something candy coated, crawling like a caterpillar	49	56
3404	(My car's like the movie, my car's like the crib	57	56
3414	They see me, hoes actin like they seen a king	67	56
3423	You need to pump your brakes and drive slow, homie	76	56
3431	Rubber band together in cashless bundles	7	57
3441	Behold the pale horse got me trapped like R. Kell, I bail and it	16	57
3450	(That's that crack music nigga	2	58
3456	Crack raised the murder rate in D.C. and Maryland	8	58
3465	That real black music nigga	17	58
3473	George Bush got the answers	25	58
3482	And this is the soundtrack	34	58
3490	Happen, happen	42	58
3504	And now we ooze it through they nooks and crannies	56	58
3518	I'm arguin like, "What kind of doctor can we fly in?"	7	59
3526	She asked me, "Can you sign some T-shirts?"	15	59
3533	If she gon' pull through, we gon' find out soon but right now she asleep, sleep, sleep	22	59
3541	'Cause with my family we know where home is so instead of sending flowers, we're the roses	31	59
3549	Can't wait for the clouds to break	38	59
3558	Mm mmm mm mm-mm mm-mm	47	59
3567	Always knew that one day, they'd try to bring me down	2	60
3575	'Cause when I was barely livin', that's what kept me alive	12	60
3585	Dawg, if I was you, I'd kill myself	22	60
3594	Forgetting where the hell I met ya	31	60
3603	Man, I tried to stop man, I tried the best I could	3	61
3612	Roll up the doja, Henny and Coca-Cola	12	61
3621	Then I'll get the lotion, and do somethin' to me, when your thighs is exposed	21	61
3630	But (You make me smile)	30	61
3639	Let's say all your friends, remember the one	39	61
3648	Maybe, baby, baby	48	61
3657	Towel under the door, we smoke until the day's end	5	63
3665	We major? C'mon homie we major	13	63
3673	Niggas hats broke off, that's how we grow up	21	63
3681	If my tips helped send a pretty girl through school	29	63
3690	Puff, puff and pass, don't fuck up rotation	38	63
3697	We major? C'mon homie we major	45	63
3706	He said, "Nas what the fans want is Illmatic, Stillmatic"	54	63
3714	So y'all copped the LP's and y'all fiends got dealt	62	63
3722	Like better late than never is orientation	70	63
3730	Puff, puff and pass, don't fuck up rotation	78	63
3738	We major, (C'mon homie we major)	86	63
3750	Yeah, the Roc is definitely in the building	96	63
3757	If you know this part right here, feel free to sing along	105	63
3766	It's a celebration, bitches!	1	66
3775	What you want some petron?	10	66
3784	You put a nigga to sleep, I'm tired of ya'll	19	66
3792	It's a celebration, bitches!	29	66
3803	Yep, we was praticing	38	66
3813	We hit the liquor store	48	66
3822	Wished I had told	0	68
3832	Says she want diamonds, I took her to Ruby Tuesdays	10	68
3841	Caught something on the Usher tour, he had to let it burn	19	68
3848	Said he couldn't rap, now he at the top with Doobie Long	26	68
3857	Well here's the deal, ma we going to the dealer, woo	35	68
3864	Y'all niggas wanna get in Cam's cerebellum	42	68
3873	Ask Abby, I hustle, brought weed to the Chi, shit	51	68
3880	Listen, homeboy, move on	58	68
3889	'Cause they got me thinking money might have gone to the Feds	67	68
3897	And heard a nigga talking shit so I had gone to the car	75	68
3906	Yeah, I romance the thought of leaving it all behind	84	68
3914	Sell drugs or get a job, you gotta play your role	92	68
3923	But if they ever flip sides like Anakin	101	68
3931	They won't leave in the night	1	69
3939	Close your eyes and imagine, feel the magic	9	69
3947	Damn, is he really that caught up?	17	69
3956	Diamonds are forever (forever, forever)	26	69
3964	Alicia Keys tried to talk some sense to them	34	69
3972	When he came, in the game, he made his own lane	42	69
3980	My father Ben said I need Jesus	50	69
3989	After debris settles and the dust get swept off	59	69
3997	People askin' me if I'm gon' give my chain back	67	69
3495	That's that crack music, crack music	48	58
3500	And to atone, I throw a little somethin' somethin' on the pulpit	53	58
3510	We gon' keep baggin' up this here crack music	62	58
3516	Tell her everything gon' be fine, but I be lyin'	5	59
3523	That's where I get my confidence from	13	59
3530	Can't wait for the clouds to break	20	59
3539	Feel like Amerie, it's just one thing when they said that she made it you see they eyes gleam	29	59
3546	I smile when roses comes to see me	36	59
3555	No, can't wait, for, for a sunny day	45	59
3563	I always knew that one day, they'd try to bring me down, way down, way down	0	60
3573	Hater niggas marry hater bitches and have hater kids	10	60
3583	Wasn't around when I couldn't feed myself	20	60
3592	What kinda dream we found?	29	60
3601	Why everything that's supposed to be bad make me feel so good?	1	61
3610	She's got a lover, so the lies, and the lust, is a rush	10	61
3619	We get the closest when you high, or you drunk, or you blown	19	61
3628	Everything they told me not to is exactly what I would	28	61
3637	I just wanted to ask you	37	61
3646	I just let it be, I mean you, her and me (You make me smile with my heart, oh)	46	61
3655	I take a hit of that chronic, it got me stuck	3	63
3663	Cool out, thinkin' we local, c'mon homey we major	11	63
3671	And you pray to God she don't grow breasts too soon	19	63
3679	Gon' be your whole family on that funeral line	27	63
3688	But really what's amazin' is how I keep blazin'	36	63
3695	Cool out, thinkin' we local, c'mon homey we major	43	63
3704	At the studio console, asked my man to the right	52	63
3712	And it hurts to see these companies be stealin' the life	60	63
3720	Yeah, yeah, yeah yeah	68	63
3728	But really what's amazin' is how I keep blazin'	76	63
3736	We major? (C'mon homie we major)	84	63
3746	I'mma be late though	94	63
3755	So they ask me, why you call it "Late Registration" Ye?	103	63
3764	Yeah	112	63
3773	"I never did this before..."	8	66
3782	Right now I need you to mute all the monologue	17	66
3791	And we about to let it blow.	27	66
3801	And tell him that you had a phatty	36	66
3811	After that I grab your ass.	46	66
3820	We lookin' for some	55	66
3830	(Brother Numpsay) Groupies say I'm too choosy	8	68
3839	And in turn, I'll show you how I cook up summer in the winter	17	68
3846	Roc pastel with Gucci on	24	68
3855	Killa Cam, hustler, grinder, guerilla true	33	68
3862	Pull the truck up fast and I tell em	40	68
3871	Yeah you church boy, acting like a thief in disguise	49	68
3878	We striving home	56	68
3887	Now they asking Cons, "How long has this gone on?"	65	68
3895	And rented  'cause I'd a-gone in by ten	73	68
3904	And that make me wanna get my advance out	82	68
3912	We could get up off this cheap-ass sofa	90	68
3921	I'mma open up a store for aspiring emcees	99	68
3929	They said, "Sorry, Mr. West is gone"	107	68
3937	The Roc is still alive every time I rhyme.	7	69
3945	I think 'em	15	69
3954	Excuse me,	24	69
3962	Couldn't nobody cure me	32	69
3970	You gotta love it though somebody still speaks from his soul	40	69
3978	Girl ain't give me no ass, ya need to go down	48	69
3984	Take your diamonds and throw 'em up like you bulimic	57	69
3995	Bottle after bottle 'till we got messed up	65	69
4003	R-r-r-right here stands a-man	73	69
4011	Diamonds are forever (forever, forever, forever)	81	69
4015	I'll be late for that, I can't wait for that	6	70
4026	Yeah, I hear the alarm, yeah, I hear ya mom	14	70
4035	I went to junior high with all of them and they been slow	23	70
4042	If you had a taste of that, you'd probably pay for that	31	70
4056	Baby it's too late for that, lately I've been takin' it slow	44	70
4062	Hm, I'll be on time for that	50	70
4073	I'll be late for that	61	70
4080	Hallelujah, God (Yes, God)	6	71
4088	This is a God dream	15	71
4097	You know we need it	23	71
4105	We on an ultralight beam	32	71
4114	And end my holy war	40	71
4121	So I look to the light	47	71
4129	I will field their questions, I will feel your pain	55	71
4136	I been this way since Arthur was anteater	62	71
4144	I hear you gotta sell it to snatch the Grammy	71	71
4159	Cause I bet that my ex looking back like a pillar of salt	85	71
4169	(Yes, God	95	71
4181	And I just want you to be proud of me.	4	65
4189	You fixed me up somethin' that was good for my soul	12	65
4198	Cause a nigga cheatin' tellin' you lies then I started to cry	21	65
4208	And Let me tell you what I'm about to do, Hey Mama	31	65
4218	Things I gotta do, just to prove to you	41	65
4225	Hey Mama, I wanna scream so loud for you, cause I'm so proud of you	48	65
4235	Tell your job you gotta fake 'em out	58	65
4244	And Let me tell you what I'm about to do, Hey Mama.	67	65
4255	My mama mama mama.	76	65
4270	Wake up, nigga, wake up	2	75
4283	Might not come when you want but I'm on time	19	75
4295	You borrow our motto	27	75
4303	I've been outta my mind a long time	35	75
4311	Man, Jay, they don't really want no problems	43	75
4329	We only makin' the highlights	8	77
4338	We only makin' the highlights	17	77
3534	My mama say they say she could pass away anyday	23	59
3543	I smile when Rosie comes to see me	32	59
3550	I smile when Rosie come to see me	39	59
3559	Oh, oh, oh, oh, no, no, say	48	59
3568	Way down, they'd try to bring me down	3	60
3576	Just the thought that maybe it could be better than what we at at this time	13	60
3586	Made a mil' myself and I'm still myself	23	60
3595	And try to bring me down	32	60
3604	But (You make me smile)	4	61
3613	Then I'm co coming over 'cause it's never over	13	61
3622	There's no turning back now, I mean I don't mean to impose	22	61
3631	You make me smile	31	61
3640	You said if you ever she would be the one	40	61
3649	Baby, baby	49	61
3658	Puff, puff and pass, don't fuck up rotation	6	63
3666	We major, c'mon homie we major	14	63
3674	Why else you think shorties write rhymes just to blow up?	22	63
3682	That's all I want, like winos want they good whiskey	30	63
3691	Hpnotiq for Henny? Now nigga that's a chaser	39	63
3698	We major, c'mon homie we major	46	63
3707	Looked at the pad and pen, fell, and jotted what I feel	55	63
3715	I'm Jesse Jackson on the balcony when King got killed	63	63
3723	Still we can make it better throwing all your cares away	71	63
3731	Hpnotiq for Henny? Now nigga that's a chaser	79	63
3739	We major	87	63
3751	GOOD Music's definitely in the building	97	63
3758	Feeling better than I ever felt before today (If you feelin' good)	106	63
3767	Grab a drink, grab a glass	2	66
3776	I got that.	11	66
3785	Right now the Louis Vuitton Don is signing off	20	66
3793	Grab a drink, grab a glass	30	66
3804	'Til one day your ass bust through the packaging	39	66
3814	Got some Cris and some Mo	49	66
3823	Ooh was the only one (Uh oh)	1	68
3833	If we up in Fridays, I still have it my way	11	68
3842	Plus he already got three children	20	68
3849	'Cause I dookied on any song that they threw me on, gone	27	68
3858	No concealing, no ceiling I don't need a roof	36	68
3865	An old man just gon' tell em, "Too late, he's gone"	43	68
3874	And that ain't even a lie, please believe me	52	68
3881	That's your best bet, why's that, Cons?	59	68
3890	So I had gone to the dread, but he had gone up to bed	68	68
3898	And now the judge is telling me that I had gone too far	76	68
3907	Kanye step away from the lime	85	68
3915	My dog worked at Taco Bell, hooked us up plural	93	68
3924	You'll sell everything including the mannequin	102	68
3932	I've no fear that they might	2	69
3940	Vegas on acid,	10	69
3948	I ask if you talkin' bout classics, do my name get brought up?	18	69
3957	Throw your diamonds in the sky if you feel the vibe	27	69
3965	30 minutes later seems there's no convincing them	35	69
3973	Now all I need is y'all to pronounce my name	43	69
3981	So he took me to church and let the water wash over my ceaser	51	69
3990	Big K pick up where young Hov left off	60	69
3998	That'll be the same day I give the game back	68	69
4006	Throw your diamonds in the sky if you feel the vibe	76	69
4021	So turn this motherfucker up only if it feels right	9	70
4029	Sorry Mr. West, there's no good classes and that's what yo' ass get	17	70
4039	Will I make it from the student loans to a Benzo?	26	70
4049	So turn this motherfucker up only if it feels right	37	70
4066	Yo, I'll be there in five minutes	52	70
4083	And that's it (Yes, God)	9	71
4100	Pray for Paris	26	71
4115	I'm tryna keep my faith	41	71
4131	They don't know, they don't know	57	71
4150	This is my part, nobody else speak	74	71
4158	I laugh in my head	84	71
4168	Everything	94	71
4191	You work late nights just to keep on the lights	14	65
4200	I said Mommy I'm a love you so you don't hurt no more	23	65
4210	And I appreciate what you allowed for me	33	65
4227	I know I act a fool but I promise you I'm goin' back to school	50	65
4237	To a restaurant, upper echelon	60	65
4246	I wrote this song just so you know no matter where you go my love is true.	69	65
4262	My mama mama mama.	85	65
4277	Y'all sleeping on me, huh? Had a good snooze?	9	75
4282	I’ve been saying how I feel at the wrong time	18	75
4294	Follow our father	26	75
4302	I've been outta my mind a long time	34	75
4310	If Hov J then every Jordan need a Rodman	42	75
4320	You want me to give you a testimony about my life, and how good he's been to me. I don't know what to tell you about him, I love him so much with all my heart and my soul with every bone in my body I love him so much because he's done so much for me. 	0	76
4328	High lights	7	77
4337	I just shot an amateur video; I think I should go pro	16	77
4347	Only problem is I'm rich	26	77
4356	If he ever talk to my son like an idiot	35	77
4363	She spent her whole check on some Christians	42	77
4371	You want a boss or an R&B nigga with a six pack?	50	77
4379	I want to know right know if you a freak or not	58	77
4385	Oh lord, oh lord	64	77
4394	Bad bitch, you dig that	8	78
4401	Can you bring your price down?	15	78
4409	Of this motherfuckin' dinner table?	23	78
4417	I smack her on her ass if she ghetto, I ain't gon' lie	31	78
4426	Side now, side down	40	78
4434	And now I look and look around and there's so many Kanyes	7	79
3821	Hoe! Hoe! Hoe!	56	66
3831	Take em to the show and talk all through the movies	9	68
3840	Aaron love the raw dog, when will he learn?	18	68
3847	With TV's in the ride, throw a movie on	25	68
3856	Oh my chinchilla blue, blue you ever dealt with a dealer	34	68
3863	Hey back in a touched up Jag shit	41	68
3872	Ain’t even my size, see the greed in my eyes	50	68
3879	I ride on chrome	57	68
3888	And maybe all this money might have gone to my head	66	68
3896	But I had gone with my friend, and we had gone to the bar	74	68
3905	And move to Oklahoma and just live at my aunt's house	83	68
3913	What the summer of the Chi got to offer an eighteen-year-old	91	68
3922	Won't sell 'em no dream, but the inspiration is free	100	68
3930	Diamonds are forever	0	69
3938	Forever ever? Forever ever? Ever, ever? Ever, ever? Ever, ever? Ever, ever?......	8	69
3946	That mean I forgot better shit than you ever thought up	16	69
3955	That's just the Henny, man, I smoke, I drink, I'm supposed to stop I can't because	25	69
3963	Only playa that got robbed but kept all his jewelry	33	69
3971	And wouldn't change by the change, or the game, or the fame, 	41	69
3979	Diamonds are forever (forever, forever)	49	69
3985	Yea the beat cold but the flow is anemic	58	69
3996	In the studio, where really though, yea he next up	66	69
4004	With the power to make a diamond with his bare hands...	74	69
4012	Little girl, please stop your crying	0	70
4018	I think I was made for that	7	70
4027	Yeah yeah, I don't want be broke when I'm thirty-one	15	70
4036	If I can catch the beat then slow down the tempo	24	70
4043	I'm comin' in when I feel like	32	70
4055	That night, that night, that night	43	70
4061	Or two dykes that look Christina Milian-like	49	70
4071	I'll be late for that	59	70
4079	Hallej- hand over Satan (Yes, Jesus)	4	71
4089	We on an ultralight beam	13	71
4095	Deliver us loving	21	71
4106	This is a God dream	30	71
4117	Why, oh why'd you do me wrong? (More)	43	71
4125	And I know that you'll take good care of your child	51	71
4134	Foot on the Devil's neck 'til they drifted Pangaea	58	71
4142	Tubman of the underground, come and follow the trail	67	71
4160	Ugh, cause they'll flip the script on your ass like Wesley and Spike	86	71
4170	Hallelujah)	96	71
4183	I wanna tell the whole world about a friend of mine	6	65
4202	And I'm a get you that mansion that we couldn't afford	25	65
4212	Hey Mama.	35	65
4229	And I just want you to be proud of me.	52	65
4247	Hey Mama.	70	65
4263	My mama mama mama.	86	65
4279	We bout to get this paper	11	75
4291	We 'bout to get this paper	23	75
4306	Fashion show in Gotham, I need another costume	38	75
4314	Hands up, we just doing what the cops taught us	46	75
4322	High lights	1	77
4332	Tell my mama, tell my mama, that I only want my whole life to only be highlights	11	77
4341	One life, one night	20	77
4350	I'm about that Farrakhan	30	77
4359	Advice to all my niggas, impregnate Bridget	38	77
4376	I need every bad bitch up in Equinox	55	77
4389	Rah, rah	3	78
4404	What the fuck right now?	18	78
4412	Shut down the whole party	26	78
4420	I want it right now	34	78
4429	I hate the new Kanye, the bad mood Kanye	2	79
4440	Turn it up!	0	80
4445	And I be talkin' shit like	4	80
4452	I don't need to own it	11	80
4460	The feelings don't really go away	19	80
4468	Baby I don't, I don't need to own you	27	80
4476	Ooh baby, ooh baby	35	80
4483	I been living without limits	3	81
4492	Before I lose half of what I own	12	81
4500	Can't let them get to me	20	81
4506	This nigga when he off his Lexapro	26	81
4513	But you ain't finna be raising your voice at me	33	81
4530	Throw them, throw them away	50	81
4543	And forget all your cares	63	81
4558	In town for a day, what the fuck we doin'?	11	82
4581	I guess I get what I deserve, don't I?	26	82
4594	How many of us? How many of us are real friends	47	82
4610	Real friends	63	82
4625	Lost and, found out	8	83
4642	You gotta let me know if I could be your Joseph	25	83
4660	Cover Nori in lambs' wool	43	83
4669	I'm mixed now, fleshed out	52	83
4679	Swizz told me let the beat rock	4	74
4689	They mad they're still nameless	14	74
4698	From the very start	23	74
4708	I just copped a jet to fly over personal debt	33	74
4723	Bam bam, bam bam	48	74
4739	To the left, to the right	64	74
4754	My ex says she gave me the best years of her life	4	86
4770	But still drove 30 hours to you	20	86
4786	Girl it's 5 in the morning	35	86
4798	Yeah, this the type of shit you ride out to	48	86
4812	Now a nigga mad, now a nigga, uh	62	86
4820	30 hours	70	86
4828	Just did that Madison Square Garden	78	86
4836	30 hours	86	86
4844	Let that mothafucka rock, let that, let that, yeah	94	86
4856	The story of my lifetime	1	88
4862	Yeezy, Yeezy, Yeezy just jumped over Jumpman	7	88
4879	Yeezy in the house and we just got appraised	24	88
4894	(We did)	39	88
3836	What you rappers could get is a job from me	15	68
3844	"Damn Ye it'd be stupid to diss you	22	68
3852	(Killa, I ride on chrome)	31	68
3860	Poof be gone, damn tough luck dag	38	68
3868	Came back, read what the sign say, "Too late, he's gone)	47	68
3876	You can ask George or Regina	54	68
3885	Guess it's only right that I should help her from now on	63	68
3893	And gone to the spots where they go to get mixed drinks	71	68
3902	I'm ahead of my time, sometimes years out	80	68
3910	Or dealerships asked me, "Benz or Rover"	88	68
3919	They claim you never know what you got till it's gone	97	68
3927	Shorties at the door 'cause they need more	105	68
3935	Throw your diamonds in the sky if you feel the vibe	5	69
3943	It take more than a magazine to kill my Vibrate does	13	69
3952	If you're a stripper named Porscha and you get tips from many men	22	69
3960	Forever ever? Forever ever? Ever, ever? Ever, ever? Ever, ever? Ever, ever?......	30	69
3968	Who complains about what he is owed?	38	69
3976	Back in the Chi - them folks ain't from Motown	46	69
3983	You know who you can call you gotta best believe it	55	69
3993	A&R's lookin' like "Pssh we messed up"	63	69
4001	"What's up with you and Jay, man, are y'all ok man?"	71	69
4009	Forever ever? Forever ever? Ever, ever? Ever, ever? Ever, ever? Ever, ever?......	79	69
4014	I'm comin' in when I feel like	4	70
4024	Stop all your blood clot cryin', I was flyin'	12	70
4031	With all the rest of the motherfuckers underachievin'	21	70
4041	'Cause I'll be late for that	29	70
4057	Try and make it to the party 'fore the guest list close	45	70
4067	Been bullshittin' but I finally arrived with it	55	70
4081	We don't want no devils in the house, God (Yes, Lord)	7	71
4090	This is a God dream	16	71
4098	You know we need it	24	71
4107	This is a God dream	33	71
4116	So why send depression not blessings?	42	71
4130	They don't know, they don't	56	71
4137	Now they wanna hit me with the woo wap the bam	63	71
4145	Let's make it so free and the bars so hard	72	71
4153	If they don't wanna ride I'mma still give them raincoats	79	71
4162	Look at lil Chano from 79	88	71
4173	But I'm looking for more	99	71
4177	Hey Mama, I wanna scream so loud for you, cause I'm so proud of you	0	65
4185	I'm finna take ya'll back to them better times	8	65
4194	Michael Jackson leather and a glove, but didn't give me a curl	17	65
4204	Highly capable, lady that's makin loot	27	65
4214	My mama told me "Go to school get your doctorate."	37	65
4222	Can't you see, you're like a book of poetry	44	65
4231	I guess it also depends though, if my ends low	54	65
4240	Tell me the perfect color so I make it just right	63	65
4249	Hey Mama.	72	65
4259	My mama mama mama.	80	65
4265	My mama mama mama.	88	65
4272	Money never made me	4	75
4281	Seem like the more fame, I only got wilder	13	75
4289	Y'all sleeping on me, huh? Had a good snooze?	21	75
4293	Name one genius that ain't crazy	25	75
4301	It's time to get the paper	33	75
4309	Rich slave in the fabric store picking cotton	41	75
4319	You get a jet! You get a jet! Big booty bitch for you! Woo!	51	75
4327	Tell my baby I'm back in town	6	77
4336	So I could play that shit back in slo-mo	15	77
4346	Yeah, he might have hit it first	25	77
4355	I'ma bust a coach's head open on some Diddy shit	34	77
4362	Even though they know Yeezus is a Christian hah?	41	77
4370	What you want?	49	77
4378	I need every bad bitch up in Equinox	57	77
4384	I want to know right know if you a freak or not	63	77
4393	You're my freak dreams	7	78
4400	I done asked twice now	14	78
4408	What if we fucked right in the middle	22	78
4416	You motherfuckers living like half of your level, half of your life	30	78
4425	I'm with niggas that have been to your side now	39	78
4432	See I invented Kanye, it wasn't any Kanyes	6	79
4438	And I love you like Kanye loves Kanye	13	79
4444	Yeah I'm the one your bitch like	3	80
4451	Let me crash here for the moment	10	80
4459	Even when somebody go away (turn it up!)	18	80
4466	Let me crash here for a moment	26	80
4474	No lie	34	80
4482	So I can't jeopardize that for one of these hoes	2	81
4491	Give up the women	11	81
4497	They wish I would go ahead and fuck my life up	19	81
4504	You ain't never seen nothing crazier than	25	81
4512	Now we finna lose all self-control	32	81
4519	And I...	39	81
4524	They wish I would go ahead and fuck my life up	44	81
4531	Don't stop your loving	51	81
4538	They don't wanna see me love you	58	81
4544	Throw them, throw them away	64	81
4552	I cannot blame you for havin' an angle	5	82
4559	Who your real friends? We all came from the bottom	12	82
4565	Even when we was young I used to make time	20	82
4570	Talked down on my name, throwed dirt on him	27	82
4576	Couldn't tell you much about the fam though	32	82
4584	Like I ain't got enough pressure to deal with	37	82
4587	Oh you've been nothin' but a friend to me	40	82
4595	To real friends, 'til the reel end	48	82
4604	You say, "I'm good" then great, the next text they ask you for somethin'	57	82
4611	Huh?	64	82
3953	Then your fat friend her nickname is Minivan	23	69
3961	I was sick about awards	31	69
3969	And throw a tantrum like he is three years old	39	69
3977	Life movin' too fast I need to slow down	47	69
3988	The Roc stand tall and you would never believe it	56	69
3994	Grammy night, damn right, we got dressed up	64	69
4002	They pray for the death of our dynasty like Amen	72	69
4010	Diamonds are forever (forever, forever)	80	69
4019	So turn this motherfucker up only if it feels right	5	70
4025	Made it to school with barely enough time to sign in	13	70
4034	Man, this is a insult	22	70
4048	I'll be late for that, baby I'll wait for that	30	70
4065	I ain't thought of no line that could rhyme with that	51	70
4082	We want the lord (Yes, Jesus)	8	71
4099	That's why we need you now, oh, I	25	71
4108	This is a God dream	34	71
4118	You persecute the weak	44	71
4126	Oh, no longer am afraid of the night	52	71
4132	I'm moving all my family from Chatham to Zambia	59	71
4141	I made Sunday Candy, I'm never going to hell	68	71
4151	Glory be to God, yeah	77	71
4167	This is everything	93	71
4174	Somewhere I can feel safe	100	71
4179	And Let me tell you what I'm about to do, Hey Mama	1	65
4186	I'm gonna talk about my mama if ya'll don't mind	9	65
4195	And you never put no man over me	18	65
4205	A livin' legend too, just look at what heaven do	28	65
4213	Somethin' to fall back on, you could profit with	38	65
4221	Maya Angelou, Nicky Jovanni, turn 1 page and there's my Mommy	45	65
4232	Second they get up you gon' get that Benzo	55	65
4241	It don't gotta be Mother's Day, or your birthday	64	65
4250	Hey Mama.	73	65
4257	My mama mama mama.	81	65
4278	Wake up, nigga, wake up	10	75
4290	Wake up, nigga, wake up	22	75
4307	PETA's mad cause I made a jacket outta possum	39	75
4315	Hands up, hands up, then the cops shot us	47	75
4323	Tell my baby I'm back in town	2	77
4333	Can we play that back one time?	12	77
4342	High lights	21	77
4351	Life is a marathon	31	77
4366	Hard to believe in God, your nigga got killed	45	77
4382	I want to know right know if you a freak or not	61	77
4398	My dick out, can she suck it right now?	12	78
4414	Would everybody start fuckin'?	28	78
4431	I miss the sweet Kanye, chop up the beats Kanye	4	79
4443	I'm the one your bitch like	2	80
4458	Bird can't fly in a cage (turn it up!)	17	80
4475	No lie	33	80
4490	To make this my mission	10	81
4505	One last thing I need to let you know	24	81
4517	Cause I'm from a tribe called check a hoe	38	81
4529	Only I can mention me	47	81
4542	See through the veil	62	81
4557	Spillin' free wine, now my tux is ruined	10	82
4579	Word on the streets is they ain't heard from him	25	82
4592	Niggas ain't real as they pretend to be	45	82
4600	Just to see how you was feelin'	53	82
4609	Paid that nigga 250 thousand just to get it from him	62	82
4616	Talked down on my name, throwed dirt on him	69	82
4631	You too wild, you too wild	14	83
4640	You too wild, and I need you now	23	83
4648	I know it's corny bitches you wish you could unfollow	31	83
4657	Thuggin', hustlin' before you met your husband?	40	83
4666	The rings all ring out	49	83
4676	Kinda hard to love a girl like me	1	74
4686	If you see 'em in the streets give 'em Kanye's bests	11	74
4695	Yeah we still hood famous	20	74
4706	Last month I helped her with the car payment	30	74
4713	I just wanted you to know	39	74
4722	Let me see your middle finger in the air	47	74
4728	How you feelin', how you feelin, how you feelin' in this mother fucker, god damn	53	74
4737	Bam bam, bam bam	62	74
4744	Bam bam dilla, bam bam	69	74
4752	You say you never saw this comin', well you're not alone	2	86
4759	But it's blurry enough to get the fake out	9	86
4767	You was the best of all time at the time though	17	86
4775	Expedition was Eddie Bauer edition	25	86
4783	Got a hotel room, 3 stars for you	33	86
4789	And I drove back 30 hours	42	86
4795	3 Stacks, can you help me out?	46	86
4802	Now a nigga mad	52	86
4808	I'm about to drive 90	58	86
4816	Duh-duh with you, yeah	66	86
4824	Just ride out to that	74	86
4832	30 hours	82	86
4840	Whole design team, Yeezy team, music team	90	86
4847	The media be after us	98	86
4852	30 hours	104	86
4860	(Perfect!)	5	88
4864	Herzog and Adidas, man you know they love it	11	88
4869	I stuck to my roots, I'm like Jimmy Fallon	17	88
4876	On the field I'm over-reckless, on my Odell Beckham	21	88
4882	10 thousand dollar fur for Nori, I just copped it (Yo!)	27	88
4889	Yeezy, Yeezy, Yeezy, this is pure luxury	34	88
4897	Did he forget the names just like Steve Harvey? (Yo!)	42	88
4904	Yeezy, Yeezy, take a picture with me on Rodeo	49	88
4912	Timbuck2, Timbuck2, Timbuck2	57	88
4920	I feel it's fadin'	3	89
4928	I feel it	11	89
4933	Your love is fadin'	18	89
4941	I wanna	25	89
4946	Your love is fadin'	31	89
4005	Diamonds are forever (forever, forever)	75	69
4013	'Cause I'll be late for that	1	70
4020	So I'm comin' in when I feel like	8	70
4028	They said the best classes go to the fastest	16	70
4037	Just throw this at the end if I'm too late for the intro	25	70
4044	So turn this motherfucker up only if it feels right	33	70
4054	And when you get back she gon' start up a fight	42	70
4060	Like them eskimos, what would you do for a Klondike?	48	70
4074	(Yes, God)	0	71
4091	This is everything	17	71
4109	This is everything	35	71
4119	Because it makes you feel so strong	45	71
4127	Cause I, I look to the light	53	71
4133	Treat the demons just like Pam	60	71
4143	I met Kanye West, I'm never going to fail	69	71
4157	You know that a nigga was lost	83	71
4166	This is a God dream	92	71
4172	(Yes, Jesus)	98	71
4176	Faith, more, safe, war	103	71
4184	This little light of mine and I'm finna let it shine	7	65
4193	And you would give anything in this world	16	65
4203	See your unbreakable unmistakable	26	65
4215	Forrest Gump mama said, life is like a box of chocolates	36	65
4220	Give me a verse of "You Are So Beautiful To Me?"	43	65
4230	Hey Mama.	53	65
4239	Just tell me what kind of S-Type Donda West like?	62	65
4248	Hey Mama.	71	65
4256	My mama mama mama.	79	65
4264	My mama mama mama.	87	65
4271	We bout to get this paper	3	75
4280	Pablo bought a Roley and a rottweiler	12	75
4287	Ayy, y'all heard about the good news?	20	75
4292	I can’t let these people play me	24	75
4300	Wake up, nigga, wake up	32	75
4308	Awesome, Steve Jobs mixed with Steve Austin	40	75
4318	You know what that mean? You get a fur! You get a fur!	50	75
4326	High lights	5	77
4335	Sometimes I'm wishin' that my dick had GoPro	14	77
4345	If we ain't love the same bitch	24	77
4354	I'ma turn up every time	33	77
4361	Got the Fruit of Islam and the trenches hah?	40	77
4369	So when I'm on vacay, I need to kick back	48	77
4377	I want to know right know if you a freak or not	56	77
4383	Bad bitch up in Equinox	62	77
4392	You're my freak dreams	6	78
4399	Fuck, can she fuck right now?	13	78
4407	What if we fuck right now?	21	78
4415	Would everybody start fuckin'? They don't want nothin'	29	78
4424	Right now, right now	38	78
4433	I gotta to say at that time I'd like to meet Kanye	5	79
4441	That's all it was Kanye, we still love Kanye	12	79
4457	Sun don't shine in the shade (turn it up!)	16	80
4473	I'm still gon' be here in the morning	32	80
4489	God, I'm willing	9	81
4503	See, before I let you go	23	81
4518	Yeah, I'mma have the laugh in the end	37	81
4526	And even though I always fuck my life up	46	81
4533	No, not for nothing	53	81
4540	They don't wanna see me love you	60	81
4546	Oh, the body's a feeling	66	81
4554	Hope you're doin' your thing too	7	82
4561	Damn I forgot to call her, shit I thought it was Thursday	14	82
4572	Even for my...	22	82
4583	You wanna ask some questions 'bout some real shit?	36	82
4593	Lookin' for all my real friends	46	82
4601	How many?	54	82
4618	Lost out, beat up	0	83
4633	Got to love you	16	83
4650	I know it's corny bitches you wish you could unfollow	33	83
4659	When she met Joseph around hella thugs?	42	83
4668	Blackened to dark out	51	83
4678	I just wanted you to know	3	74
4688	God damn	13	74
4697	I loved you better than your own kin did	22	74
4707	We never gonna die, whoo!	32	74
4716	Bam bam dilla, bam bam	41	74
4731	Bam bam, bam bam	56	74
4747	From the very start	72	74
4762	Yep, then I made myself a smoothie	12	86
4776	I'm drivin' with no winter tires in December	26	86
4785	You call down for an omelet	34	86
4794	Always turn, oh	45	86
4805	Just to kill..	55	86
4811	30 hours	61	86
4819	Ay, woop him after school	69	86
4827	That's why they kick it off like this	77	86
4835	Let's rock out for 'bout	85	86
4843	30 hours	93	86
4850	Yo Gabe	101	86
4863	(Yo!)	8	88
4878	I've been trending years, y'all a couple days	23	88
4893	And we made a million a minute, we made a million a minute	38	88
4907	I need extra deep, I like my bitches extra thick (sonic boom!)	52	88
4915	Ha, ha, ha, look how far we are, are, are, are, are, are, are	60	88
4923	I think I think too much	6	89
4937	Roll up, roll up	20	89
4953	I feel it	36	89
4963	I just fade away	46	89
4973	I just need to know	57	89
4983	Deep, deep, down inside	66	89
4995	I feel it	79	89
5002	Oh, I get lifted, yes	85	89
5006	Oh, I get lifted, yes	89	89
5014	Stack ya' money till it get sky high	3	92
5022	Took nothin' from no man, man, I'm my own man	11	92
5028	'Cause this summer they ain't finna say, "Next summer I'm finna"	18	92
5034	So we forced to sell crack, rap, and get a job	23	92
5039	We wasn't s'posed to make it past twenty-five	28	92
4152	I'mma make sure that they go where they can't go	78	71
4161	You cannot mess with the light	87	71
4171	I'm tryna keep my faith	97	71
4182	Hey Mama.	5	65
4190	Famous homemade chicken soup, can I have another bowl?	13	65
4199	As we knelt on the kitchen floor	22	65
4209	I know I act a fool but I promise you I'm goin' back to school	32	65
4219	You was gettin' through, can the choir please	42	65
4226	And Let me tell you what I'm about to do, Hey Mama	49	65
4236	Since you brought me in this world, let me take you out	59	65
4245	You know I love you so and I never let you go	68	65
4253	My mama mama mama.	77	65
4261	My mama mama mama.	84	65
4268	Ayy, y'all heard about the good news?	0	75
4275	Even if the money low, can't play me	7	75
4286	I've been outta my mind a long time	16	75
4296	I'm a Chicago south sider	28	75
4305	I know, I know, I shouldn’t even bother	36	75
4312	Driving in the same car that they killed Pac in	44	75
4330	Tell my mama, tell my mama, that I only want my whole life to only be highlights	9	77
4339	We only makin' the highlights	18	77
4348	21 Grammys, superstar family	28	77
4357	One time for a nigga really gettin' it	36	77
4364	And that girl ain't even religious	43	77
4372	I need every bad bitch up in Equinox	51	77
4380	Oh lord, oh lord	59	77
4386	This that rap god shit nigga	0	78
4395	Get stacks, drive cars	9	78
4402	Lil Boosie with the wipe down	16	78
4410	What if we just fucked at the Vogue party	24	78
4418	We be in the bathroom fucking like baby don't get too loud	32	78
4427	I miss the old Kanye, straight from the 'Go Kanye	0	79
4439	I used to love Kanye, I used to love Kanye	8	79
4450	Waves don't die	9	80
4467	Waves don't die, baby	25	80
4481	For my, lady	1	81
4498	Revealing the layers to my soul	18	81
4511	Told you four times, don't test me, hoe	31	81
4523	Only I can mention me	43	81
4536	They always love it	56	81
4548	How many of us, how many jealous? Real friends	1	82
4556	Fuck the church up by drinkin' after communion	9	82
4563	When was the last time I remembered a birthday?	16	82
4569	I guess I get what I deserve, don't I?	24	82
4580	Maybe 15 minutes, took some pictures with your sister	34	82
4589	It's funny I ain't spoke to niggas in centuries	42	82
4597	To 3 A.M., callin'	50	82
4606	What's best for your family, immediate or extended	59	82
4613	I guess I get what I deserve, don't I	66	82
4622	Down there, dancin'	5	83
4628	How you turned out, how you turned out	11	83
4637	If your mama knew how	20	83
4645	We ain't trippin' on shit, we just sippin' on this	28	83
4654	You tried to play nice, everybody just took advantage	37	83
4663	'Fore she met Joseph with no love?	46	83
4673	We found out, we found out	56	83
4683	God damn	8	74
4692	But he just can't seem to get Kanye fresh	17	74
4702	I be Puerto Rican day parade floatin'	27	74
4711	Woke up and felt the vibe, whoo!	36	74
4720	Bam bam eh	45	74
4726	'ey what a bam bam	51	74
4735	Man it's way too late, it's way too late, it's way too late you can't	60	74
4742	'ey what a bam bam	67	74
4750	Baby lion goes	0	86
4757	Checkin' MediaTakeOut	7	86
4765	Ándale Ándale E.I, E.I, uh, oh	15	86
4773	I remember being nervous to do Victoria Secret	23	86
4781	Chicago, St. Louis, St. Louis to Chicago	31	86
4787	But you were suckin' a nigga's dick the whole time	40	86
4800	30 hours	50	86
4815	Duh-duh-duh-duh-duh-duh-duh-duh	65	86
4831	The pyramids shall rise	81	86
4846	To my family, thank you for holding me down	97	86
4858	Pain of a brother, your dirty mother	3	88
4868	But I'm all for the family, tell 'em, "Get your money"	14	88
4877	2020, I'ma run the whole election, yah!	22	88
4892	Plus Kimoji just shut down the app store, ah!	37	88
4909	Call up DJ Mano, shout out Twilite Tone	54	88
4924	Ain't nobody watchin'	8	89
4938	Hold up, hold up	21	89
4950	I feel it	34	89
4961	Ain't nobody watchin'	44	89
4971	I've been on my shit	54	89
4985	Yes, deep inside	68	89
4999	Oh, I get lifted, yes	81	89
5010	I feel it's fadin'	93	89
5018	"We don't care what people say"	7	92
5026	Man, you don't know, man	15	92
5038	Kids, sing, kids, sing	27	92
5051	'Round the same time, Doe ran up in dude house	41	92
5064	"We don't care what people say"	53	92
5072	Now tell my mama I belong in that slow class	61	92
5078	When we get them hammers, go on, call the ambulance	67	92
5085	Joke's on you, we still alive	74	92
5092	A muthafucker can't pull you across that muthafuckin' stage Kanye 	4	93
5101	I'm no longer confused but don't tell anybody. 	13	93
5109	Oh when it all, it all falls down (Southside, southside, we gon' set this party off right)	2	94
5116	Now, tell me that ain't insecure	9	94
5122	She's so precious with the peer pressure	15	94
5130	I'm tellin' you all, it all falls down (C'mon, c'mon)	23	94
5136	Then I spent four-hundred bucks on this	29	94
4188	Late December, harsh winter gave me a cold	11	65
4197	7 years old, I caught you with tears in your eyes	20	65
4207	Hey Mama, I wanna scream so loud for you, cause I'm so proud of you	30	65
4217	Now I feel like it's things I gotta get	40	65
4224	Now when I say "Hey" ya'll say "Mama" now everybody answer me.	47	65
4234	Hey Mama.	57	65
4243	I wanna scream so loud for you, cause I'm so proud of you	66	65
4252	My mama mama mama.	75	65
4260	My mama mama mama.	83	65
4267	My mama mama mama.	90	65
4274	Even if the money low, can't pay me	6	75
4285	Hands up, we just doing what the cops taught us	15	75
4298	Ayy, y'all heard about the good news?	30	75
4316	Hold on, hold on, hold on	48	75
4324	High lights	3	77
4334	And after that night I'm gon' wanna play shit back, I don't know	13	77
4343	Livin' the life 'til I die	22	77
4353	I'ma shift the paradigm	32	77
4367	Blac Chyna fuckin' Rob, help him with the weight	46	77
4374	I need every bad bitch up in Equinox	53	77
4391	Fire up, tweaking	5	78
4405	What the fuck right now?	19	78
4423	Rolls with killer money nigga get by now	37	78
4437	Called "I Miss The Old Kanye," man that would be so Kanye	11	79
4448	She wanna see if it'll fit right	7	80
4455	Let me crash here for a moment	14	80
4463	Let me crash here for the moment	22	80
4471	No lie	30	80
4488	I will die for those I love	8	81
4499	The layers to my soul	17	81
4510	Four times that you say don't text me hoe	30	81
4521	Can't let them get to me	41	81
4535	Nah, don't stop it	55	81
4551	Switched up the number, I can't be bothered	4	82
4566	Even to call your daughter on her FaceTime	19	82
4577	Plus I already got one kid	31	82
4590	To be honest, dawg, I ain't feelin' your energy	43	82
4598	How many real friends?	51	82
4607	Any argument, the media'll extend it	60	82
4614	Word on the streets is they ain't heard from him	67	82
4624	I found you, somewhere out	6	83
4629	If mama knew now	12	83
4638	You turned out, you too wild	21	83
4646	Just forget the whole shit, we could laugh about nothin'	29	83
4655	You left your fridge open, somebody just took a sandwich	38	83
4664	Cover Saint in lambs' wool	47	83
4674	We found out	57	83
4684	I made that bitch famous	9	74
4693	But we still hood famous	18	74
4703	That Benz Marina Del Rey coastin'	28	74
4714	No matter how hard they try, whoo!	37	74
4730	One thing you can't do it stop us now	55	74
4745	I just wanted you to know	70	74
4761	I hit the gym, all chest no legs	11	86
4779	Skrrt skrrt skrrt like a private school for women	27	86
4796	Cause you was in college complainin' about it's no jobs	39	86
4807	Just to...	57	86
4823	30 hours	73	86
4839	30 hours	89	86
4854	What's up?	103	86
4873	Yeezy, Yeezy, Yeezy, they line up for days	15	88
4886	Yeezy, Yeezy, Yeezy just jumped over Jumpman, ah!	31	88
4901	James Harden, Swaggy P runnin' up the budget (Yoga flame!)	46	88
4917	Your love is fadin'	0	89
4936	Fade away-ay-ay-ay	15	89
4960	Fuckin' with a real ass nigga	33	89
4977	I feel it	56	89
4993	Deep, deep, down inside	74	89
5013	Drug dealin' just to get by	2	92
5032	This is for my niggas outside all winter	17	92
5056	Scratchin' lottery tickets, eyes on a new house	40	92
5067	And they DCFS, some of 'em dyslexic	56	92
5081	Drug dealin' just to get by	70	92
5096	And I don't mean that in no nice way 	8	93
5115	Man I promise, she's so self-conscious	5	94
5125	Then she cut it all off, now she look like Eve	18	94
5139	Without some Ones that's clean and a shirt with a team	32	94
5146	And for that paper, look how low we a stoop	39	94
5149	I'm tellin' you all, it all falls down (C'mon, c'mon)	43	94
5160	But I ain't even gonna act holier than thou	53	94
5168	We all self-conscious, I'm just the first to admit it	60	94
5179	This grave shift is like a slave shift	72	94
5193	I've been workin' this graveshift and I ain't made shit	3	96
5201	They take me to the back and pat me askin' me about some khakis	11	96
5210	That's a Different World like Cree Summer's, I deserve to do these numbers	20	96
5219	And I didn't even try to work a job, represent the mob at the same time	29	96
5230	Put me on my feet, sound so sweet	40	96
5237	Aw man, this pressure	47	96
5242	I wish I could buy me a spaceship and fly (Heavens knows)	52	96
5251	Well easy come, easy go, how that saying goes	59	96
5260	Past the sky (Every night, every night)	70	96
5268	We at war	1	97
5274	Where restless (niggas) might snatch your necklace	7	97
5280	They be askin' us questions, harass and arrest us	13	97
5288	(Jesus walks) God show me the way because the devil trying to break me down 	21	97
5296	(Jesus walk with me) I wanna talk to God but I'm afraid because we ain't spoke in so long	29	97
5302	'Cause we're the almost nearly extinct	35	97
5318	(Jesus walk with me) The only thing that I pray is that my feet don't fail me now	51	97
5334	And when your feet cold, mines is sizzling	15	98
5349	And with that in my blood I was born to be different	30	98
4192	Mommy got me training wheels so I could keep on my bike	15	65
4201	And when I'm older, you ain't gotta work no more	24	65
4211	And I just want you to be proud of me.	34	65
4228	And I appreciate what you allowed for me	51	65
4238	I'm a get you a jag, whatever else you want	61	65
4254	My mama mama mama.	78	65
4269	Y'all sleeping on me, huh? Had a good snooze?	1	75
4276	Ayy, y'all heard about the good news?	8	75
4284	I've been outta my mind a long time	17	75
4297	I'm a Chicago south sider	29	75
4304	With all these gossiping, no-pussy-getting bloggers	37	75
4313	Driving in the same uh that they killed Pac in	45	75
4321	[Young Thug and Kanye West]	0	77
4331	We only makin' the highlights	10	77
4340	Tell my mama, tell my mama, that I only want my whole life to be mine	19	77
4349	We the new Jacksons, I'm all about that action	29	77
4358	Two times cause we got the whole city lit	37	77
4365	Walkin', livin', breathin', girl you know my past well	44	77
4373	I need to know right know if you a freak or not	52	77
4390	Close eyes, see things	4	78
4406	What the, what the fuck right now?	20	78
4422	You get hit with the pie now	36	78
4436	What if Kanye made a song about Kanye	10	79
4447	And she grabbin' on my dick like	6	80
4454	Waves don't die, baby	13	80
4462	Waves don't die	21	80
4470	No lie	29	80
4478	I'm still gon' be here in the morning	37	80
4485	I'm the only one that's in control	5	81
4494	About my vision	14	81
4502	Only I can mention me	22	81
4516	Cause I'm from a tribe called check a hoe	36	81
4528	And forget all of your cares	49	81
4541	They don't wanna see me love you	61	81
4547	Real friends, how many of us?	0	82
4555	I'm a deadbeat cousin, I hate family reunions	8	82
4562	Why you wait a week to call my phone in the first place?	15	82
4571	Real friends	23	82
4582	Merry Christmas, then I'm finished, then it's back to business	35	82
4588	Niggas thinkin' I'm crazy, you defendin' me	41	82
4596	'Til the wheels fall off, 'til the wheels don't spin	49	82
4605	How many?	58	82
4612	Real friends	65	82
4621	Lost and beat up	4	83
4627	Daddy, found out	10	83
4636	Right now, right now	19	83
4644	Don't trip, don't trip, that pussy slippery, no whip	27	83
4653	I know it's corny niggas you wish you could unswallow	36	83
4662	"What if Mary was in the club	45	83
4672	Life is precious	55	83
4682	Why? I made that bitch famous	7	74
4691	Her man in the store tryna try his best	16	74
4701	I just wanted you to know	26	74
4710	The sun is in my eyes, whoo!	35	74
4719	Bam bam dilla, bam bam	44	74
4725	Let me see you act up in this mother fucker	50	74
4734	'ey what a bam bam	59	74
4741	I wanna see everyone's hands in the air like this	66	74
4749	I just wanted you to know	74	74
4756	I wake up, assessin' the damages	6	86
4764	Chicago - St. Louis, St. Louis to Chicago	14	86
4772	Young producer just trying to get his flows off	22	86
4792	Only thing open is Waffle House, girl don't start with me	37	86
4806	Just to...	56	86
4822	Uh, 3 Stacks	72	86
4838	Ay, you know, ay, you know	88	86
4853	I'm just doing a... just doing an adlib track right now	102	86
4870	I done talked a lot of shit but I just did the numbers	10	88
4883	Your baby daddy won't even take your daughter shoppin' (Yo!)	28	88
4890	I give 'em grey poupon on a DJ Mustard, ah!	35	88
4898	Tell Adidas that we need a million in production (Yo!)	43	88
4905	Yeezy, Yeezy, Yeezy, I might do my own hotel	50	88
4913	Timbuck2, Timbuck2	58	88
4921	When no one ain't around	4	89
4930	Fade away	12	89
4947	I feel it	27	89
4958	I feel it's fadin'	41	89
4972	Whole world on my dick	55	89
4982	Oh, deep inside	65	89
4998	Deep, deep, down inside	78	89
5011	Oh yeah, I've got the perfect song for the kids to sing	0	92
5020	If this is your first time hearin' this	8	92
5043	The second verse is for my dogs workin' nine to five that still hustle	32	92
5050	Mama say she wanna move south	39	92
5066	When you stop the programs for after-school	55	92
5080	But we don't care what people say, my niggas	69	92
5097	Had little kids singin' about the shit, the joke's on you 	9	93
5111	She has no idea what she's doing in college	6	94
5127	Single black female addicted to retail and well	20	94
5141	But the people highest up got the lowest self-esteem	34	94
5150	(And when it falls down) Oh when it all	44	94
5165	I got a couple past due bills, I won't get specific	58	94
5176	I'm tellin' you all, it all falls down (Now Syleena, you just like a safe belt, you saved my life)	68	94
5187	When I die hallelujah bye and bye	8	95
5197	After I fuck the manager up then I'm gonna shorten the register up	8	96
5212	So many records in my basement, I'm just waiting on my spaceship, wow	22	96
5226	Putting them pants on shelves waiting patiently I ask myself	36	96
5232	Hope to see Freddie G., Yusef G, love my G	43	96
5243	Past the sky (Every night, every night)	53	96
5249	No more broad service, cars, and them TV shows	60	96
4223	Come on Mommy just dance with me, let the whole world see your dancing feet	46	65
4233	Tint the windows, ride around the city and let your friends know.	56	65
4242	For me to just call and say "Hey Mama."	65	65
4251	Hey Mama.	74	65
4258	My mama mama mama.	82	65
4266	My mama mama mama.	89	65
4273	Make me do something? Nah, can't make me	5	75
4288	Hands up, we just doing what the cops taught us	14	75
4299	Y'all sleeping on your boy, had a good snooze?	31	75
4317	Wait a second, everybody here, I'm the ghetto Oprah	49	75
4325	Tell everybody I'm back in town	4	77
4344	I bet me and Ray J would be friends	23	77
4360	Soon as she have a baby she gon' make another nigga	39	77
4375	I need to know right know if you a freak or not	54	77
4388	Aye, rah, rah, rah	2	78
4397	Tits out, oh shit	11	78
4413	Would everybody start fuckin'?	27	78
4421	All of my niggas gon' get it in Chi now	35	78
4430	The always rude Kanye, spaz in the news Kanye	3	79
4442	Step up in this bitch like (turn it up!)	1	80
4456	Baby I don't, I don't need to own...	15	80
4464	I don't need to own it	23	80
4472	You set the night on fire	31	80
4479	No lie	38	80
4486	I been feeling all I've given	6	81
4495	Pour out my feelings	15	81
4508	Remember that last time, the episode	28	81
4515	But I'mma have the last laugh in the end	35	81
4527	See through the veil	48	81
4534	They don't wanna see me love you	54	81
4550	But how many honest? Trust issues	3	82
4567	When was the last time I wasn't in a hurry?	17	82
4575	I got my own Jr. on the way, dawg	30	82
4586	Cause everybody got 'em, that ain't children	39	82
4603	I hate when a nigga text you like, "what's up, fam, hope you good"	56	82
4619	I found you, somewhere out	2	83
4634	Found you, found you	17	83
4651	I know it's corny niggas you wish you could unswallow	34	83
4670	There's light with no heat	53	83
4680	For all my Southside niggas that know me best	5	74
4699	I don't blame you much for wanting to be free	24	74
4717	'ey what a bam bam	42	74
4732	Bam bam dilla, bam bam	57	74
4746	I loved you better than your own kin did	71	74
4760	I wake up, all veggies no eggs	10	86
4768	Yeah, you wasn't mine though	18	86
4777	Then I get there and all the Popeye's is finished, girl	28	86
4784	I used the Western Union for you like it's no prob	38	86
4793	Better unsaid	44	86
4804	30 hours	54	86
4810	It was my idea and now a nigga	60	86
4818	You know what I'm sayin'? Drop some shit like that	68	86
4826	My favorite albums just have like bonus joints like this	76	86
4834	For all the moms, dads, the kids, the families that shared this moment with us	84	86
4842	This my version of a shout out track	92	86
4851	That's Gabe calling	100	86
4867	Yeezy, Yeezy, Yeezy, I feel so accomplished	9	88
4874	Every time I talk they say I'm too aggressive	19	88
4880	Nike, Nike treat employees just like slaves	25	88
4887	Yeezy, Yeezy, Yeezy just jumped over Jumpman	32	88
4896	Yeah, we made a million a minute, we made a million a minute, ah!	40	88
4902	Keep the work at my baby mama's mama's house	47	88
4910	We just blessed to be alive, yeah ain't that the truth?	55	88
4918	Your love is fadin'	1	89
4926	I feel it's fadin'	9	89
4932	I think I think too much	16	89
4940	I feel it	23	89
4945	Work the middle 'til it hurt a little	29	89
4955	Bitch better act like you know better	37	89
4965	You don't even know	48	89
4970	I've been runnin' 'round	52	89
4989	Oh, deep inside	72	89
5001	Yes, deep inside	84	89
5012	And all my people that's	1	92
5027	We don't care what people say	16	92
5037	Stack ya' money till it get sky high	26	92
5055	Couldn't get a job, so since he couldn't get work, he figured he'd take work	42	92
5065	You know the kids gon' act a fool	54	92
5079	Sometimes I feel no one in this world understands us	68	92
5095	You know what, you's a nigga 	7	93
5104	My daddy would kill me so don't tell anybody. 	16	93
5118	Sophomore, three yurrs, ain't picked a career	11	94
5123	Couldn't afford a car so she named her daughter Alexis	16	94
5131	(And when it falls down) Oh when it all	24	94
5137	Just to be like, "Nigga you ain't up on this"	30	94
5145	We trying to buy back our forty acres	38	94
5153	(And when it all falls down who you gonna call now?) 	42	94
5163	'Cause I want to be on 106 and Park pushin' a Benz	56	94
5173	I'm telling you all, it all falls down (Westside, westside, we gon' set this party off right)	66	94
5185	Oh I'll fly away, oh glory	6	95
5196	Man, man, man	6	96
5206	This fuckin' job can't help him so I quit, y'all welcome	16	96
5215	Past the sky (Every night, every night)	25	96
5223	Only one to ball, never one to fall, got to get mine, got to take mine	33	96
5239	I wish I could buy me a spaceship and fly (Heavens knows)	49	96
5254	Had to be a catastrophe with the fridges staring back at me	64	96
5262	I wish I could buy me a spaceship and fly (Heavens knows)	72	96
5271	(Jesus walk) God show me the way because the devil's tryna break me down	4	97
4352	Uh	27	77
4368	I wish my trainer would, tell me what I overate	47	77
4381	I need every bad bitch up in Equinox	60	77
4387	I rip every one of these motherfuckers down	1	78
4396	Whip out, bitch out	10	78
4403	A little woozy but I'm nice now	17	78
4411	Would we be the life of the whole party?	25	78
4419	I can, I can sing it, yeah	33	78
4428	Chop up the soul Kanye, set on his goals Kanye	1	79
4435	I even had the pink polo, I thought I was Kanye	9	79
4446	I ain't scared to lose a fistfight	5	80
4453	No lie	12	80
4461	That's just the wave (yeah)	20	80
4469	No lie	28	80
4477	You set the night on fire	36	80
4484	As far as my business	4	81
4493	I been thinking	13	81
4501	And even though I always fuck my life up	21	81
4507	Remember that last time in Mexico	27	81
4514	Especially when we in the Giuseppe store	34	81
4520	They wish I would go ahead and fuck my life up	40	81
4525	Can't let them get to me	45	81
4532	Don't stop for nothing	52	81
4539	They don't wanna see me love you	59	81
4545	Oh, life's a feeling	65	81
4553	I ain't got no issues, I'm just doin' my thing	6	82
4560	I'm always blamin' you, but what's sad, you not the problem	13	82
4568	Now we be way too busy just to make time	21	82
4573	I couldn't tell you how old your daughter was	28	82
4578	I just showed up for the yams though	33	82
4591	Money turn your kin into an enemy	44	82
4599	Just to ask you a question	52	82
4608	I had a cousin that stole my laptop that I was fuckin' bitches on	61	82
4615	I guess I get what I deserve, don't I	68	82
4623	Right down there, right 'round there	7	83
4630	How you turned out, you too wild	13	83
4639	You too wild, you too wild	22	83
4647	I impregnate your mind, let's have a baby without fuckin', yo	30	83
4656	I said baby what if you was clubbin'	39	83
4665	We surrounded by the fuckin' wolves"	48	83
4675	Man I can understand how it might be	0	74
4685	For all the girls that got dick from Kanye West	10	74
4694	God damn	19	74
4704	She be Puerto Rican day parade wavin'	29	74
4712	We never gonna die	38	74
4721	Bam bam, bam bam	46	74
4727	Bam bam dilla, bam bam	52	74
4736	Bam bam dilla, bam bam	61	74
4743	Bam bam, bam bam	68	74
4751	Where the islands go	1	86
4758	Pictures of me drunk walkin' out with a bitch	8	86
4766	You had me drivin' far enough to switch the time zone	16	86
4774	'Til I pictured everybody with they clothes off	24	86
4790	You realize we at the DoubleTree, not the Aria	36	86
4801	I just be like, it was my idea to have an open relationship	51	86
4814	Whoop him after school just to show I got class	64	86
4830	Had to put the flyest nigga on this shit	80	86
4848	30 hours	96	86
4859	Ha, ha, ha, look how far we are, are, are, are, are, are, are	4	88
4872	Nike out here bad, they can't give shit away	16	88
4885	Make 'em niggas famous, they get arrogant	30	88
4900	Now we hottest in the streets, it ain't no discussion	45	88
4916	(Perfect!)	61	88
4931	I feel it	14	89
4944	I'ma rock the boat	28	89
4956	When no one ain't around	40	89
4967	I feel it	50	89
4978	I feel it	61	89
4988	I can feel it	71	89
4994	Oh, I get lifted, yes	77	89
5000	I feel it	83	89
5008	I feel it's fadin'	91	89
5016	Joke's on you, we still alive	5	92
5023	Only adult man I knew that wasn't broke, man	13	92
5029	Sittin' in the hood like community colleges	19	92
5035	You gotta do somethin' man, your ass is grown	24	92
5040	Joke's on you, we still alive	29	92
5047	We claim other people kids on our income tax	36	92
5053	A nigga's money is homo, it's hard to get straight	44	92
5061	We wasn't s'posed to make it past twenty-five	50	92
5069	We scream, "Rocks, blow, weed, park," see, now we smart	58	92
5076	They tryna cut our lights out like we don't live here	65	92
5083	Kids, sing, kids, sing	72	92
5090	You can give me this muthafuckin' robe 	2	93
5099	Cause you getting the fuck out of this campus 	11	93
5107	Oh when it all, it all falls down (Yeah, this the real one baby)	0	94
5128	Oh when it all, it all falls down	21	94
5142	The prettiest people do the ugliest things	35	94
5154	We'll buy a lot of clothes when we don't really need em	47	94
5164	I want to act ballerific like it's all terrific	57	94
5175	Oh when it all, it all falls down (Chi-Town, Chi-Town, we gon' show 'em how we get down)	67	94
5186	I'll fly away	7	95
5199	If my manager insults me again, I will be assaulting him	7	96
5208	You can't catch my hustle, you can't fathom my love	18	96
5217	I wish I could buy me a spaceship and fly (Heavens knows)	27	96
5234	Yes I'm the same ol' G, same goatee, staying low key, nope	41	96
5245	I remember having to take the dollar cab, coming home real late at night	55	96
5252	All turn their back on me and didn't want to hear a rap from me	62	96
5266	Heaven knows, heaven knows	76	96
5284	A trunk full of coke, rental car from Avis	17	97
5292	(I want Jesus)	25	97
4449	That's just the wave	8	80
4465	No lie	24	80
4480	I been waiting for a minute	0	81
4487	For my children	7	81
4496	Revealing the layers to my soul, my soul	16	81
4509	Asking me why the hell I text in code	29	81
4522	And even though I always fuck my life up	42	81
4537	They always wanna	57	81
4549	It's not many of us, we smile at each other	2	82
4564	Tell me you want your tickets when it's gametime	18	82
4574	Couldn't tell you how old your son is	29	82
4585	Please don't pressure me with that bill shit	38	82
4602	For the last you was frontin'	55	82
4617	Dancin', down there	1	83
4632	You too wild, I need you now	15	83
4641	Lost and found now	24	83
4649	I know it's corny niggas you wish you could unswallow	32	83
4658	Then I said, "What if Mary was in the club	41	83
4667	Burn out, cave in	50	83
4677	I don't blame you much for wanting to be free	2	74
4687	Why? They mad they ain't famous	12	74
4696	I just wanted you to know	21	74
4705	Young and we alive, whoo!	31	74
4715	Bam bam, bam bam	40	74
4729	Bam bam	54	74
4738	Bam bam, bam bam	63	74
4753	Million dollar renovations to a happy home	3	86
4769	But I still drove 30 hours	19	86
4780	I need that happy beginnin', middle and endin'	30	86
4788	Well I guess a blowjob's better than no job	41	86
4799	30 hours	49	86
4813	A stunna	63	86
4821	Whoop him after school just to show I got class	71	86
4829	30 hours	79	86
4837	You know, ay you know	87	86
4845	To my brother Yasiin, holding it out in Africa	95	86
4857	Of cheating, stealing, never feeling	2	88
4866	If Nike ain't have Don C, man they wouldn't have nothin', ooh!	13	88
4875	I was out here spazzin', all y'all get the message?	20	88
4881	Gave LeBron a billi' not to run away (Yo!)	26	88
4888	(Sonic boom!)	33	88
4895	Do anybody feel bad for Bill Cosby?	41	88
4903	I'm a jerk, you need to work, you need to call my spouse	48	88
4911	So let's celebrate the life of Timbuck2	56	88
4919	Your love is fadin'	2	89
4927	I just fade away	10	89
4934	I feel it	17	89
4942	I love to	24	89
4949	I feel it	30	89
4966	I've been so far gone	49	89
4980	Yes, deep inside	62	89
4991	Oh, I get lifted, yes	73	89
5003	Deep, deep, down inside	86	89
5007	I feel it's fadin'	90	89
5015	We wasn't s'posed to make it past twenty-five	4	92
5025	But as a shorty I looked up to the dopeman	12	92
5042	"We don't care what people say"	31	92
5049	And we don't care what people say	38	92
5057	And we don't care what people say, my niggas	46	92
5063	Throw your hands up in the sky and say	52	92
5071	Hold up, hold fast, we make more cash	60	92
5086	Throw your hands up in the sky and say	75	92
5093	Who told you see, I told you to do something uplifting 	5	93
5102	I'm about to break the rules but don't tell anybody. 	14	93
5113	I'm telling you all, it all falls down (Westside, westside, we 'gon set this party off right)	3	94
5126	And she be dealin' with some issues that you can't believe	19	94
5140	It seems we living the American dream	33	94
5151	I say fuck the police, that's how I treat 'em	45	94
5161	'Cause fuck it, I went to Jacob with twenty-five thou	54	94
5166	Oh when it all, it all falls down (Yeah, c'mon, c'mon)	61	94
5177	I'm tellin' you all, it all falls down	70	94
5188	To a land where	3	95
5202	But let some black people walk in, I bet you they show off their token blackie	12	96
5204	So I'm on break next to the "No Smokin'" sign with a blunt in the mall	14	96
5213	I've been workin' this graveshift and I ain't made shit	23	96
5220	My life, my love, that's not mine, "Why you ain't signed?" Wasn't my time	31	96
5240	Past the sky (Every night, every night)	50	96
5255	'Cause nothing's there, nothing's fair	65	96
5265	Past the sky (Every night, every night)	73	96
5278	Top floor the view alone will leave you breathless	11	97
5293	(Jesus walks) God show me the way because the devil trying to break me down 	26	97
5307	The way Kathie Lee needed Regis, that's the way I need Jesus	40	97
5315	And bring the day that I'm dreamin' about	48	97
5322	One thing I found (Uh-huh), one thing I found	3	98
5330	I seen them put it together, watched them take it apart	11	98
5338	This is hard livin', mixed with Cristal sippin'	19	98
5346	Down for my grandfather who took my mama	27	98
5353	Racism's still alive, they just be concealin' it	34	98
5361	Nothing sad as that day my girl's father passed away	42	98
5367	'Cause look what an accident did to Left Eye	48	98
5373	Get up I get (Down), get up I get (Down)	55	98
5379	I'm trying to make it better for these little boys and girls	61	98
5392	Determination, dedication, motivation	74	98
5401	That's why my breath is felt by the deaf	83	98
5410	Get up I get, get up I get	92	98
5417	Peddled bikes, got my nephews pedal bikes because they special (Woo)	98	98
5425	When I start spitting them lyrics niggas get very religious	106	98
5442	N-n-n-now, my flow is in the pocket like wallets, I got the bounce like hydraulics	8	99
4620	'Round 'round there, right right there	3	83
4626	Turned out, how you thought	9	83
4635	Right now, right now	18	83
4643	Only tell you real shit, that's the tea, no sip	26	83
4652	I know it's corny bitches you wish you could unfollow	35	83
4661	We surrounded by the fuckin' wolves"	44	83
4671	We cooled out, it's cool out	54	83
4681	I feel like me and Taylor might still have sex	6	74
4690	(Talk that talk man)	15	74
4700	Wake up, Mr West	25	74
4709	Put one up in the sky	34	74
4718	How you feeling right now, let me see you ladies in the air	43	74
4724	Bam bam dilla, bam bam	49	74
4733	You can't stop the thing now	58	74
4740	Bam bam dilla, bam bam	65	74
4748	I don't blame you much for wanting to be free	73	74
4755	I saw a recent picture of her, I guess she was right	5	86
4763	Yeah, then me and wifey make a movie	13	86
4771	I remember rapping for Jay and Cam	21	86
4778	You don't love me, you just pretendin'	29	86
4782	It's gettin' hot in hurr, that's all that I know	32	86
4791	Were remains that long to lose sad	43	86
4797	30 hours	47	86
4803	Now I'm 'bout to drive 90 miles like Matt Barnes to kill...	53	86
4809	90 miles like Matt Barnes just to whoop a nigga ass	59	86
4817	30 hours	67	86
4825	Check it out, this the bonus track, this the bonus	75	86
4833	Look at all these Ultralight Beams flowin'	83	86
4841	Remember when the whole block'd get shout out?	91	86
4849	*Phone call*	99	86
4855	Dirt and grime and filth inside	0	88
4861	Yeezy, Yeezy, Yeezy just jumped over Jumpman	6	88
4865	If Nike ain't have Drizzy, man they wouldn't have nothin', woo!	12	88
4871	I ain't dropped the album but the shoes went platinum (Woo!)	18	88
4884	I done wore designers I won't wear again	29	88
4891	If you ain't poppin' shit then why you rap for? Haaan?	36	88
4899	I done told y'all, all I needed was the infrastructure (Boom!)	44	88
4906	Couches, couches, couches, couches, which one should I pick?	51	88
4914	Timbuck2, Timbuck2	59	88
4922	I feel it's fadin'	5	89
4929	I feel it	13	89
4935	I feel it	19	89
4943	I'm tryna	26	89
4948	I feel it	32	89
4954	Woah	39	89
4959	I feel it's fadin'	43	89
4969	I feel it	53	89
4976	Deep, deep, down inside	60	89
4981	I feel it	64	89
4987	Deep, deep, down inside	70	89
4992	Yes, deep inside	76	89
5004	I get	87	89
5019	You are about to experience somethin' so cold, man	9	92
5031	'Cause ain't no tuition for having no ambition	21	92
5044	'Cause a nigga can't shine off $6.55	33	92
5058	Drug dealin' just to get by	47	92
5073	Sad enough we on welfare	62	92
5088	What in the fuck was that Kanye? I told you to do some shit for the kids. 	0	93
5105	He wants me to get a good ass job just like everybody. 	17	93
5119	She like, "Fuck it, I'll just stay down here and do hair"	12	94
5133	That's why you always see me with at least one of my watches	26	94
5147	Even if you in a Benz, you still a nigga in a coupe	40	94
5156	Cause they make us hate ourself and love they wealth	49	94
5167	(And when it all falls down who you gonna call now?) 	62	94
5174	Oh when it all, it all falls down	69	94
5181	I'll fly away	2	95
5189	I'll fly away	9	95
5203	Oh now they love Kanye, let's put him all in the front of the store	13	96
5222	Thirsty on the grind, Chi state of mind, lost my momma, lost my mind	30	96
5233	Rolly G., police watch me smoke my weed, count my G's	44	96
5246	Standing on my feet all damn day trying to make this thing right	56	96
5258	I've been workin' this graveshift and I ain't made shit	68	96
5264	I said I want my chariot to pick me up and take me, brother, for a ride	75	96
5277	I walk through the valley of the Chi where death is	10	97
5294	(Jesus walk with me) The only thing that I pray is that my feet don't fail me now	27	97
5308	So here go my single dog, radio needs this	41	97
5319	Oh baby	0	98
5335	It's plain to see, niggas can't fuck with me	16	98
5350	Now niggas can't make it to ballots to choose leadership	31	98
5365	You sent tears from heaven when you seen my car get balled up	46	98
5395	Cats think I'm delirious but I'm so damn serious	59	98
5407	When it comes to being true, at least true to me	89	98
5424	This is Jay, dissing Jay will get you maced	105	98
5429	Hov's a living legend and I'll tell you why	110	98
5438	N-now, th-th-throw your motherfuckin' hands, get 'em high	4	99
5446	My teacher said I's a loser, I told her, "Why don't you kill me?"	12	99
5451	But this bastard's flow will bash your skull	17	99
5452	And I will, cut your girl like Pastor Tro'	18	99
5458	N-now, th-th-throw your motherfuckin' hands, get 'em high	24	99
5459	All the girls pass the weed to your motherfuckin' man, get 'em high	25	99
5465	At NYU but she hail from Kansas	31	99
5471	And bring a friend for my friend, his name Kweli	37	99
5476	She gon' think that I'm lyin', just spit a couple of lines	42	99
5480	And my rhymes is finna blow, you trying to blow backs out	46	99
5488	If she think it's fly, she ain't met a real nigga yet	54	99
5492	Or a room filled with smoke, a hype filled with dope	58	99
4908	Every time I see the news, man it bring me home	53	88
4925	I feel it's fadin'	7	89
4939	Po' up, po' up	22	89
4951	Fuck how you feel ass nigga	35	89
4962	I feel it's fadin'	45	89
4974	I can feel it	58	89
4984	I feel it	67	89
4996	Oh, deep inside	80	89
5005	I feel it's fadin'	88	89
5021	We never had nothin' handed, took nothin' for granted	10	92
5033	And ain't no loans for sittin' your ass at home	22	92
5045	And everybody sellin' makeup, Jacob's and bootlegged tapes just to get they cake up	34	92
5059	Stack ya' money till it get sky high	48	92
5074	They tryna put me on the school bus with the space for the wheelchair	63	92
5087	"We don't care what people say"	76	92
5094	I'm tryin' to get you out here with these white people and this how you gone do me 	6	93
5103	I got something better than school but don't tell anybody. 	15	93
5110	Oh when it all	4	94
5117	The concept of school seems so secure	10	94
5120	'Cause that's enough money to buy her a few pairs of new Airs	13	94
5134	Rollies and Pasha's done drove me crazy	27	94
5148	Oh when it all, it all falls down (C'mon, c'mon)	41	94
5157	That's why shorty's hollerin', "Where the ballers at?"	50	94
5170	I'm tellin' you all, it all falls down (C'mon, c'mon	63	94
5178	I's can't keep working like this	71	94
5183	Joy shall never end	4	95
5190	I've been workin' this graveshift and I ain't made shit (Yeah, yeah)	0	96
5195	Past the sky (Every night, every night)	5	96
5198	Let's go back, back to the Gap, look at my check, wasn't no scratch	9	96
5207	Y'all don't know my struggle, y'all can't match my hustle	17	96
5216	I've been workin' this graveshift and I ain't made shit	26	96
5224	Got a Tec-9, reach my prime, got to make these haters respect mine	34	96
5229	Holla at Ye, hit me with the beat	39	96
5236	Should've finished school like my niece then I finally wouldn't use my piece, blow	46	96
5241	I've been workin' this graveshift and I ain't made shit	51	96
5248	This kid I seen in an old Busta Rhymes video the other night"	58	96
5256	I don't want to ever go back there	66	96
5263	I want to fly, I want to fly	74	96
5267	Yo	0	97
5273	You know what the Midwest is? Young and restless	6	97
5279	Try to catch it, it's kinda hard getting choked by detectives, yeah, yeah, now check the method	12	97
5287	But I'll be gone till November, I got packs to move, I hope	20	97
5295	(Jesus walk) And I don't think there's nothing I can do to right my wrong	28	97
5301	I know he hear me when my feet get weary	34	97
5327	Yo, first I snatched the streets then I snatched the charts	8	98
5343	I'm back to claim pole position, holla at ya boy	24	98
5358	But in the land where niggas praise Yukons and getting paid	39	98
5377	Oh no you'll never let me down	53	98
5388	But that ain't what gives me the heart of Kunta Kinte	71	98
5411	And if you slipped off the side and clinched on to your life	78	98
5430	Everybody wanna be Hov and Hov's still alive	111	98
5439	All the girls pass the weed to your motherfuckin' man, get 'em high	5	99
5455	Why you think me and Dame cool? We assholes	21	99
5468	Who said her favorite rapper was the late great Francis	34	99
5485	Anyway, I don't usually fuck with the Internet	51	99
5496	Control rap is out of	62	99
5500	I stole on liver, niggas than you	66	99
5504	Marsha's too sexy to even make songs like these	70	99
5508	Album, how come? You the hot garbage of	74	99
5515	Even your club record need a booster	79	99
5521	N-now, th-th-throw your motherfuckin' hands, get 'em high (Yeah)	87	99
5526	(Hey, how you doin'?)	2	100
5529	(Well you lookin' all good and stuff, you got you a)	4	100
5533	(Yo my nigga, my nigga, I'm tired of puttin' 1-8-7 in my nigga's pager that shit ain't workin' no more)	8	100
5539	(That's my dawg you always lookin' out for us)	15	100
5543	And ladies, if you follow these instructions exactly	1	101
5548	One and two and three and four and get them sit-ups right and	5	101
5554	"Tell me who's invited," You, your friends and my dick	11	101
5557	Thank you, God bless you, good night I came	14	101
5562	Work it out (Come on)	19	101
5565	Work it out now 	22	101
5571	Cover your mouth up like you got SARS	28	101
5574	We ain't sweatin' to the oldies, we jukin' to a cold beat	31	101
5578	If you ain't fit girl, I'll still hit girl	35	101
5581	Work it out (Come on)	45	101
5583	She wanna talk it out but ain't nothing to talk about unless	43	101
5591	Maybe we can work it out (Come on, come on)	49	101
5593	Hi my name is Jill, I just want to say thanks to Kanye's workout plan	50	101
5597	My name is Lasandra, and I just want to say that ever since listenin' to Kanye's workout tape	54	101
5605	And I just wanna say since listenin' to Kanye's workout tape	62	101
5609	Thanks to Kanye's workout plan	66	101
5616	(Lemme break ya with a piece of)	70	101
5624	His workout plan (This time around I want y'all to clap like this)	81	101
5633	(Double time)	90	101
5640	Eat your salad, no dessert	97	101
5648	I want to see you work out for me	105	101
5650	It's good, it's good	107	101
5659	I told her to drive over in her new whip	7	102
5662	Then I want you to strip	10	102
5673	I played Ready For the World, she was ready for some action	21	102
5674	My dawg said, 	22	102
4952	I feel it	38	89
4957	I think I think too much	42	89
4964	I feel it's fadin'	47	89
4968	I've been so led on	51	89
4975	Oh, deep inside	59	89
4979	Deep, deep, down inside	63	89
4986	I get lifted, yes	69	89
4990	I feel it	75	89
4997	Deep, deep, down inside	82	89
5009	I feel it	92	89
5017	Throw your hands up in the sky and say	6	92
5024	Flickin' Starter coats, man	14	92
5030	This dope money here is little Trey's scholarship	20	92
5036	Drug dealin' just to get by	25	92
5041	Throw your hands up in the sky and say	30	92
5048	We take that money, cop work, then push packs to get paid	37	92
5054	But we gon' keep bakin' till the day we get cake	45	92
5062	Joke's on you, we still alive	51	92
5070	We ain't retards, the way teachers thought	59	92
5077	Look what was handed us, fathers abandoned us	66	92
5084	We wasn't s'posed to make it past twenty-five	73	92
5091	You will not walk across that stage, you won't slide across that stage 	3	93
5100	Fucker what you gone do now 	12	93
5108	I'm tellin' you all, it all falls down (Chi-Town stand up)	1	94
5114	But she won't drop out, her parents will look at her funny	8	94
5124	She had hair so long that it looked like weave	17	94
5132	Man I promise, I'm so self-conscious	25	94
5138	And I can't even go to the grocery store	31	94
5152	We buy our way out of jail, but we can't buy freedom	46	94
5162	Before I had a house and I'd do it again	55	94
5172	Oh when it all, it all falls down (Southside, southside, we gon' set this party off right)	65	94
5184	I'll fly away	5	95
5191	I wish I could buy me a spaceship and fly (Heavens knows) (Me too, I swear I do)	1	96
5205	Takin' my hits, writing my hits, writin' my rhymes, playin' my mind	15	96
5214	I wish I could buy me a spaceship and fly (Heavens knows)	24	96
5221	Leave me alone, work for y'all, half of it's yours, half of it's mine	32	96
5228	Life is much more than running in the streets	38	96
5238	I've been workin' this graveshift and I ain't made shit	48	96
5253	So naturally actually had to face things factually	63	96
5259	I wish I could buy me a spaceship and fly (Heavens knows)	69	96
5269	We at war with terrorism, racism	2	97
5275	And next these (niggas) might jack your Lexus	8	97
5281	Sayin' "We eat pieces of shit like you for breakfast"	14	97
5289	(Jesus walk with me) The only thing that I pray is that my feet don't fail me now	22	97
5297	(I want Jesus)	30	97
5303	We rappers is role models, we rap, we don't think	36	97
5309	They say you can rap about anything except for Jesus	42	97
5313	Which'll probably take away from my ends	46	97
5320	Hahahahaha, turn it up for me	1	98
5328	First I had they ear, now I have their heart	9	98
5336	'Cause I'm a be that nigga for life	17	98
5344	Get up I get (Down), get up I get (Down)	25	98
5351	But we can make it to Jacob's and to the dealership	32	98
5359	Its gonna take a lot more than coupons to get us saved	40	98
5366	But I can't complain what the accident did to my left eye	47	98
5372	Get up I get (Down), get up I get (Down)	54	98
5378	That's why I expose my soul to the globe; the world	60	98
5384	I'm not a miracle, I'm a heaven sent instrument	66	98
5402	And while my words are heard and confined to the ears of the blind	84	98
5412	Get up I get, get up I get	93	98
5418	Every fourth quarter, I like to Mike Jordan them	100	98
5432	Down, down	113	98
5448	My heart, and if you follow the charts or the plaques or the stacks	14	99
5462	N-n-n-n-n-now who the hell is this, e-mailing me at 11:26?	28	99
5477	Then maybe I'll be able to give her dick all the time and get her high	43	99
5493	Y'all assumed I was doomed, out of tune	59	99
5509	The year's clear your image and snooped up	75	99
5510	Label got you souped up, tellin' you you sick	76	99
5522	All the girls pass the weed to your motherfuckin' man, get 'em high	88	99
5524	Now I ain't never tell you to put down your hands, keep 'em high	89	99
5535	Since I copped this new workout plan my shit is right rollin' in Lexus, Acuras everything girl	10	100
5536	(Girl you need to let me know where I can cop that, how much is it?)	11	100
5541	(Oh shit)	17	100
5542	You just popped in the Kanye West Get Right for the Summer workout tape	0	101
5549	Tuck your tummy tight and do your crunches like this	6	101
5555	What's scary to me, Henny makes girls look like Halle Berry to me	12	101
5556	So excuse me miss, I forgot your name	13	101
5563	Work it out (Come on)	20	101
5564	Work it out (Come on)	21	101
5572	Off them tracks yea I bought them cars	29	101
5573	Still kill a nigga on sixteen bars	30	101
5579	Okay three more now, hop in the Benz	37	101
5587	Work it out (Come on)	46	101
5588	One and you brought two friends	36	101
5596	Woo, woo, woo, woo	53	101
5600	And what's most importantly is that I ain't gotta fuck Ray Ray's broke ass no mo'	57	101
5604	My name is Ella-Mae from Mobile, Alabama	61	101
5608	Rode the plane, rode the plane	65	101
5612	And I don't gotta work at the mall again	69	101
5619	Get your salad, no dessert	76	101
5623	It's Kanye's workout plan (Allow myself to introduce myself)	80	101
5627	Eat your salad, no dessert	84	101
5631	It's Kanye's workout plan (But I hope not, 'cause on this one I need y'all)	88	101
5046	We put shit on layaway, then come back	35	92
5052	The drug game bulimic, it's hard to get weight	43	92
5060	Kids, sing, kids, sing	49	92
5068	They favorite 50 Cent song "12 Questions"	57	92
5075	I'm tryna get the car with the chromie wheels here	64	92
5082	Stack ya' money till it get sky high	71	92
5089	You give me your muthafuckin' graduation ticket right now. 	1	93
5098	You can throw your muthafuckin' hands in the air, and wave good-bye to every-fuckin'-body 	10	93
5106	He ain't walked in my shoes, I'm just not everybody.	18	93
5112	That major that she majored in don't make no money	7	94
5121	'Cause her baby-daddy don't really care	14	94
5129	(And when it all falls down who you gonna call now?) 	22	94
5135	I can't even pronounce nothing, pass that ver-say-see	28	94
5143	For the road to riches and diamond rings	36	94
5155	Things we buy to cover up what's inside	48	94
5159	And a white man get paid off of all of that	52	94
5169	I got a problem with spendin' before I get it	59	94
5182	One glad morning	0	95
5194	I wish I could buy me a spaceship and fly (Heavens knows)	4	96
5209	Dude, lock yourself in a room doing five beats a day for three summers	19	96
5218	Past the sky (Every night, every night)	28	96
5225	In the mall until twelve when my schedule had said nine	35	96
5231	Holler at God, "Man why'd you have to take my folks?"	42	96
5247	And having one of my co-workers say "Yo, you look just like	57	96
5285	My mama used to say only Jesus can save us	18	97
5299	To the victims of welfare for we livin' in Hell here, hell yeah (Jesus walks for them)	32	97
5311	But if I talk about God my record won't get played, huh?	44	97
5325	Get up I get (Down), get up I get (Down)	6	98
5333	So when I reload, he holds number one position, when you hot, I'm hot	14	98
5341	Nigga I'm home on these charts, y'all niggas visitin'	22	98
5357	Swear I've been baptized least three or four times	38	98
5369	When it comes to being true, at least true to me	51	98
5382	But I get my hymns from Him	64	98
5396	If I were on the highest cliff, on the highest riff	77	98
5409	Oh no you'll never let me down	91	98
5421	Let you tell it man I'm falling, well somebody must have caught him	99	98
5434	Uh, uh, I'm trying to catch the beat	0	99
5447	I give a fuck if you fail me, I'm gonna follow	13	99
5460	Now I ain't never tell you to put down your hands, keep 'em high	26	99
5474	I mean, (You don't really know him, why is you lyin'?)	40	99
5483	And sister's the bomb, boy she got the bougie behavior	49	99
5491	Get 'em high like noon or the moon	57	99
5499	Woods in the hood, to have my own reality show, called Soul Survivor	65	99
5507	Twelve thousand spins, nobody got to coppin' a	73	99
5514	Bolder than Denver, I ain't a Madd Rapper, just an emcee with a temper	82	99
5519	Got your hands up, get them motherfuckers higher then	86	99
5525	(Hey girl)	1	100
5532	Don't say it	7	100
5540	(FREE.99?)	14	100
5547	So first of all we gonna work on the stomach, nobody wants a little tight ass	4	101
5553	It's a party tonight and ooh she's so excited	10	101
5561	She talkin' about freakin' out then maybe we can work it out (Come on)	18	101
5570	Ooh girl, your breath is harsh	27	101
5577	But I still mess with a big girl	34	101
5580	It's been a week without me and she feel weak without me	42	101
5586	Work it out (Come on)	47	101
5601	Work it (out), juge it (out)	58	101
5615	(It's like that old Michael Jackson shit)	73	101
5622	I said it's Kanye's workout plan (Ladies and gentlemen)	79	101
5630	I said it's Kanye's workout plan (I know y'all ain't tired)	87	101
5635	Move your ass, go berserk (Ow)	92	101
5638	That's right put in work (Put in work)	95	101
5643	Move your ass, go beserk	100	101
5646	(Okay, okay, okay, that's, that'd be good)	103	101
5652	Are you gonna be?	0	102
5654	Oh, oh, oh, oh, oh	2	102
5658	Some Minnie Ripperton, will definitely set this party off right	6	102
5663	Then you is my new chick	11	102
5666	Callin' me Biggie like Shyne home	14	102
5668	Why she always lying though	16	102
5676	You gon' take your pants off	24	102
5682	Some Minnie Ripperton, will definitely set this party off right	30	102
5684	While I'm likely at smokin' on my canibus	32	102
5691	Feelin' on a G	39	102
5696	The rims still moving, so I'm bumpin' a little Spinners	44	102
5698	Dippin' through the streets	46	102
5706	You Ready For the World girl	54	102
5712	I'da hit it from the back to the melody to roll it slow	60	102
5714	No matter how much of a thug you see	62	102
5722	Baby drop another slow jam	70	102
5728	Then I got to bone	77	102
5730	Got to get you home	79	102
5735	You gots ta roll with the plan	86	102
5741	Just to get you goin'	91	102
5744	And we could get it on	89	102
5748	So you finish college and it's wonderful 	2	104
5753	And you'll spend all your money on crack-cocaine 	7	104
5759	Oh My God, you'll come in at an entry level position 	13	104
5761	You'll move up to the next level, 	15	104
5769	All you kids wanted talk in the back of the class? 	23	104
5776	But ya know what? 	30	104
5778	When a lady walked wit' me she say 	32	104
5786	Gangstas walk, pimps gon' talk	3	105
5144	We shine because they hate us, floss 'cause they degrade us	37	94
5158	Drug dealer buy Jordans, crackhead buy crack	51	94
5171	(And when it falls down)	64	94
5180	When this life is over	1	95
5192	Past the sky (Every night, every night) (Yes, I feel you Ye, I feel you)	2	96
5200	So if I stole, wasn't my fault, yeah I stole, never got caught	10	96
5211	"The kid that made that deserves that Maybach"	21	96
5227	Where I want to go, where I want to be	37	96
5235	Got a lot of people counting on me and I'm just trying to find my peace	45	96
5244	Man, you know you gon' do it	54	96
5250	I had all that snatched from me, A&Rs and they faculties	61	96
5261	I've been workin' this graveshift and I ain't made shit	71	96
5270	And most of all, we at war with ourselves	3	97
5276	Somebody tell these (niggas) who Kanye West is	9	97
5282	Huh? Y'all eat pieces of shit? What's the basis?	15	97
5290	(Jesus walk) And I don't think there's nothing I can do to right my wrong	23	97
5298	Uh, to the hustlers, killers, murderers, drug dealers, even the scrippers (Jesus walks for them)	31	97
5304	I ain't here to argue about his facial features	37	97
5310	That means guns, sex, lies, videotape	43	97
5314	Then I hope this take away from my sins	47	97
5321	When it comes to being true, at least true to me (That's right, it's what I do, c'mon)	2	98
5329	Rappers came and went, I've been here from the start	10	98
5337	This is not an image, this is God given	18	98
5345	Get up I get (Down), get up I get	26	98
5352	Swear I hear new music and I just don't be feelin' it	33	98
5360	Like it take a lot more than doo rags to get you waves	41	98
5375	We are all here for a reason on a particular path	57	98
5390	Yeah I need my loot by rent day	70	98
5406	A touch of God reigns out (Take'em to the church)	88	98
5416	Built the ROC from a pebble, peddled rock before I met you	97	98
5420	More of them on the way, the eighth wonder on the way	102	98
5426	Six Hail Mary's please Father forgive us	107	98
5435	Uh, I'm trying to catch the beat	1	99
5443	I can't call it, I got the swerve like alcoholics	9	99
5449	You ain't gotta guess who's back, you see	15	99
5456	That's why we hear your music in fast forward	22	99
5463	Telling me that she 36-26, plus double-d	29	99
5469	W-H-I-T-E, it's getting late mami	35	99
5478	Yeah, I can't believe this nigga use my name for picking up dimes	44	99
5486	Or chicks with birth control stuck to they arm like Nicorette	52	99
5494	But I still filled the notes with real nigga quotes	60	99
5502	How could I ever let your words affect me?	68	99
5513	When you a dick with a loose nut	77	99
5530	Girl I know it's that workout	5	100
5550	Give head, stop, breathe, get up, check your weave	7	101
5567	Ooh girl, your silhouette make me wanna light a cigarette	24	101
5585	You gotta pop this tape in before you start back-dating	40	101
5594	I was able to pull a NBA player and like now I shop every day on Rodeo Drive	51	101
5610	I'm the envy of all my friends	67	101
5625	That's right, put in work	82	101
5639	Move your ass, go berserk	96	101
5641	Get that man you deserve (You hear, ugh)	98	101
5647	(I appreciate your time)	104	101
5655	She said she wants some Marvin Gaye, some Luther Vandross	3	102
5656	A little Anita, will definitely set this party off right	4	102
5665	She be grabbin'	13	102
5667	Man I swear she fine, homes	15	102
5670	When she know they rhinestones	18	102
5678	Me and you gon' get it right	26	102
5683	Got you lookin' at the gliss, at my hands and wrists	31	102
5686	I can tell you ain' no messin' with Kan-man and Twist	34	102
5693	Come with me and sip on some regular champagne	41	102
5697	While I'm smokin' On a B	45	102
5700	On the 23's	48	102
5708	And every moment you controllin' me, I'm lovin' the way you be	56	102
5713	Now I gotta go up in it fast, but I'mma finish last	61	102
5716	And with some Luther Come On and Hope	64	102
5724	And if you ain't got no man, hop up on my Brougham	72	102
5729	Stay up in the zone	78	102
5731	And I do it 	81	102
5734	I keep it pimpin' like an old man	85	102
5740	Whisper on the phone	90	102
5746	Now beat that. 	0	104
5747	And your mother's sayin' go to college 	1	104
5752	Hey! Now you'll get that 25 thous job a year 	6	104
5758	After several interviews 	12	104
5760	And when you do that, if you kiss enough ass 	14	104
5768	It makes you really smart man. 	22	104
5775	No I've never had sex! 	29	104
5777	My degree keeps me satisfied. 	31	104
5785	Kappa step, Sigma step	2	105
5792	I'mma get on this TV, mama, I'mma, I'mma put shit down	9	105
5794	Told 'em I finished school and I started my own business	11	105
5798	This nigga graduated at the top of our class	17	105
5801	Kappa step, Sigma step	20	105
5803	Ooh, hecky nah, that boy is raw	22	105
5805	S.G. Rho step, Zeta step	24	105
5808	Ooh, hecky nah, that boy is raw	26	105
5812	I'm trying to hit it early, like I'm in a hurry	30	105
5813	See, that's how dude became the young Pootie Tang, "Tippy tow"	31	105
5816	Red and white One's, yeah that's my Kappa style and I ain't even pledge	34	105
5818	Crack my head on the steering wheel and I ain't even dead	35	105
5821	Alpha step, Omega step	38	105
5257	So I won't be taking no days off till my spaceship takes off	67	96
5272	(Jesus walk with me, with me, with me, with me, with me) Yeah, uh	5	97
5286	Well mama I know I act a fool	19	97
5300	Now, hear ye, hear ye, want to see thee more clearly	33	97
5312	Well if this take away from my spins	45	97
5326	Get up I get (Down), get up I get (Down)	7	98
5342	It's Hov tradition, Jeff Gordon of rap	23	98
5356	I done did dirt and went to church and get my hands scrubbed	37	98
5370	One thing I found, one thing I found	52	98
5381	My spirit is a part of this that's why I get spiritual	63	98
5386	For your soul and your mental	68	98
5391	I can't stop, that's why I'm hot	73	98
5398	And when these words are found	80	98
5404	So I guess I'm one of a kind in a full house	86	98
5413	Get up I get, get up I get (down)	94	98
5419	Number one albums what I got, like four of them	101	98
5431	Down, down	112	98
5440	Now I ain't never tell you to put down your hands, keep 'em high	6	99
5453	And I don't, usually smoke but pass the 'dro	19	99
5467	Sent me a picture of her feelin' on Candice	33	99
5473	I mean, (That's my favorite CD that I play at my crib)	39	99
5482	Ayo, ain't you meet that chick at that conference with your moms?	48	99
5490	I got the bubba kush and a sister could get a hit of it (Yo, yo)	56	99
5498	That's why I abuse you who are not thugs, rock clubs like Tiger	64	99
5506	Too many featured emcees, and producers is popular	72	99
5520	Read the infra-red across your head, I'm bred king like Simba	81	99
5537	Girl you know you ain't gotta pay nothin' around me I'm the bootleg queen	12	100
5551	Don't drop the blunt and disrespect the weed	8	101
5568	My name Kanye from the Jigga set	25	101
5592	All the mocha lattes, you gotta do pilates	39	101
5602	Pump it (out), Chi-town (out)	59	101
5617	That's right put in work (Oh)	74	101
5632	His workout plan (To give me a soul clap okay?)	89	101
5649	Whoa yeah	106	101
5661	I'mma bring the Cool Whip	9	102
5671	She got a light-skinned friend look like Michael Jackson	19	102
5679	She said she wants some Marvin Gaye, some Luther Vandross	27	102
5681	She said she wants some Ready For the World, some New Edition	29	102
5687	From the Chi and I be sippin' Hennessy	35	102
5694	You ain't know Twista can work it like The Whispers	42	102
5695	Hit the stop light, get into some Isaac	43	102
5701	And I do it 	49	102
5702	When my earth and the wind smoke a fire	50	102
5709	Holding me when I been listening to Jodeci	57	102
5710	And when I come over and bend your ass	58	102
5717	You finna and stilla be in love with me	65	102
5718	She said she wants some Marvin Gaye, some Luther Vandross	66	102
5725	I keep it pimpin' like an old man	73	102
5732	Baby drop another slow jam	82	102
5738	Take you to my home	88	102
5739	You gots ta roll with the plan	74	102
5750	Now after all the partying and crazin', 	4	104
5757	If you continue to work at the Gap 	11	104
5765	She's actually the boss's niece! 	19	104
5766	So now you're part of the family 	20	104
5773	You know how many classes I took? 	27	104
5774	Extra classes, extra classes 	28	104
5782	Very fast	36	104
5783	School spirit, motherfucker	0	105
5790	Gangstas walk, pimps gon' talk	7	105
5791	Ooh, hecky nah, that boy is raw	8	105
5802	Gangstas walk, pimps gon' talk	21	105
5809	I got a Jones like Norah for your soror'	27	105
5810	Bring more of them girls I've seen in the Aurora	28	105
5819	If I could go through all that and still be breathing	36	105
5824	Ooh, hecky nah, that boy is raw	41	105
5828	Ooh, hecky nah, that boy is raw	45	105
5831	Woo, there it was	48	105
5833	A couple woos coming on, cuz	50	105
5834	Woo, woo, there they was	51	105
5837	Woo, there it was	54	105
5840	Woo, woo, there they was	57	105
5843	You get that associate degree, okay	2	106
5847	When everybody says hey, you're not working, you're not making in money	6	106
5848	You say look at my degrees and you look at my life, 	7	106
5850	And these guys are out here making money all these ways, and I'm spendin' mine to be smart	10	106
5854	That's right, those degrees	13	106
5856	I spit it through the wire, man (Through the fire, to the limit, to the wall)	1	109
5857	There's too much stuff on my heart right now, man (For a chance to be with you, I'd gladly risk it all)	2	109
5861	It's your boy Kanye to the, Chi-town, what's goin' on? (Right down to the wire, even through the fire)	6	109
5863	I drink a Boost for breakfast, an Ensure for dessert	8	109
5864	Somebody ordered pancakes, I just sip the sizzurp	9	109
5868	On the plane, scared as hell that her guy look like Emmett Till	14	109
5870	She a Delta, so she been throwing that Dynasty sign	16	109
5875	The doctor said I had blood clots, but I ain't Jamaican, man	20	109
5877	I swear this right here, history in the making, man	22	109
5881	I looked in the mirror and half my jaw was in the back of my mouth, man, I couldn't believe it (For a chance at loving you, I'd take it all the way)	26	109
5882	But I'm still here for y'all right now, man, this what I got to say right here, dawg (Right down to the wire, even through the fire)	27	109
5884	What if somebody from the Chi' that was ill got a deal on the hottest rap label around?	29	109
5891	I got a lawyer for the case to keep what's in my safe safe	36	109
5283	We ain't going nowhere but got suits and cases	16	97
5291	(Jesus walk with me) I wanna talk to God but I'm afraid because we ain't spoke in so long	24	97
5306	I'm just tryna say the way school need teachers	39	97
5316	Next time I'm in the club, everybody screamin' out	49	97
5323	Oh no you'll never let me down (No I never let you down)	4	98
5331	Seen the rovers roll up with ribbons	12	98
5339	It's the most consistent, Hov	20	98
5347	Made her sit in that seat where white folks ain't want us to eat	28	98
5354	But I know they don't want me in the damn club	35	98
5362	So I promised to Mr. Rainey I'm gonna marry your daughter	43	98
5368	First Aaliyah now Romeo must die	49	98
5374	Get up I get (Down), get up I get (Down)	56	98
5380	I'm not just another individual	62	98
5385	My rhythmatic regiment navigates melodic notes	67	98
5389	I'm trying to get us "us free" like Cinque	72	98
5399	Let it be known that God's penmanship has been signed	81	98
5408	One thing I found, one thing I found	90	98
5433	Down, down	114	98
5441	And if you're losin' your high then smoke again, keep 'em high	7	99
5454	And I won't, give you that money that you asking for	20	99
5466	Right now she just lamping, chilling on campus	32	99
5472	(You mean Talib? Lyrics sticks to your rib)	38	99
5481	Well okay, you twisted my arm, I'll assist with the charm	47	99
5489	Now I apologize if I come off a little inconsiderate	55	99
5497	Used to, but still got love	63	99
5505	That's why the raw don't know your name, like Alicia Keys	71	99
5512	Chimped up, with a pimp cup, illiterate nigga	80	99
5518	Spittin' through wires and fires, emcees retirin'	85	99
5523	Ay what's up girl?	0	100
5531	(Got you a six pack Shakur and stuff)	6	100
5538	I'll give it to you for free.99	13	100
5546	Man, at least a dude with a car	3	101
5552	Pick up your son and don't disrespect your seed	9	101
5560	She wanna talk it out but ain't nothing to talk about unless	17	101
5569	Twista said get it wet	26	101
5576	So you can brag to all your homies now	33	101
5584	Hustlers, gangstas, all us ballers	41	101
5595	I just want to say, thank you Kanye	52	101
5603	Let's go (out)	60	101
5611	See, I pulled me a baller man (Yeah)	68	101
5618	Move your ass, go berserk (Okay)	75	101
5626	Move your ass, go berserk	83	101
5634	That's right put in work (Woo)	91	101
5642	That's right put in work	99	101
5651	(Yo)	108	101
5657	She said she wants some Ready For The World, some New Edition	5	102
5675	I'mma play this Vandross	23	102
5689	Try'na Smoke a B	37	102
5690	Lookin' properly	38	102
5703	Let my get your sheets wet listening to Keith Sweat	51	102
5704	Put you in a daze For Maze	52	102
5711	You be bumpin' Teddy Pendergrass	59	102
5719	A little Anita, will definitely set this party off right	67	102
5720	She said she wants some Ready For the World, some New Edition	68	102
5726	'Cause after that then I	75	102
5727	Take it to the dome	76	102
5733	And if you ain't got no man, hop up on my Brougham	84	102
5736	'Cause after that then I	87	102
5742	Try'na make you moan	92	102
5745	And I do it	93	102
5749	You feel so good. 	3	104
5754	But it'll be your money. 	8	104
5755	No more borrowing from mom for my high 	9	104
5762	Which is bein' a secretary's secretary! 	16	104
5763	And boy is that great. 	17	104
5770	I was a hall-monitor. 	25	104
5771	Not me, I listened, OK	24	104
5779	Ya know what's sexy? 	33	104
5780	No I don't know what it is 	34	104
5787	Ooh, hecky nah, that boy is raw	4	105
5788	AKA step, Delta step	5	105
5796	Now I spit it so hot, you got tanned	14	105
5800	Alpha step, Omega step	19	105
5804	AKA step, Delta step	23	105
5811	Tammy, Becky, and Laura, or a Shirley	29	105
5817	Chasing y'all dreams and what you've got planned	13	105
5820	Bitch bend over, I'm here for a reason	37	105
5829	I feel a woo coming on, cuz	46	105
5832	I feel some woos coming on, cuz	49	105
5835	I feel a woo coming on, cuz	52	105
5841	You keep it going man, you keep those books rolling	0	106
5844	Then you get your bachelors, then you get your masters 	3	106
5846	Then when everybody says quit, you show them those degree man	5	106
5849	Yeah I'm fifty-two, so what?	8	106
5855	Yo Gee, they can't stop me from rapping, can they? Can they, Hop?	0	109
5858	I'd gladly risk it all right now (Through the fire, through whatever come my way)	3	109
5859	It's a life-or-death situation, man (For a chance at loving you, I'd take it all the way)	4	109
5862	Uh huh, yeah, yeah	7	109
5865	That right there could drive a sane man berserk	10	109
5869	She was with me before the deal, she been trying to be mine	15	109
5872	No use in me tryin to be lyin', I been trying to be signed	17	109
5873	Trying to be a millionaire, how I used two lifelines	18	109
5876	Story on MTV and I ain't trying to make a band	21	109
5878	I really apologize for everything right now, if it's unclear at all, man (Through the fire, to the limit, to the wall)	23	109
5883	Yeah, turn me up, yeah, uh	28	109
5886	But he wasn't talking about coke and birds, it was more like spoken word except he's really putting it down?	30	109
5305	Or here to convert atheists into believers	38	97
5317	(Jesus walk) God show me the way because the devil trying to break me down	50	97
5324	Get up I get (Down), get up I get (Down)	5	98
5332	I seen them re-po'd, re-sold, then re-driven	13	98
5340	Give you the most hits you can fit inside a whole disc and	21	98
5348	At the tender age of six she was arrested for the sit-ins	29	98
5355	They even made me show ID to get inside of Sam's Club	36	98
5363	And you know I gotta thank you for the way that she was brought up	44	98
5371	I know I got angels watching me from the other side	50	98
5383	So it's not me, it's He that's lyrical	65	98
5393	I'm talking to you of my many inspirations	75	98
5400	With a language called love	82	98
5405	'Cause whenever I open my heart, my soul or my mouth	87	98
5415	Started from nothing but he got this strong (The Roc is in the building)	96	98
5423	Y'all can save the chitter chat, this and that	104	98
5428	They way y'all all follow Jigga	109	98
5437	Uh, uh, I'm trying to catch the beat	3	99
5445	Till I built up the nerve to drop my ass up out of college	11	99
5461	And if you're losin' your high then smoke again, keep 'em high	27	99
5475	Yo Kwe, she don't believe me, please pick up the line	41	99
5484	Always got something to say like a okay playa hater, yeah	50	99
5501	You's a bitch I got ones that are thicker than you	67	99
5516	You dancing for money like Honey, I did this my way	83	99
5527	Ay you know I finally got my shit together, been watchin' that workout plan girl	3	100
5534	Girl you know I'mma video hofessional now	9	100
5544	(Now I can throw away my bus pass and shit oh my God)	16	100
5558	I came, I came	15	101
5566	Maybe we can work it out (Come on, come on)	23	101
5582	Four door, do you know the difference between a five, six, seven, eight?	38	101
5590	Work it out now	48	101
5598	I was able to get my phone bill paid, I got sounds and 13's	55	101
5606	I've been able to date outside the family	63	101
5613	My favorite work out plan (Oh, oh, oh)	71	101
5620	Get that man you deserve	77	101
5628	Get that man you deserve (Stop)	85	101
5636	Eat your salad, no dessert (Oh)	93	101
5644	Eat your salad, no dessert	101	101
5660	Bring some friends you cool with	8	102
5672	Got a dark-skinned friend look like Michael Jackson	20	102
5680	A little Anita, will definitely set this party off right	28	102
5688	Twistin A-marie	36	102
5705	Fulfilling our every sensation, slow jammin', having deep sex	53	102
5721	Some Minnie Ripperton, will definitely set this party off right	69	102
5737	And all us lovers need to hold hands	83	102
5751	And don't forget about that drug habit you picked up at school bein' around your peers 	5	104
5767	You know what college does for you? 	21	104
5784	Alpha step, Omega step	1	105
5793	I'mma make sure these light-skinned niggas never, ever, never come back in style	10	105
5797	Everything I want, I gotta wait a year, I wait a year	16	105
5814	Roc-a-Fella chain, yeah that's my rapper style	32	105
5825	AKA step, Delta step	42	105
5827	S.G. Rho step, Zeta step	43	105
5838	I feel some woos coming on, cuz	55	105
5845	Then you get your master's masters, then you get your doctrine, you go man	4	106
5851	You know why?	11	106
5860	Y'all, y'all don't really understand how I feel right now	5	109
5866	Not to worry, Mr. H-to-the-Izzo's back to wizerk	11	109
5874	In the same hospital where Biggie Smalls died	19	109
5879	They got my mouth wired shut for like I dunno, the doctor said like six weeks (For chance to be with you I'd gladly risk it all)	24	109
5885	And he explained the story about how blacks came from glory and what we need to do in the game	31	109
5888	If you could feel how my face felt, you would know how Mase felt	33	109
5889	Thank God I ain't too cool for the safe belt	34	109
5893	There's been an accident like Geico	38	109
5895	I must got a angel 'cause look how death missed his ass	40	109
5897	Look back on my life like the Ghost of Christmas Past	42	109
5898	Toys "R" Us where I used to spend that Christmas cash	43	109
5901	But I'm a champion, so I turned tragedy to triumph	46	109
5903	Y'know what I'm saying? (Through the fire, to the limit, to the wall)	48	109
5905	"Dawg, don't you realize I'll never make it on a plane now?	50	109
5906	It's bad enough I got all this jewelry on!" Haha (Through the fire, through whatever come my way)	51	109
5910	Through the fire, through whatever	55	109
5912	Through the fire, through whatever	57	109
5914	How's your son? (all, all, all the things, things)	0	110
5915	He make the team this year? (all, all, all the things things)	1	110
5916	Aw th-, they said he wasn't tall enough?	2	110
5919	(real is what you live to be)	5	110
5921	And this is for the family that can't be with us	7	110
5923	That's why I spit it in my songs so sweet	9	110
5924	Like a photo of your granny's picture	10	110
5928	Somebody please say grace so I can save face	14	110
5930	I even made you a plate, soul food, know how Granny do it	16	110
5931	Monkey bread on the side, know how the family do it	17	110
5932	When I brought it why did the guard have to look all through it?	18	110
5933	As kids we used to laugh	19	110
5934	Who knew I'd have to look at you through a glass?	21	110
5935	And look, you tell me you ain't did it, then you ain't did it	22	110
5936	And if you did, then that's family business	23	110
5364	And I know that you were smiling when you see the car I bought her	45	98
5376	You don't need a curriculum to know that you are a part of the math	58	98
5387	That's why I'm instrumental, vibrations is what I'm into	69	98
5394	When I say I can't let you or self down	76	98
5397	In my grip I would never ever let you down	79	98
5403	I too dream in color and in rhyme	85	98
5414	Who else you know been hot this long (Oh yeah, we ain't finished)	95	98
5422	Clear the way, I'm here to stay	103	98
5427	Young, the archbishop, the Pope John Paul of y'all niggas	108	98
5436	I'm trying to catch the beat	2	99
5444	My freshman year I was going through hella problems	10	99
5450	I'm so shy that you thought I was bashful	16	99
5457	'Cause we don't wanna hear that weak shit no mo'	23	99
5464	You know how girls on Black Planet be when they get bubbly	30	99
5470	Your screen saver say tweet, so you got to call me	36	99
5479	But never mind, I need some tracks, you tryin' to pull tracks out	45	99
5487	You really fuckin' that much or trying to get off cigarettes?	53	99
5495	Real rappers is hard to find, like a remote	61	99
5503	They say hip hop is dead, I'm here to resurrect me	69	99
5511	Video hard to watch like Medusa	78	99
5517	So when the industry crash, I survive like Kanye	84	99
5528	And if you're losin' your high then smoke again, keep 'em high	90	99
5545	You might be able to pull you a rapper, a NBA player	2	101
5559	It's been a week without me  and she feel weak without me 	16	101
5575	Maybe one day girl we can bone	32	101
5589	She talkin' about freakin' out then maybe we can work it out (Come on)	44	101
5599	Put up in my Cavalier and I was able to get a free trip to Cancun	56	101
5607	I got a double wide and I rode the plane, rode the plane	64	101
5614	I wanna see you work out (Yeah yeah yeah yeah, yeah yeah yeah yeah)	72	101
5621	It's Kanye's workout plan	78	101
5629	It's Kanye's workout plan (Okay break)	86	101
5637	Get that man you deserve	94	101
5645	Get that man you deserve (Woo)	102	101
5653	Say that you're gonna bee	1	102
5664	So we get our grind on	12	102
5669	Tellin' me them diamonds	17	102
5677	I'mma play this Gladys Knight	25	102
5685	When it come to rockin' original like Marvin and Luther	33	102
5692	And always 	40	102
5699	Bumpin' R&B and I got to leave	47	102
5707	Come on over, make me touch you all over your body, baby don't say no to me	55	102
5715	I still spit it like it's R&B, o to the club with me	63	102
5723	And all us lovers need to hold hands	71	102
5743	Gotta run up on	80	102
5756	So now you get your degree tattooed on your back you're so excited about it 	10	104
5764	You get to take messages for the secretary who never went to college 	18	104
5772	It was meant to be. 	26	104
5781	But I bet I could add up all the change in your purse, 	35	104
5789	S.G. Rho step, Zeta step	6	105
5795	They say "Oh you graduated?" No, I decided I was finished	12	105
5799	I went to Cheesecake, he was a motherfucking waiter there	18	105
5806	Gangstas walk, pimps gon' talk	25	105
5807	Back to school and I hate it there, I hate it there	15	105
5815	Rosary piece, yeah that's my Catholic style	33	105
5823	Gangstas walk, pimps gon' talk	40	105
5826	Gangstas walk, pimps gon' talk	44	105
5830	I feel a woo coming on, cuz	47	105
5836	I feel a woo coming on, cuz	53	105
5839	A couple woos coming on, cuz	56	105
5842	You pick up those books you're going to read  and not remember and you roll man	1	106
5852	Because when I die, buddy, you know what going to keep me warm?	12	106
5853	Hate all you want but I'm smart, I'm so smart, and I'm in school	9	106
5867	How do you console my mom or give her light support?	12	109
5871	Telling her her son's on life support and just imagine how my girl feel	13	109
5880	Y'know he had reconstru- I had reconstructive surgery on my jaw (Through the fire, through whatever come my way)	25	109
5887	Good dude, bad night, right place, wrong time in the blink of a eye, his whole life changed	32	109
5890	I swear to God driver two wants to sue	35	109
5892	My dogs couldn't tell if I, I looked like Tom Cruise in Vanilla Sky, it was televised	37	109
5894	They thought I was burnt up like Pepsi did Michael	39	109
5896	Unbreakable, what you thought, they'd call me Mr. Glass?	41	109
5899	And I still won't grow up, I'm a grown-ass kid	44	109
5900	Swear I should be locked up for stupid shit that I did	45	109
5902	Make music that's fire, spit my soul through the wire	47	109
5904	When the doctor told me I had, um, that I was gonna have to have a plate in my chin, I said (For chance to be with you I'd gladly risk it all)	49	109
5907	She can't be serious, man (For a chance at loving you, I'd take it all the way)	52	109
5908	(Right down to the wire, even through the fire)	53	109
5909	Through the fire, to the limit	54	109
5911	Through the fire, to the limit	56	109
5913	Through the fire, to the limit	58	109
5917	(all, all, all that glitters is not gold)	3	110
5918	Yeah me we gon' cook this up (all gold is not reality)	4	110
5920	This is family business	6	110
5922	And this is for my cousin locked down, know the answer's in us	8	110
5925	Now that you're gone it hit us	11	110
5926	Super hard on Thanksgiving and Christmas, this can't be right	12	110
5927	Yeah you heard the track I did man, this can't be life	13	110
5929	And have a reason to cover my face	15	110
3171	Till they walk in his footsteps and try to be him	33	52
3196	Back when they thought pink Polos would hurt the Roc	4	53
3206	Now he look at me, like, "Damn, dawg, you where I am"	15	53
3214	(Top of the world, baby, top top of the world)	23	53
3223	Before anybody wanted K. West beats, me and my girl split the buffet at KFC	32	53
3235	Yes, yes, yes	44	53
3247	But I still feel possessed as a gun charge	56	53
3255	Testify, come up in the spot looking extra fly	64	53
3262	I'm, I'm sky high	71	53
3270	Feels good to be home	79	53
3277	Now I ain't sayin' she a gold digger	6	54
3285	She said, I can tell you rock, I can tell by your charm	14	54
3296	We all went to din and then I had to pay	22	54
3302	But she ain't messin' wit' no broke niggas, uh	31	54
3311	You will see him on TV, any given Sunday	40	54
3317	If you ain't no punk	46	54
3327	 Get down girl, go 'head get down, uh	56	54
3336	He gon' make it into a Benz out of that Datsun	65	54
3345	 Get down girl, go 'head get down	74	54
3352	One of my best friends from back in the day	5	56
3361	How'd he get the cash? The day his father passed away	14	56
3369	And I was just a virgin, a baby	22	56
3378	He told me don't rush to get grown, drive slow, homie	31	56
3386	Trunk open, screens on, neons lit with fifth relaxed	39	56
3395	A young Houston hard hitter all about the scrilla	48	56
3403	You need to pump your brakes and drive slow, homie)	56	56
3413	My canaries is gleamin' through my angel wings	66	56
3422	You never know, homie, might meet some hoes, homie	75	56
3430	The young smoke grass in grassless jungles	6	57
3440	Children are unheld, I wish love was for sale	15	57
3449	That real black music nigga	1	58
3455	When our heroes or heroines got hooked on heroin	7	58
3464	That's that crack music nigga	16	58
3472	Who gave Saddam anthrax?	24	58
3481	Shorty come and see his momma straight overdosin'	33	58
3489	Happen, happen	41	58
3503	And what we gave back was crack music	55	58
3512	The doctor don't wanna take procedures, he claim her heart can't take the anaesthesia	1	59
3528	You don't see that we hurt? But still	17	59
3545	And I can't wait for a sunny day (Seeing it through your eyes)	33	59
3560	Tellin' you the truth now	49	59
3565	We gon' to Mass today, we have to pray	4	60
3577	Make it out of this grind, 'fore I'm out of my mind	14	60
3587	And I'mma look in the mirror if I need some help	24	60
3596	I always knew that one day, they'd try to bring me down, way down, way down	33	60
3605	What's your addiction? Is it money? Is it girls? Is it weed?	5	61
3614	Why everything that's supposed to be bad make me feel so good?	14	61
3623	Not now but right now, I need you to undress, and then pose	23	61
3632	You make me smile with my heart, oh	32	61
3641	OK, OK, OK (You make me smile with my heart, oh)	41	61
3650	You know I was just kidding	50	61
3659	Hpnotiq for Henny? Now nigga that's a chaser	7	63
3675	Get they first car and then IRS show up	23	63
3683	I ain't in the Klan but I brought my hood with me	31	63
3700	I heard the beat and I ain't know what to write	48	63
3716	I survived the livest niggas around	64	63
3732	Turn nothin' to somethin', now pimpin' that's a savior	80	63
3740	Feeling better than I ever felt before today	88	63
3748	I gotta say what's up to Tony Williams	98	63
3759	But better late than never it's orientation (It's orientation)	107	63
3768	After that I grab your ass.	3	66
3777	I mean I promise y'all	12	66
3786	But I just thought we should know	21	66
3794	After that, I grab your ass.	31	66
3805	You know what though? You my favorite accident	40	66
3815	And we about to let it flow	50	66
3824	But it's too late	2	68
3834	(Gone) We striving home	12	68
3850	We striving home, gone	28	68
3867	Then I see how y'all gonna react when I'm gone	44	68
3883	And trying to help his mama with the fact that her child gone	61	68
3900	And since I gone to a cell for some petty crimes	78	68
3917	Sometimes I can't believe it when I look up in the mirro'	95	68
3933	Desert me	3	69
3951	so its only right that I let the top drop on a drop-top Porsche	20	69
3966	What more could you ask for?	36	69
3987	Right then my body got still like a paraplegic	54	69
4000	This track the Indian dance to bring our reign back	70	69
4017	I'll be late for that, baby I'll wait for that	2	70
4033	Now I'm in the shop class or the basket weavin'	20	70
4047	I'll be late for that, I can't wait for that	34	70
4051	'Cause I'll be late for that	39	70
4058	With the freshest hoes, the professors know	46	70
4072	I'll be late for that	60	70
4078	Jesus praise the Lord (Yes God)	5	71
4087	We on an ultralight beam	14	71
4096	We know we need it	22	71
4104	We on an ultralight beam	31	71
4113	Somewhere I can feel safe	39	71
4122	(Lord) To make these wrongs turn right	48	71
4138	Tryna snap photos of familia	64	71
4148	That there ain't one gosh darn part you can't tweet	73	71
4155	Just throw this at the end if I'm too late for the intro	81	71
4164	We on an ultralight beam	90	71
4180	And I appreciate what you allowed for me	3	65
5937	And I don't care 'bout (all the, all the diamond rings, diamond rings)	24	110
5949	And y'all gon' hate it and I'm his favorite	35	110
5958	And you don't wanna stay there 'cause them your worst cousins	44	110
5967	Let the sun come out and all the children say	53	110
5975	You can still love your man and be manly dog	61	110
5982	And act like everything fine and if it isn't	68	110
5990	They don't mean a thing (all, all, all the things)	76	110
5994	All these things (oooh) all these things (these things)	82	110
6000	All these things (oooh) all these things (these things)	87	110
6004	I'd like to propose a toast	3	111
6009	So get your ass up off the wall	9	111
6019	Roc-A-Fella's only niggas that helped	17	111
6026	It's funny how wasn't nobody interested	24	111
6035	Now is Kanye the most overbooked? Yes sir	33	111
6040	I'm the Gap like Banana Republic and Old Navy, and ooh	38	111
6047	Last year shoppin' my demo, I was tryin' to shine	45	111
6052	You niggas wear suits 'cause you can't dress no more	52	111
6060	I prayed to the skies and I changed my stars	58	111
6067	Killin' y'all niggas on that lyrical shit	65	111
6075	I had my demo with me, you know, like I always do	73	111
6082	(I'll sign you as a producer and a rapper)	81	111
6089	I made this one beat where I sped up this Harold Melvin sample	88	111
6099	And he said, "Tell me what you think of this"	99	111
6107	I was on the train, man, you know	107	111
6116	So I ain't have to deal with the landlord 'cause he's a jerk	116	111
6123	I loaded up all my equipment, and the first beat I made was, uh, "Heart of the City"	123	111
6137	You know I ain't talkin shit	137	111
6145	And I saw his eyes light up when I said that line	147	111
6152	So, Blueprint, "H to the Izzo," my first hit single	152	111
6157	"Gimme a beat that sound like Jay-Z," You know, they dick riders, whatever	157	111
6171	Dame was like, "Yo you got a deal with Capitol? Okay man, just make sure it's not wack"	171	111
6185	Like they still weren't looking at me like a rapper	185	111
6195	I already started booking studio sessions, I started arranging my album, thinking of marketing schemes, man I was ready to go	195	111
5938	They don't mean a thing (all, all, all the things)	25	110
5950	I can't deny it, I'm a straight rider	36	110
5960	Act like you ain't took a bath with your cousins	46	110
5969	A creative way to rhyme without usin' knives and guns	55	110
5976	You ain't got to get heated at every house warmin'	62	110
5983	We ain't lettin' everybody in our family business	69	110
5991	All these fancy things	77	110
5995	All these things (oooh) all these things (these things)	83	110
6002	For making me do this shit, motherfucker	1	111
6011	The all around the world Digital Underground Pac	10	111
6020	My money was thinner than Sean Paul's goatee hair	18	111
6027	Till the night I almost killed myself in Lexus	25	111
6036	Though the fans want the feeling of A Tribe Called Quest	34	111
6050	Or use my arrogance as the steam to power my dreams	48	111
6058	Bought my mom a purse, now she Louis Vuitton Mom	56	111
6062	"Oh my god, is that a black card?"	60	111
6077	Just askin' me to send him beats, and I'm thinking he's trying to get into managing producers, 'cause he had this other kid named Just Blaze he was messin' with	76	111
6092	So I went and um, I was listening to Dre Chronic 2001 at that time and really I just, like bit the drums off "Xxplosive" and put it like with it sped up, sampled	91	111
6100	(Check this out, tell me what you think of this, right here)	100	111
6108	So after that I went back home and man I'm, I'm just in Chicago, I'm trying to do my thing	108	111
6117	Me and my mother drove to Newark, New Jersey	117	111
6124	And Beans was still working on his album at that time, so I came up there to Baseline, it was Beans' birthday, matter of fact, and I played like seven beats	124	111
6128	And Hip Hop said, "Yo play that one beat for him"	128	111
6133	Dame didn't know who I was and I was like, "Yo, what's up I'm Kanye"	133	111
6149	Mayonnaise colored Benz, I push miracle whips"	146	111
6169	(Y'all niggas is stupid)	165	111
6180	Don't bite that chorus, I might still use it	180	111
6192	That, you know, 'cause I told him I was gonna do it, and I'm a man of my word, I was gonna roll with what I said I was gonna do	192	111
6199	And, you know I told them that Roc-A-Fella was interested	199	111
5940	I tell you that all (all the glitter is not gold) my weight in gold (gold is not reality)	27	110
5963	But you ain't have to tell my girl I used to pee in the bed	49	110
5978	Why Uncle Ray and Aunt Sheila always performin'?	64	110
6012	(oooh) All these things (these things)	80	110
6031	Raise your glasses, your glasses, your glasses to the sky and (Here's to the Roc)	29	111
6056	But without it I'd be last, so I ought to laugh	50	111
6070	And they ask me, they ask me, they ask me, I tell them (Here's to Roc-A-Fella)	68	111
6085	I was messin' with, uh, D-Dot also	83	111
6096	And that day, I came and I tracked the beat and I got to meet Jay-Z and he said, "Oh you a real soulful dude"	96	111
6113	And I got evicted at the same time	113	111
6126	But then Jay walked in, I remember he had a Gucci bucket hat on	126	111
6141	I gotta bring up one thing, you know, come back to the story	141	111
6162	Like, Dave Lighty fucked with me, my nigga Mel brought me to a bunch of labels, Jessica Rivera, man	162	111
6168	He wanted to sign me really bad	169	111
6175	So I played, actually it's a song that you'll never hear, but maybe I might use it	175	111
6184	(It's actually kinda hot)	184	111
6191	Actually, even with that I was still about to take the deal with Capitol 'cause it was already on the table and 'cause of my relationship with 3H	191	111
6198	(Yo, Capitol pulled out on the deal)	198	111
5944	And this is for everybody standin' with us	30	110
5945	Come on, let's take a family Grammy picture	31	110
5946	Abby, remember when they ain't believe in me?	32	110
5952	Grandma, get 'em shook up	38	110
5953	Aw naw, don't open the photo book up	39	110
5954	I got an Aunt Ruth that can't remember your name	40	110
5956	You know that one auntie, you don't mean to be rude	42	110
5957	But every holiday nobody eatin' her food	43	110
5965	Let the sun come out and all the children say	51	110
5966	Rain, rain, rain go away	52	110
5971	And keep your face to the risin' sun	57	110
5973	And my niggas ain't my guys, they my family dog	59	110
5974	I feel like one day you'll understand me dog	60	110
5980	Y'all gon' sit down, have a good time this reunion	66	110
5981	And drink some wine like Communion	67	110
5985	They don't mean a thing (all, all, all the things)	71	110
5988	They don't mean a thing, a thing	74	110
5989	And I don't care 'bout (all the, all the diamond rings, diamond rings)	75	110
5996	All these things (oooh) all these things (these things)	84	110
5999	All these things (oooh) all these things (these things)	86	110
6003	Had to throw everybody out the motherfucking room 'cause they don't fucking	2	111
6005	And I am (Here's to the Roc)	5	111
6008	This is the last call for alcohol, for the (Mr. Rockefeller)	8	111
6010	I said toast motherfucker	4	111
6015	And come back next year with the whole fucking game	13	111
6018	Then maybe he stop savin' all the good beats for himself	16	111
6021	Now Jean Paul Gaultier cologne fill the air, here	19	111
6025	I'll have a buzz bigger than insects in Texas	23	111
6028	Kanye West and Bette Midler:	26	111
6030	And they ask me, they ask me, they ask me, I tell them (Here's to Roc-A-Fella)	28	111
6034	Now was Kanye the most overlooked? Yes sir	32	111
6039	Call him Kwali or Kweli, I put him on songs with Jay-Z	37	111
6041	It come out sweeter than old Sadie	39	111
6043	Girl he had with him, ass coulda won the horse awards	41	111
6046	It was straight embarrassing how y'all played him	44	111
6048	Every motherfucker told me that I couldn't rhyme	46	111
6051	So I don't listen to the suits behind the desk no more	51	111
6053	You can't say shit to Kanye West no more	53	111
6065	Brains, power, and muscle, like Dame, Puffy, and Russell	63	111
6066	Your boy back on his hustle, you know what I've been up to	64	111
6071	Raise your glasses, your glasses, your glasses to the sky and (Here's to the Roc)	69	111
6073	So get your ass up off the wall, all	71	111
6074	So this A&R over at Roc-A-Fella, named Hip Hop picked the "Truth" beat for Beanie and I was in the session with him	72	111
6080	(Yo, you wanna sign him, tell him you like how he rap)	79	111
6081	I was all, I dunno if he was gassin' me or not but he's like he wanna manage me as a rapper and a producer	80	111
6086	People were like this, started talking about the ghost production but that's how I got in the game	84	111
6088	So you know, after they picked that Truth beat I was figuring I was gonna do some more work but shit just wasn't poppin' off like that	86	111
6094	And that was like, really the first beat of that kind that was on the Dynasty album	93	111
6095	I could say that was the the resurgence of the soul sound and you know, I got to come in and track the beat and at the time I was still with my other management	94	111
6097	(Oh you a real soulful dude, man)	97	111
6103	So he asked me, "What you think of it?"	103	111
6105	And I was like, "Man that shit tight"	105	111
6111	But it was supposed to really go through my production company, but he ended up going straight with the company	111	111
6112	So, like I'm just straight holdin' the phone, gettin' the bad news that dude was tryin' to leave my company	112	111
6114	So I went down and tracked the beats from him	114	111
6121	(Kanye, baby, we're here)	121	111
6125	And, you know I guess he was in the zone, he already had the beats that he wanted, I had did "Nothing Like It" already at that time	125	111
6127	I remember it like, like it was yesterday	127	111
6129	So I played "Heart of the City" and really I made "Heart of the City," I really wanted to give that beat to DMX	129	111
6132	Two days later, I'm in Baseline and I seen Dame	132	111
6135	"You that kid that gave all them beats to Jay? Yo, this nigga got classics to beats G"	135	111
6138	I'm like, "Oh shit"	138	111
6140	So, Jay came in and he spit all these songs like in one day, and in two days	140	111
6146	(That, that was cool, that was hot)	149	111
6148	But you know the rest, the rap was like real wack and shit, so that's all the response, he said, "Man, that was tight"	148	111
6151	I didn't know all these people at the time they was in the room, and I said, "Yo Jay I could rap"	144	111
6154	Because, you know, of course later he allowed me to go on tour with him	154	111
6156	And at this time, you know I didn't have a deal, I had songs, and I had relationships with all these A&R's, and they wanted beats from me, so they'd call me up, I'd play them some beats	156	111
6158	So I'll play them these post-Blueprint beats or whatever and then I'll play my shit. I'll	158	111
6164	I'm not gonna say nothin' to mess my promotion up	164	111
6165	Let's just say I didn't get my deal	166	111
6170	(We gonna change the game, buddy)	170	111
6172	(You gotta make sure it's not wack)	172	111
6176	So, it's called "Wow"	176	111
6179	You got your first gold single, damn, nigga, wow," like the chorus went	179	111
6181	So I play that song for him, and he's like, "Oh shit"	181	111
6188	(You don't wanna catch a brick)	188	111
6190	I told Hip Hop and Hip Hop was all, "Oh, word?"	190	111
6197	Capitol pulled on the deal"	197	111
5947	Now she like, "See, that's my cousin on TV"	33	110
5959	Got roaches at their crib like them your first cousins	45	110
5968	I woke up early this mornin' with a new state of mind	54	110
5984	(all the, all the diamond rings, diamond rings)	70	110
5992	I tell you that all (all the glitter is not gold) my weight in gold (gold is not reality)	78	110
5998	All these things (oooh) all these things (these things)	85	110
6007	Raise your glasses, your glasses, your glasses to the sky and (Here's to the Roc)	7	111
6017	They expected that College Dropout to drop and then flop	15	111
6024	Flow infectious, give me ten seconds	22	111
6033	So get your ass up off the wall	31	111
6038	That'll take Freeway, throw him on tracks with Mos Def	36	111
6045	Some say he arrogant, can y'all blame him?	43	111
6055	I rocked twenty thousand people, I was just on tour, nigga	54	111
6063	I turned around and replied, "Why yes	61	111
6078	And um, he was friends with my mentor, No ID	77	111
6090	And at that time, like the drums really weren't soundin' right to me	90	111
6098	And he, uh, played the song 'cause he already spit his verse by the time I got to the studio, you know how he do it, one take	98	111
6106	You know what I'm sayin', man what I'mma tell him?	106	111
6115	I took that money, came back, packed all my shit up in a U-Haul, maybe about ten days before I had to actually get out	115	111
6122	You know, we went to Ikea, I bought a bed, I put the bed together myself	122	111
6134	(Yo, you that kid, Kanye?)	134	111
6139	And all this time, I'm starstruck, man, I'm still thinking 'bout, you know I'm picturing these niggas on the show The Streets is Watching, I'm lookin', these were superstars in my eyes and they still are, you know	139	111
6153	And I just took that proudly, built relationships with people, my relationship with Kweli I think was one of the best ones to ever happen to my career as a rapper	153	111
6161	You know what happened, it was some A&R's that fucked with me though, but then like the heads, it'd be somebody at the company that'll say "Naw"	161	111
6177	"I go to Jacob with twenty-five thou, you go with 25 hundred, wow	177	111
6193	Then, you know, I'm not gonna name no names, but people told me, "Oh he's just a producer rapper" and told 3H that told the heads of the Capitol, and right	193	111
6200	And I don't know if they thought that was just something I was saying to gas them up to try to push the price up or whatever	200	111
5948	Now, we gettin' it and we gon' make it	34	110
5951	But when we get together be electric slidin'	37	110
5955	But I bet them Polaroids'll send her down memory lane	41	110
5964	Rain, rain, rain go away	50	110
5972	All my niggas from the Chi, that's my family dog	58	110
5979	The second she storm out, then he storm in	65	110
5987	(all the, all the diamond rings, diamond rings)	73	110
5993	All these things (oooh) all these things (these things)	81	110
6001	Yo, fuck you, Kanye, first and foremost	0	111
6006	And they ask me, they ask me, they ask me, I tell them (Here's to Roc-A-Fella)	6	111
6016	Ain't nobody expect Kanye to end up on top	14	111
6032	This is the last call for alcohol, for the (Mr. Rockefeller)	30	111
6042	Nice as Bun-B when I met him at the Source awards	40	111
6049	Now I could let these dream killers kill my self-esteem	47	111
6057	I'm Kan, the Louis Vuitton Don	55	111
6061	I went to the malls and I balled too hard	59	111
6064	But I prefer the term African American Express"	62	111
6072	This is the last call for alcohol, for my niggas (Mr. Rockefeller)	70	111
6079	And No ID told him, "Look man, you wanna mess with Kanye you need to tell him that you like the way he rap"	78	111
6087	If it wasn't for that, I wouldn't be here	85	111
6101	And I heard it, and I was thinking like, "Man, I really wanted more like of the simple type Jay-Z"	101	111
6109	You know, I got groups, I got acts I'm trying to get on, and like there wasn't nothin really like, poppin' off the way it should have been	109	111
6118	(Come on, let's just go)	118	111
6130	(No I think Jay gon' like this one right here)	130	111
6144	And Hip Hop was there, I think Ty-Ty, John Meneilly, a bunch of people	143	111
6160	Everybody out there listen here, I played them "Jesus Walks" and they didn't sign me	160	111
6167	The person who actually kicked everything off was Joe 3H from Capitol Records	168	111
6174	Dame was in the room	174	111
6183	"I ain't gonna front, it's kinda hot"	183	111
6187	And I'm sure Dame figured, "Like man, if he do a whole album, if his raps is wack at least we can throw Cam on every song and save the album, you know	186	111
6203	So won't you raise your glass, won't you?	203	111
6194	The day I'm talking about, I planned out everything I was gonna do man, I had picked out clothes	194	111
6201	I went up	201	111
6204	So won't you raise your glass, won't you?	204	111
6206	So won't you raise your glass, won't you?	206	111
5941	Now all I know I know all these things (real is what you live to be)	28	110
5961	Fit three in the bed while six of y'all	47	110
5970	Keep your nose out the sky, keep your heart to God	56	110
5986	They don't mean a thing	72	110
6014	I take my chain, my fifteen seconds of fame	12	111
6023	Would you please stop talking about how my dick head is	21	111
6037	But all they got left is this guy called West	35	111
6054	I use it as my gas, so they say that I'm gassed	49	111
6069	And I am (Here's to the Roc)	67	111
6076	Uh, he started talkin' to me on the phone, going back and forth	75	111
6084	I'm like "Oh shit"	82	111
6091	I played it for Hip over the phone, he's like, "Oh, yo that shit is crazy, Jay might want it for this compilation album he doin', called the Dynasty"	89	111
6102	I ain't want like the, the more introspective, complicated rhy- or the in my personal opinion	102	111
6110	One of my homies that was one of my artists, he got signed	110	111
6119	I hadn't even seen my apartment	119	111
6131	And I played another beat, and I played another beat and I remember that Gucci bucket, he took it and like put it over his face and made one of them faces like, "Ooh"	131	111
6142	The day I did the 'Can't Be Life' beat on track, I remember Lenny S., he had some Louis Vuitton sneakers on, he think he fly	142	111
6150	That was it, you know, I ain't get no deal then, haha	150	111
6163	(Man, you niggas is stupid if y'all don't sign Kanye, for real)	163	111
6178	I got eleven plaques on my walls right now	178	111
6186	So uh Dame took me into the office, and he's like "Yo man, B, B, you don't want a brick, you don't want a brick"	187	111
6202	I called G, I said, "Man, you think we could still get that deal with Roc-A-Fella?"	202	111
5942	Who knew that life would move this fast?	20	110
5962	I'm talkin' 'bout three by the head and three by the leg	48	110
5977	Sittin' here, grillin' people like George Foreman	63	110
5997	Now all I know I know all these things (real is what you live to be)	79	110
6013	The Rudolph the red-nosed reindeer of the Roc	11	111
6022	They say he bougie, he big-headed	20	111
6029	And I am (Here's to the Roc)	27	111
6044	And I was almost famous, now everybody love Kanye, I'm almost Raymond	42	111
6059	I ain't play the hand I was dealt, I changed my cards	57	111
6068	Mayonnaise colored Benz, I push Miracle Whips	66	111
6083	I play the songs, he's like "Who that spittin'?" I'm like "It's me," he's like "Oh, well okay"	74	111
6093	And now it's kind of like my whole style, when it started, when he rapped on "This Can't be Life"	92	111
6104	(So what you think of this?)	104	111
6120	I remember I pulled up, I unpacked all my shit	120	111
6136	(Yo, Jay got classics, G)	136	111
6143	And I spit this rap that said, uh, "I'm killin' y'all niggas on that lyrical shit	145	111
6147	Okay, fast forward	151	111
6155	Man, yo, I appreciate, I love him for that	155	111
6159	Be like, "Yo but I rap too." Hey, I guess they was lookin' at me crazy 'cause you know, 'cause I ain't have a jersey on or whatever	159	111
6166	The nigga that was behind me, I mean, he wasn't even a nigga, you know?	167	111
6173	Then one day I just went ahead and played it, I wanted to play some songs, 'cause you know Cam was in the room, Young Guru, and	173	111
6182	(Oh shit, it's not even wack)	182	111
6189	"You gotta be under an umbrella, you'll get rained on"	189	111
6196	And they had Mel call me, they said, "Yo	196	111
6205	So won't you raise your glass, won't you?	205	111
\.


--
-- Name: lyrics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('lyrics_id_seq', 6206, true);


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY songs (id, title, album_id) FROM stdin;
1	On Sight	1
2	Black Skinhead [Blkkk Skkkn Head]	1
3	I Am A God	1
4	New Slaves	1
5	Hold My Liquor	1
6	I'm In It	1
7	Blood On The Leaves	1
8	Guilt Trip	1
9	Send It Up	1
10	Bound 2	1
11	Dark Fantasy	4
12	Gorgeous	4
13	Power	4
14	All Of The Lights	4
15	Monster	4
16	So Appalled	4
17	Devil In A New Dress	4
18	Runaway	4
19	Hell Of A Life	4
20	Blame Game	4
21	Lost In The World	4
22	Who Will Survive In America	4
23	See Me Now	4
24	Say You Will	6
25	Welcome To Heartbreak	6
26	Heartless	6
27	Amazing	6
28	Love Lockdown	6
29	Paranoid	6
30	RoboCop	6
31	Street Lights	6
32	Bad News	6
33	See You In My Nightmares	6
34	Coldest Winter	6
35	Pinocchio Story	6
36	Good Morning	2
37	Champion	2
38	Stronger	2
39	I Wonder	2
40	Good Life	2
41	Can't Tell Me Nothing	2
42	Barry Bonds	2
43	Drunk & Hot Girls	2
44	Flashing Lights	2
45	Everything I Am	2
46	The Glory	2
47	Homecoming	2
48	Big Brother	2
49	Good Night	2
50	Bittersweet Poetry	2
51	Wake Up Mr. West	3
52	Heard 'Em Say	3
53	Touch The Sky	3
54	Gold Digger	3
55	Skit #1	3
56	Drive Slow	3
57	My Way Home	3
58	Crack Music	3
59	Roses	3
60	Bring Me Down	3
61	Addiction	3
62	Skit #2	3
63	We Major	3
64	Skit #3	3
65	Hey Mama	3
66	Celebration	3
67	Skit #4	3
68	Gone	3
69	Diamonds From Sierra Leone	3
70	Late	3
71	Ultralight Beam	5
72	Father Stretch My Hands Pt. 1	5
73	Father Stretch My Hands Pt. 2	5
74	Famous	5
75	Feedback	5
76	Low Lights	5
77	Highlights	5
78	Freestyle 4	5
79	I Love Kanye	5
80	Waves	5
81	FML	5
82	Real Friends	5
83	Wolves	5
84	Frank's Track	5
85	Siiiiiiiiilver Surffffeeeeer Intermission	5
86	30 Hours	5
87	No More Parties In LA	5
88	Facts (Charlie Heat Version)	5
89	Fade	5
90	Saint Pablo	5
91	Intro	7
92	We Don't Care	7
93	Graduation Day	7
94	All Falls Down	7
95	I'll Fly Away	7
96	Spaceship	7
97	Jesus Walks	7
98	Never Let Me Down	7
99	Get Em High	7
100	Workout Plan	7
101	The New Workout Plan	7
102	Slow Jamz	7
103	Breathe In Breathe Out	7
104	School Spirit Skit 1	7
105	School Spirit	7
106	School Spirit Skit 2	7
107	Lil Jimmy Skit	7
108	Two Words	7
109	Through The Wire	7
110	Family Business	7
111	Last Call	7
\.


--
-- Name: songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('songs_id_seq', 111, true);


--
-- Name: albums albums_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);


--
-- Name: lyrics lyrics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lyrics
    ADD CONSTRAINT lyrics_pkey PRIMARY KEY (id);


--
-- Name: songs songs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (id);


--
-- Name: lyrics lyrics_song_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lyrics
    ADD CONSTRAINT lyrics_song_id_fkey FOREIGN KEY (song_id) REFERENCES songs(id);


--
-- Name: songs songs_album_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY songs
    ADD CONSTRAINT songs_album_id_fkey FOREIGN KEY (album_id) REFERENCES albums(id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

