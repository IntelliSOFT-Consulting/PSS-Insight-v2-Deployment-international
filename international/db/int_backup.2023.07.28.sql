--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

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
-- Name: audit_logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audit_logs (
    id bigint NOT NULL,
    country character varying(255),
    date_added timestamp without time zone,
    version bigint,
    changes character varying(255),
    indicator character varying(255)
);


ALTER TABLE public.audit_logs OWNER TO postgres;

--
-- Name: audit_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.audit_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.audit_logs_id_seq OWNER TO postgres;

--
-- Name: audit_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.audit_logs_id_seq OWNED BY public.audit_logs.id;


--
-- Name: benchmarks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.benchmarks (
    id bigint NOT NULL,
    data_element character varying(255),
    indicator_code character varying(255),
    org_unit character varying(255),
    period character varying(255),
    value character varying(255),
    national_value character varying(255)
);


ALTER TABLE public.benchmarks OWNER TO postgres;

--
-- Name: benchmarks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.benchmarks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.benchmarks_id_seq OWNER TO postgres;

--
-- Name: benchmarks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.benchmarks_id_seq OWNED BY public.benchmarks.id;


--
-- Name: indicators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.indicators (
    id bigint NOT NULL,
    indicator_id character varying(255),
    metadata character varying(8000)
);


ALTER TABLE public.indicators OWNER TO postgres;

--
-- Name: indicators_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.indicators_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.indicators_id_seq OWNER TO postgres;

--
-- Name: indicators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.indicators_id_seq OWNED BY public.indicators.id;


--
-- Name: mail_configuration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mail_configuration (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    from_email character varying(255),
    is_active boolean,
    password character varying(8000),
    ports character varying(255),
    server_name character varying(255),
    server_type character varying(255),
    updated_at timestamp without time zone,
    username character varying(255)
);


ALTER TABLE public.mail_configuration OWNER TO postgres;

--
-- Name: mail_configuration_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mail_configuration_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_configuration_id_seq OWNER TO postgres;

--
-- Name: mail_configuration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mail_configuration_id_seq OWNED BY public.mail_configuration.id;


--
-- Name: metadata_json; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.metadata_json (
    id character varying(255) NOT NULL,
    code character varying(255),
    created_at timestamp without time zone,
    metadata character varying(8000),
    updated_at timestamp without time zone
);


ALTER TABLE public.metadata_json OWNER TO postgres;

--
-- Name: notification_entity_email_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notification_entity_email_list (
    notification_entity_id bigint NOT NULL,
    email_list character varying(255)
);


ALTER TABLE public.notification_entity_email_list OWNER TO postgres;

--
-- Name: notification_subscription; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notification_subscription (
    id bigint NOT NULL,
    email character varying(255),
    first_name character varying(255),
    is_active boolean,
    last_name character varying(255),
    phone character varying(255),
    user_id character varying(255)
);


ALTER TABLE public.notification_subscription OWNER TO postgres;

--
-- Name: notification_subscription_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notification_subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notification_subscription_id_seq OWNER TO postgres;

--
-- Name: notification_subscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notification_subscription_id_seq OWNED BY public.notification_subscription.id;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notifications (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    message character varying(255),
    sender character varying(255),
    title character varying(255),
    updated_at timestamp without time zone
);


ALTER TABLE public.notifications OWNER TO postgres;

--
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_id_seq OWNER TO postgres;

--
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- Name: version_entity_indicators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.version_entity_indicators (
    version_entity_id bigint NOT NULL,
    indicators character varying(255)
);


ALTER TABLE public.version_entity_indicators OWNER TO postgres;

--
-- Name: versions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.versions (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    created_by character varying(255),
    published_by character varying(255),
    status character varying(255),
    updated_at timestamp without time zone,
    version_description character varying(255),
    version_name character varying(255)
);


ALTER TABLE public.versions OWNER TO postgres;

--
-- Name: versions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.versions_id_seq OWNER TO postgres;

--
-- Name: versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.versions_id_seq OWNED BY public.versions.id;


--
-- Name: audit_logs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_logs ALTER COLUMN id SET DEFAULT nextval('public.audit_logs_id_seq'::regclass);


--
-- Name: benchmarks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.benchmarks ALTER COLUMN id SET DEFAULT nextval('public.benchmarks_id_seq'::regclass);


--
-- Name: indicators id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicators ALTER COLUMN id SET DEFAULT nextval('public.indicators_id_seq'::regclass);


--
-- Name: mail_configuration id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mail_configuration ALTER COLUMN id SET DEFAULT nextval('public.mail_configuration_id_seq'::regclass);


--
-- Name: notification_subscription id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification_subscription ALTER COLUMN id SET DEFAULT nextval('public.notification_subscription_id_seq'::regclass);


--
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- Name: versions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.versions ALTER COLUMN id SET DEFAULT nextval('public.versions_id_seq'::regclass);


--
-- Data for Name: audit_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.audit_logs (id, country, date_added, version, changes, indicator) FROM stdin;
1	Kenya	2023-06-26 19:26:54.721297	1	\N	\N
2	Kenya	2023-06-26 19:33:23.889285	1	Lorem Ipsum	Lorem Ipsum
3	Kenya	2023-06-26 19:37:41.839264	2	Lorem Ipsum...2	Lorem Ipsum
4	Uganda	2023-06-26 19:38:17.243153	3	Uganda changes	Lorem Ipsum
5	GLOBAL	2023-07-05 11:42:00.657844	1	Template created	Dummy Data4
6	GLOBAL	2023-07-06 14:56:30.308078	1	Template created	test
7	GLOBAL	2023-07-06 17:24:23.248511	2	Template created	Test complete
8	GLOBAL	2023-07-06 17:31:22.803913	3	Template created	Dummy Data4
9	GLOBAL	2023-07-07 11:02:17.429863	1	Template created	test new version
10	GLOBAL	2023-07-07 11:27:02.579196	2	Template created	desc
11	GLOBAL	2023-07-10 06:53:39.231194	3	Template created	javan test version\n
12	GLOBAL	2023-07-10 08:34:39.326049	4	Template created	New Test #1
13	GLOBAL	2023-07-10 08:36:23.303716	5	Template updated	New Test #1
14	GLOBAL	2023-07-10 08:38:22.822965	6	Template updated	New Test #1
15	GLOBAL	2023-07-10 08:39:20.262805	7	Template created	New Test #1
16	GLOBAL	2023-07-11 05:21:22.495598	8	Template created	New Test
17	GLOBAL	2023-07-11 05:24:12.908948	9	Template created	Tuesday test indicator
18	GLOBAL	2023-07-11 06:46:19.502867	10	Template created	This is a new version.
19	GLOBAL	2023-07-11 06:47:20.379918	11	Template updated	This is a new version.
20	GLOBAL	2023-07-11 06:48:34.938489	12	Template updated	This is a new version!
21	GLOBAL	2023-07-11 06:49:03.558559	13	Template updated	This is a new version!
22	GLOBAL	2023-07-11 06:50:25.777943	14	Template created	Editing an indicator
23	GLOBAL	2023-07-11 09:06:12.698939	15	Template created	Test Tuesday Template\n
24	GLOBAL	2023-07-11 11:50:46.746441	16	Template created	New National Template
25	GLOBAL	2023-07-13 08:47:09.316314	1	Template created	Mid July Template Version
26	GLOBAL	2023-07-14 05:16:31.459434	2	Template created	test Friday Version
27	GLOBAL	2023-07-14 05:16:31.749285	3	Template created	test Friday Version
28	GLOBAL	2023-07-14 15:30:31.274834	4	Template created	Test
29	GLOBAL	2023-07-17 15:09:58.301565	5	Template created	Test national 
30	GLOBAL	2023-07-24 12:32:34.826659	6	Template created	Script9791
31	GLOBAL	2023-07-24 12:34:37.973723	7	Template created	Script2240
\.


--
-- Data for Name: benchmarks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.benchmarks (id, data_element, indicator_code, org_unit, period, value, national_value) FROM stdin;
1	heP0QC4A6Cn	PLG01	tajlG5IjLZr	201604	28	\N
2	heP0QC4A6Cn	PLG01	tajlG5IjLZr	201604	28	\N
3	CBold91c27Q	PLG01	FjZO8q7Ie2B	2022	359	\N
4	heP0QC4A6Cn	PLG01	tajlG5IjLZr	201604	\N	\N
5	LOz4ntVoG56	PLG06	FjZO8q7Ie2B	2022		\N
6	r7N7W4DhKkN	PLG02	FjZO8q7Ie2B	2022	40	\N
7	kqkKQS1NuL6	PLG03	FjZO8q7Ie2B	2022	40	\N
8	Aw9CfzxHA4W	PLG04	FjZO8q7Ie2B	2022	50	\N
9	vvx8x50e3hV	PLG05	FjZO8q7Ie2B	2022	40	\N
10	HJWTzhfwu9e	PLG07	FjZO8q7Ie2B	2022	40	\N
11	heP0QC4A6Cn	F01	FjZO8q7Ie2B	2022	100	\N
12	E17C8lwnYVs	F05	FjZO8q7Ie2B	2022	23	\N
13	X4A1GDWb4uH	OA02	FjZO8q7Ie2B	2022	10	\N
14	I22c6wKhuuK	OA03	FjZO8q7Ie2B	2022	23	\N
15	mzNoBhBzTYn	F03	FjZO8q7Ie2B	2022	10	\N
16	xA5bjVI3U9G	OA04	FjZO8q7Ie2B	2022	45	\N
17	Vj286Ye33JW	OA05	FjZO8q7Ie2B	2022	45	\N
18	xqJgw9Q24JJ	IRDMT01	FjZO8q7Ie2B	2022	40	\N
19	n9TKAyM83o1	IRDMT02	FjZO8q7Ie2B	2022	45	\N
20	xpYNAaj4rNN	IRDMT03	FjZO8q7Ie2B	2022	45	\N
21	IGWAM2o24cB	HR01	FjZO8q7Ie2B	2022	30	\N
22	yYtFbseg3ZY	HR02	FjZO8q7Ie2B	2022	10	\N
23	ROJPCnkjNC0	IM01	FjZO8q7Ie2B	2022	45	\N
24	CxNyizX9EVS	IM02	FjZO8q7Ie2B	2022	340	\N
25	LEBdlU07u3D	PS01	FjZO8q7Ie2B	2022	50	\N
26	bv3JREXtRg4	PS02	FjZO8q7Ie2B	2022	10	\N
27	pyIHPgV9G8A	PS03	FjZO8q7Ie2B	2022	10	\N
28	hqtNZjmcII9	PS04	FjZO8q7Ie2B	2022	10	\N
29	xRrsN1zEAnF	PS05	FjZO8q7Ie2B	2022	10	\N
30	ctSzS8a0tNn	PS06	FjZO8q7Ie2B	2022	10	\N
31	seFChzPxFBQ	PS07	FjZO8q7Ie2B	2022	100	\N
32	VyWtGGXMQRX	PS08	FjZO8q7Ie2B	2022	50	\N
33	RxZ0SgOkEa0	PS09	FjZO8q7Ie2B	2022	50	\N
34	lPIqHqctMiD	PS10	FjZO8q7Ie2B	2022	50	\N
35	dIrYWD0Ktsl	PS11	FjZO8q7Ie2B	2022	20	\N
36	o0nvZwu8ZUv	F06	FjZO8q7Ie2B	2022	10	\N
37	wWZAHmvmgM5	F04	FjZO8q7Ie2B	2022	10	\N
38	N2Wn873t2Gt	RS01	FjZO8q7Ie2B	2022	10	\N
39	fIF0Z6KXs09	RS02	FjZO8q7Ie2B	2022	10	\N
40	fLXfEgzfhjX	RS03	FjZO8q7Ie2B	2022	10	\N
41	Yh8a67RK8vL	RS04	FjZO8q7Ie2B	2022	10	\N
42	saNFO6GdAoV	RS05	FjZO8q7Ie2B	2022	10	\N
43	lIOpeFgFZ9x	RS06	FjZO8q7Ie2B	2022	10	\N
44	ra5MA7uwb3V	RS07	FjZO8q7Ie2B	2022	10	\N
\.


--
-- Data for Name: indicators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.indicators (id, indicator_id, metadata) FROM stdin;
26	c5LU51qS7ij	{"id":"c5LU51qS7ij","name":"PS01","dataElements":[{"id":"bFcn1lWzAe0","code":"PS01b_Uploads","name":"PS01b_Uploads"},{"id":"LIWt4Eg9ZYW","code":"PS01a_Comments","name":"PS01a_Comments"},{"id":"IWE8wCLK6aH","code":"PS01_Comments","name":"PS01_Comments"},{"id":"zt6sq1misSG","code":"PS01c_Uploads","name":"PS01c_Uploads"},{"id":"zcXo1wHD5kz","code":"PS01c_Comments","name":"PS01c_Comments"},{"id":"eqAZVy5RFv8","code":"PS01a","name":"Is there a national list of essential medicines?"},{"id":"E5jX3sO7TYc","code":"PS01b_Comments","name":"PS01b_Comments"},{"id":"qiZHjvRVfnF","code":"PS01a_Uploads","name":"PS01a_Uploads"},{"id":"DHfnqt1fvuz","code":"PS01b","name":"What is the year of publication of the latest version of the national essential medicines list? (published within the last 5 years)"},{"id":"aIoaDd6yKNr","code":"PS01_Uploads","name":"PS01_Uploads"}]}
30	gds9ABvImR3	{"id":"gds9ABvImR3","name":"PS05","dataElements":[{"id":"gVCpYGng8dn","code":"PS05c_Comments","name":"PS05c_Comments"},{"id":"tOzaUNi19o1","code":"PS05b","name":"In the reference year, what is the value of pharmaceuticals procured? Please indicate the appropriate currency."},{"id":"iy7QGESXewY","code":"PS05a","name":"In the last calendar year (or the latest year for which data are available) what is the total value of product losses due to expiry, damage, and/or theft? Please indicate the appropriate currency."},{"id":"Fd6wQX3zxAX","code":"PS05a_Comments","name":"PS05a_Comments"},{"id":"oe0huz9jGER","code":"PS05_Comments","name":"PS05_Comments"},{"id":"zP3Zz65m5Fd","code":"PS05b_Comments","name":"PS05b_Comments"},{"id":"FnIGrZ3zkYP","code":"PS05b_Uploads","name":"PS05b_Uploads"},{"id":"prWnWtmaC1B","code":"PS05c","name":"What is the last year for which data for Product losses by value due to expired medicines or damage or theft are available?"},{"id":"AI3kNUem04t","code":"PS05_Uploads","name":"PS05_Uploads"},{"id":"bI2xgmiR5AL","code":"PS05a_Uploads","name":"PS05a_Uploads"},{"id":"tExoewl8oZ5","code":"PS05c_Uploads","name":"PS05c_Uploads"}]}
3	aCplj3lP8mF	{"id":"aCplj3lP8mF","name":"F03","dataElements":[{"id":"GaB0rmjigIT","code":"F03c_Comments","name":"F03c_Comments"},{"id":"RiinR61iJwI","code":"F03_Comments","name":"F03_Comments"},{"id":"ejvO0LhWM7x","code":"F01b","name":"In the reference year, what is the total amount of public funds (in local currency) spent in the country to purchase pharmaceutical products? (Per capita expenditure on pharmaceuticals)"},{"id":"yz5Ica93ol4","code":"F03a_Uploads","name":"F03a_Uploads"},{"id":"UwM1gQCIGAt","code":"F03c_Uploads","name":"F03c_Uploads"},{"id":"hCnG8uEB0S1","code":"F03b_Uploads","name":"F03b_Uploads"},{"id":"nTBH3aShXtg","code":"F03b_Comments","name":"F03b_Comments"},{"id":"sX542lYOZhh","code":"F03_Uploads","name":"F03_Uploads"},{"id":"hVajrMrtSSI","code":"F03a","name":"What is the last calendar year for which data for expenditure on pharmaceuticals are available?"},{"id":"JDLbz7nRxmM","code":"F03b","name":"In the reference year, what is the total amount of public funds (in local currency) spent in the country to purchase pharmaceutical products? (Total expenditure on pharmaceuticals)"},{"id":"EBeKvCLC66D","code":"F03a_Comments","name":"F03a_Comments"}]}
9	d29a55BIirH	{"id":"d29a55BIirH","name":"IM01","dataElements":[{"id":"IlNvwmCtASL","code":"IM01c_Comments","name":"IM01c_Comments"},{"id":"SC1AR7yVXxZ","code":"IM01d_Uploads","name":"IM01d_Uploads"},{"id":"iDe6I1GeUTU","code":"IM01a_Uploads","name":"IM01a_Uploads"},{"id":"FvdokDojy6u","code":"IM01e_Comments","name":"IM01e_Comments"},{"id":"RW7cXfkxcYT","code":"IM01d","name":"Does the policy or strategy set standards for: Reporting procedures?"},{"id":"xjMQOnrNK43","code":"IM01f_Comments","name":"IM01f_Comments"},{"id":"w14iPsV6Tzo","code":"IM01e","name":"Does a national set of indicators for the pharmaceutical system exist?"},{"id":"XRdmFOqpIPy","code":"IM01b_Uploads","name":"IM01b_Uploads"},{"id":"zMGT3krEcy0","code":"IM01c","name":"Does the policy or strategy set standards for: Data management?"},{"id":"Rf1QobERySE","code":"IM01c_Uploads","name":"IM01c_Uploads"},{"id":"itQ7neextCZ","code":"IM01h_Comments","name":"IM01h_Comments"},{"id":"WksKvi0SxIX","code":"IM01a","name":"Does a policy or strategy exist to set standards for the pharmaceutical information system?"},{"id":"hIrReWk68jS","code":"IM01_Comments","name":"IM01_Comments"},{"id":"rbdka1JAM7D","code":"IM01d_Comments","name":"IM01d_Comments"},{"id":"eZ35L3qSrbt","code":"IM01b","name":"Does the policy or strategy set standards for: Data collection?"},{"id":"BMRfblDERSW","code":"IM01_Uploads","name":"IM01_Uploads"},{"id":"KurKseX7GMl","code":"IM01a_Comments","name":"IM01a_Comments"},{"id":"KDe2ZZJZdnB","code":"IM01g_Uploads","name":"IM01g_Uploads"},{"id":"VYm5B4pVH6J","code":"IM01g","name":"Are data analyzed and reports disseminated at least once per year?"},{"id":"os3aMYpJuW0","code":"IM01b_Comments","name":"IM01b_Comments"},{"id":"EuzKdyzXN9y","code":"IM01e_Uploads","name":"IM01e_Uploads"},{"id":"RcHq8b8TEAh","code":"IM01f_Uploads","name":"IM01f_Uploads"},{"id":"BhfHdaNNBEh","code":"IM01f","name":"Are there specific targets set for each indicator?"},{"id":"gd3vTKZ6pqj","code":"IM01h_Uploads","name":"IM01h_Uploads"},{"id":"ncUXZ3GjyNS","code":"IM01g_Comments","name":"IM01g_Comments"}]}
43	kJrEab2RX9B	{"id":"kJrEab2RX9B","name":"RS07","dataElements":[{"id":"rmTX7D7AmjJ","code":"RS07c_Comments","name":"RS07c_Comments"},{"id":"ryh2NEPiccJ","code":"RS07a_Comments","name":"RS07a_Comments"},{"id":"KtbQ69fC5wB","code":"RS07a","name":"What is the last calendar year for which data for samples tested that failed quality control testing are available?"},{"id":"lKpEBFb4nMX","code":"RS07_Uploads","name":"RS07_Uploads"},{"id":"fP8XzPOcRSU","code":"RS07b","name":"What is the total number of samples tested in the previous calendar year (or last year for which data are available)?"},{"id":"SoWlSHsMnrf","code":"RS07c","name":"What is the total number of samples tested that failed quality control testing in the previous calendar year (or last year for which data are available)?"},{"id":"c76l0OVfTCD","code":"RS07c_Uploads","name":"RS07c_Uploads"},{"id":"Kbd8irBwIX8","code":"RS07a_Uploads","name":"RS07a_Uploads"},{"id":"Du0Jq86Qs5H","code":"RS07b_Comments","name":"RS07b_Comments"},{"id":"zu2OJxpqfSw","code":"RS07b_Uploads","name":"RS07b_Uploads"},{"id":"ScUuniXAiO1","code":"RS07_Comments","name":"RS07_Comments"}]}
13	wzH7aB1YWvs	{"id":"wzH7aB1YWvs","name":"IRDMT03","dataElements":[{"id":"JFRAngdImkP","code":"IRDMT03c_Uploads","name":"IRDMT03c_Uploads"},{"id":"MRYWJBeIRab","code":"IRDMT03b_Comments","name":"IRDMT03b_Comments"},{"id":"DmidUG5eqY4","code":"IRDMT03d_Uploads","name":"IRDMT03d_Uploads"},{"id":"QuLg0yO7D7R","code":"IRDMT03c","name":"Within the last 10 years, has parallel importation been undertaken for pharmaceutical products?"},{"id":"fW6gmCDe812","code":"IRDMT03d_Comments","name":"IRDMT03d_Comments"},{"id":"m55LjJeJHnj","code":"IRDMT03c_Comments","name":"IRDMT03c_Comments"},{"id":"DWq2LWUBsAK","code":"IRDMT03a","name":"Within the last 10 years, have any compulsory licenses been granted for pharmaceutical products?"},{"id":"z9lahjk890j","code":"IRDMT03b_Uploads","name":"IRDMT03b_Uploads"},{"id":"ztyJVzR6Yd1","code":"IRDMT03_Uploads","name":"IRDMT03_Uploads"},{"id":"gcU548Ezcp6","code":"IRDMT03b","name":"Within the last 10 years, have government use provisions been utilized for pharmaceutical products?"},{"id":"URqWQOJwnbd","code":"IRDMT03a_Comments","name":"IRDMT03a_Comments"},{"id":"wHiIU0z4cI9","code":"IRDMT03a_Uploads","name":"IRDMT03a_Uploads"},{"id":"GuTilTYmXVq","code":"IRDMT03d","name":"Within the last 10 years, has a manufacturer been granted permission in the country to use the Bolar exception or early working provision to expedite production of pharmaceutical products?"},{"id":"aN3IMHLeowd","code":"IRDMT03_Comments","name":"IRDMT03_Comments"}]}
23	REh9mx8ThnO	{"id":"REh9mx8ThnO","name":"PLG05","dataElements":[{"id":"GIGFI61OAGY","code":"PLG05c_Comments","name":"PLG05c_Comments"},{"id":"aaWqKEThPEi","code":"PLG05h_Comments","name":"PLG05h_Comments"},{"id":"x6xt0DrrKxa","code":"PLG05a_Uploads","name":"PLG05a_Uploads"},{"id":"sagXVsJC4JX","code":"PLG05c","name":"How many annual statistical reports on narcotics (Form C) have been submitted to the INCB in the previous 5 calendar years?"},{"id":"dDQzGvowksg","code":"PLG05c_Uploads","name":"PLG05c_Uploads"},{"id":"cUCO6K8hsbj","code":"PLG05g","name":"What is the year of the previous revision to the narcotic drug estimate?"},{"id":"TaUc0vQJwLg","code":"PLG05i_Comments","name":"PLG05i_Comments"},{"id":"gYmK8oXJ9O5","code":"PLG05b_Comments","name":"PLG05b_Comments"},{"id":"RQ1mkCl7VmX","code":"PLG05a_Comments","name":"PLG05a_Comments"},{"id":"VT8j9VGwhFE","code":"PLG05e_Comments","name":"PLG05e_Comments"},{"id":"qg2LV65ybo2","code":"PLG05d_Comments","name":"PLG05d_Comments"},{"id":"m2Gtb5extFD","code":"PLG05e_Uploads","name":"PLG05e_Uploads"},{"id":"LbQ9SmhNadB","code":"PLG05b","name":"For how many of the past five years have annual statistics reports on narcotics (Form C) been submitted to the INCB ?"},{"id":"qSrGH69gX11","code":"PLG05f","name":"How often is the estimate for narcotic drugs revised? (Ex. \\"Every __ years\\")"},{"id":"U0TbyVQ3VZ2","code":"PLG05j","name":"How many annual estimates for psychotropic substances have been submitted to the INCB in the previous five calendar years?"},{"id":"kzV9fuez2mP","code":"PLG05i_Uploads","name":"PLG05i_Uploads"},{"id":"pHsdyPHdVhm","code":"PLG05f_Comments","name":"PLG05f_Comments"},{"id":"UYsW1fSlhta","code":"PLG05f_Uploads","name":"PLG05f_Uploads"},{"id":"Zvxt8m1KIP2","code":"PLG05i","name":"How many annual statistical reports on psychotropic substances (Form P) have been submitted to the INCB in the previous 5 calendar years?"},{"id":"v2zcBP6vtdU","code":"PLG05g_Uploads","name":"PLG05g_Uploads"},{"id":"wxyBFlLoEJ0","code":"PLG05_Uploads","name":"PLG05_Uploads"},{"id":"TpU5HPKOxsD","code":"PLG05h_Uploads","name":"PLG05h_Uploads"},{"id":"RlEpBitsyyB","code":"PLG05b_Uploads","name":"PLG05b_Uploads"},{"id":"ORg5OiQZ0xL","code":"PLG05d_Uploads","name":"PLG05d_Uploads"},{"id":"asKgAjgQLsw","code":"PLG05a","name":"Is the country is a signatory to the 1961 Convention on Narcotic Drugs"},{"id":"q6yjZ4azAXs","code":"PLG05l","name":"What is the year of the previous revision to the psychotropic substances estimate?"},{"id":"peHZVVfscBN","code":"PLG05g_Comments","name":"PLG05g_Comments"},{"id":"pWlM6eBuA4E","code":"PLG05e\\n\\n\\n\\n\\n\\n\\n\\n","name":"How many annual estimates for narcotic drugs have been submitted to the INCB in the previous 5 calendar years?"},{"id":"sVBVHCkcawv","code":"PLG05j_Comments","name":"PLG05j_Comments"},{"id":"fKs2ujVo1ot","code":"PLG05_Comments","name":"PLG05_Comments"},{"id":"ieLThfjDAn2","code":"PLG05d","name":"Have annual estimates for narcotics been submitted to INCB each of the previous five years?"},{"id":"EU0J45Um0Od","code":"PLG05j_Uploads","name":"PLG05j_Uploads"},{"id":"fS7KiY4v9Ti","code":"PLG05k","name":"How often is the estimate for psychotropic substances revised? (Ex. \\"Every __ years\\")"}]}
39	YaAVW51ySwe	{"id":"YaAVW51ySwe","name":"RS03","dataElements":[{"id":"x8DBii8fpI2","code":"RS03b","name":"In the reference year, what is the total number of licensed pharmaceutical dispensing facilities or retail outlets registered in the country?"},{"id":"HF5YnQtkSVi","code":"RS03b_Comments","name":"RS03b_Comments"},{"id":"UWPf1myvMVl","code":"RS03a_Uploads","name":"RS03a_Uploads"},{"id":"YcdpjBD0tQN","code":"RS03b_Uploads","name":"RS03b_Uploads"},{"id":"UzOWmLaX27R","code":"RS03a","name":"What is the last calendar year for which data on dispensing facilities inspected are available?"},{"id":"zeXKATgL6Tw","code":"RS03c","name":"In the reference year, what is the total number of registered dispensing facilities or retail outlets that were inspected)?"},{"id":"b6MFWqSpTZ0","code":"RS03a_Comments","name":"RS03a_Comments"},{"id":"Z3Xr7FTs68w","code":"RS03c_Uploads","name":"RS03c_Uploads"},{"id":"aZD1ylwEXjc","code":"RS03c_Comments","name":"RS03c_Comments"},{"id":"jgBSYViZCmQ","code":"RS03_Comments","name":"RS03_Comments"},{"id":"IulICnclOFZ","code":"RS03_Uploads","name":"RS03_Uploads"}]}
\.


--
-- Data for Name: mail_configuration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mail_configuration (id, created_at, from_email, is_active, password, ports, server_name, server_type, updated_at, username) FROM stdin;
3	2023-05-14 16:51:14.773	pssnotifications23@gmail.com	f	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	587	smtp.sendgrid.net	SendGrid	2023-05-31 10:02:53.697	apikey
6	2023-05-31 10:02:54.574	insightspss@gmail.com	t	p9Wt3XU1PNrjVvhS	587	smtp-relay.sendinblue.com	local	2023-05-31 10:02:54.574	insightspss@gmail.com
\.


--
-- Data for Name: metadata_json; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.metadata_json (id, code, created_at, metadata, updated_at) FROM stdin;
\.


--
-- Data for Name: notification_entity_email_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notification_entity_email_list (notification_entity_id, email_list) FROM stdin;
35	dnjau@intellisoftkenya.com
36	dnjau@intellisoftkenya.com
37	dnjau@intellisoftkenya.com
38	dnjau@intellisoftkenya.com
39	dnjau@intellisoftkenya.com
40	dnjau@intellisoftkenya.com
41	dnjau@intellisoftkenya.com
42	dnjau@intellisoftkenya.com
43	dnjau@intellisoftkenya.com
44	dnjau@intellisoftkenya.com
45	dnjau@intellisoftkenya.com
46	dnjau@intellisoftkenya.com
46	davillamilner@gmail.com
47	davillamilner@gmail.com
47	dnjau@intellisoftkenya.com
47	string
48	davillamilner@gmail.com
48	dnjau@intellisoftkenya.com
48	string
48	nnyaga@intellisoftkenya.com
49	davillamilner@gmail.com
49	string
49	nnyaga@intellisoftkenya.com
49	dnjau@intellisoftkenya.com
50	davillamilner@gmail.com
50	string
50	nnyaga@intellisoftkenya.com
50	dnjau@intellisoftkenya.com
51	davillamilner@gmail.com
51	string
51	nnyaga@intellisoftkenya.com
51	dnjau@intellisoftkenya.com
52	davillamilner@gmail.com
52	string
52	nnyaga@intellisoftkenya.com
52	dnjau@intellisoftkenya.com
53	davillamilner@gmail.com
53	string
53	nnyaga@intellisoftkenya.com
53	dnjau@intellisoftkenya.com
54	davillamilner@gmail.com
54	string
54	nnyaga@intellisoftkenya.com
54	dnjau@intellisoftkenya.com
54	pnyatindo@intellisoftkenya.com
55	davillamilner@gmail.com
55	string
55	nnyaga@intellisoftkenya.com
55	dnjau@intellisoftkenya.com
55	pnyatindo@intellisoftkenya.com
56	davillamilner@gmail.com
56	string
56	nnyaga@intellisoftkenya.com
56	dnjau@intellisoftkenya.com
56	pnyatindo@intellisoftkenya.com
57	davillamilner@gmail.com
57	string
57	nnyaga@intellisoftkenya.com
57	dnjau@intellisoftkenya.com
57	pnyatindo@intellisoftkenya.com
58	davillamilner@gmail.com
58	string
58	nnyaga@intellisoftkenya.com
58	dnjau@intellisoftkenya.com
58	pnyatindo@intellisoftkenya.com
59	davillamilner@gmail.com
59	string
59	nnyaga@intellisoftkenya.com
59	dnjau@intellisoftkenya.com
59	pnyatindo@intellisoftkenya.com
60	davillamilner@gmail.com
60	string
60	nnyaga@intellisoftkenya.com
60	dnjau@intellisoftkenya.com
60	pnyatindo@intellisoftkenya.com
61	davillamilner@gmail.com
61	string
61	nnyaga@intellisoftkenya.com
61	dnjau@intellisoftkenya.com
61	pnyatindo@intellisoftkenya.com
62	davillamilner@gmail.com
62	string
62	nnyaga@intellisoftkenya.com
62	dnjau@intellisoftkenya.com
62	pnyatindo@intellisoftkenya.com
63	davillamilner@gmail.com
63	string
63	nnyaga@intellisoftkenya.com
63	dnjau@intellisoftkenya.com
63	pnyatindo@intellisoftkenya.com
64	davillamilner@gmail.com
64	string
64	nnyaga@intellisoftkenya.com
64	dnjau@intellisoftkenya.com
64	pnyatindo@intellisoftkenya.com
65	pnyatindo@intellisoftkenya.com
66	davillamilner@gmail.com
66	string
66	nnyaga@intellisoftkenya.com
66	dnjau@intellisoftkenya.com
66	pnyatindo@intellisoftkenya.com
66	
66	bmuyundo@intellisoftkenya.com
67	nnyaga@intellisoftkenya.com
68	davillamilner@gmail.com
68	string
68	nnyaga@intellisoftkenya.com
68	dnjau@intellisoftkenya.com
68	pnyatindo@intellisoftkenya.com
68	
68	bmuyundo@intellisoftkenya.com
69	nnyaga@intellisoftkenya.com
70	nnyaga@intellisoftkenya.com
71	davillamilner@gmail.com
71	string
71	nnyaga@intellisoftkenya.com
71	dnjau@intellisoftkenya.com
71	pnyatindo@intellisoftkenya.com
71	
71	bmuyundo@intellisoftkenya.com
72	bmuyundo@intellisoftkenya.com
73	bmuyundo@intellisoftkenya.com, nnyaga@intellisoftkenya.com
74	nnyaga@intellisoftkenya.com
75	nnyaga@intellisoftkenya.com
76	bmuyundo@intellisoftkenya.com
76	 nnyaga@intellisoftkenya.com
77	davillamilner@gmail.com
77	string
77	nnyaga@intellisoftkenya.com
77	dnjau@intellisoftkenya.com
77	pnyatindo@intellisoftkenya.com
77	
77	bmuyundo@intellisoftkenya.com
78	davillamilner@gmail.com
78	string
78	nnyaga@intellisoftkenya.com
78	dnjau@intellisoftkenya.com
78	pnyatindo@intellisoftkenya.com
78	
78	bmuyundo@intellisoftkenya.com
78	muyundobrian@gmail.com
79	davillamilner@gmail.com
79	string
79	nnyaga@intellisoftkenya.com
79	dnjau@intellisoftkenya.com
79	pnyatindo@intellisoftkenya.com
79	
79	bmuyundo@intellisoftkenya.com
79	muyundobrian@gmail.com
80	davillamilner@gmail.com
80	string
80	nnyaga@intellisoftkenya.com
80	dnjau@intellisoftkenya.com
80	pnyatindo@intellisoftkenya.com
80	
80	bmuyundo@intellisoftkenya.com
80	muyundobrian@gmail.com
81	davillamilner@gmail.com
81	string
81	nnyaga@intellisoftkenya.com
81	dnjau@intellisoftkenya.com
81	pnyatindo@intellisoftkenya.com
81	
81	bmuyundo@intellisoftkenya.com
81	muyundobrian@gmail.com
82	davillamilner@gmail.com
82	string
82	nnyaga@intellisoftkenya.com
82	dnjau@intellisoftkenya.com
82	pnyatindo@intellisoftkenya.com
82	
82	bmuyundo@intellisoftkenya.com
82	muyundobrian@gmail.com
83	davillamilner@gmail.com
83	string
83	nnyaga@intellisoftkenya.com
83	dnjau@intellisoftkenya.com
83	pnyatindo@intellisoftkenya.com
83	
83	bmuyundo@intellisoftkenya.com
83	muyundobrian@gmail.com
84	davillamilner@gmail.com
84	string
84	nnyaga@intellisoftkenya.com
84	dnjau@intellisoftkenya.com
84	pnyatindo@intellisoftkenya.com
84	
84	bmuyundo@intellisoftkenya.com
84	muyundobrian@gmail.com
84	davidnjau21@gmail.com
85	davillamilner@gmail.com
85	string
85	nnyaga@intellisoftkenya.com
85	dnjau@intellisoftkenya.com
85	pnyatindo@intellisoftkenya.com
85	
85	bmuyundo@intellisoftkenya.com
85	muyundobrian@gmail.com
86	davillamilner@gmail.com
86	string
86	nnyaga@intellisoftkenya.com
86	dnjau@intellisoftkenya.com
86	pnyatindo@intellisoftkenya.com
86	
86	bmuyundo@intellisoftkenya.com
86	muyundobrian@gmail.com
87	davillamilner@gmail.com
87	nnyaga@intellisoftkenya.com
87	dnjau@intellisoftkenya.com
87	pnyatindo@intellisoftkenya.com
87	bmuyundo@intellisoftkenya.com
87	muyundobrian@gmail.com
88	davillamilner@gmail.com
88	nnyaga@intellisoftkenya.com
88	dnjau@intellisoftkenya.com
88	pnyatindo@intellisoftkenya.com
88	bmuyundo@intellisoftkenya.com
88	muyundobrian@gmail.com
89	davillamilner@gmail.com
89	nnyaga@intellisoftkenya.com
89	dnjau@intellisoftkenya.com
89	pnyatindo@intellisoftkenya.com
89	bmuyundo@intellisoftkenya.com
89	muyundobrian@gmail.com
90	davillamilner@gmail.com
90	nnyaga@intellisoftkenya.com
90	dnjau@intellisoftkenya.com
90	pnyatindo@intellisoftkenya.com
90	bmuyundo@intellisoftkenya.com
90	muyundobrian@gmail.com
91	davillamilner@gmail.com
91	nnyaga@intellisoftkenya.com
91	dnjau@intellisoftkenya.com
91	pnyatindo@intellisoftkenya.com
91	bmuyundo@intellisoftkenya.com
91	muyundobrian@gmail.com
92	davillamilner@gmail.com
92	nnyaga@intellisoftkenya.com
92	dnjau@intellisoftkenya.com
92	pnyatindo@intellisoftkenya.com
92	bmuyundo@intellisoftkenya.com
92	muyundobrian@gmail.com
93	davillamilner@gmail.com
93	nnyaga@intellisoftkenya.com
93	dnjau@intellisoftkenya.com
93	pnyatindo@intellisoftkenya.com
93	bmuyundo@intellisoftkenya.com
93	muyundobrian@gmail.com
94	davillamilner@gmail.com
94	nnyaga@intellisoftkenya.com
94	dnjau@intellisoftkenya.com
94	pnyatindo@intellisoftkenya.com
94	bmuyundo@intellisoftkenya.com
94	muyundobrian@gmail.com
95	davillamilner@gmail.com
95	string
95	nnyaga@intellisoftkenya.com
95	dnjau@intellisoftkenya.com
95	pnyatindo@intellisoftkenya.com
95	
95	bmuyundo@intellisoftkenya.com
95	muyundobrian@gmail.com
96	davillamilner@gmail.com
96	nnyaga@intellisoftkenya.com
96	dnjau@intellisoftkenya.com
96	pnyatindo@intellisoftkenya.com
96	bmuyundo@intellisoftkenya.com
96	muyundobrian@gmail.com
97	davillamilner@gmail.com
97	nnyaga@intellisoftkenya.com
97	dnjau@intellisoftkenya.com
97	pnyatindo@intellisoftkenya.com
97	bmuyundo@intellisoftkenya.com
97	muyundobrian@gmail.com
98	davillamilner@gmail.com
98	nnyaga@intellisoftkenya.com
98	dnjau@intellisoftkenya.com
98	pnyatindo@intellisoftkenya.com
98	bmuyundo@intellisoftkenya.com
98	muyundobrian@gmail.com
99	davillamilner@gmail.com
99	nnyaga@intellisoftkenya.com
99	dnjau@intellisoftkenya.com
99	pnyatindo@intellisoftkenya.com
99	bmuyundo@intellisoftkenya.com
99	muyundobrian@gmail.com
100	davillamilner@gmail.com
100	string
100	nnyaga@intellisoftkenya.com
100	dnjau@intellisoftkenya.com
100	pnyatindo@intellisoftkenya.com
100	
100	bmuyundo@intellisoftkenya.com
100	muyundobrian@gmail.com
101	davillamilner@gmail.com
101	nnyaga@intellisoftkenya.com
101	dnjau@intellisoftkenya.com
101	pnyatindo@intellisoftkenya.com
101	bmuyundo@intellisoftkenya.com
101	muyundobrian@gmail.com
102	davillamilner@gmail.com
102	nnyaga@intellisoftkenya.com
102	dnjau@intellisoftkenya.com
102	pnyatindo@intellisoftkenya.com
102	bmuyundo@intellisoftkenya.com
102	muyundobrian@gmail.com
103	davillamilner@gmail.com
103	string
103	nnyaga@intellisoftkenya.com
103	dnjau@intellisoftkenya.com
103	pnyatindo@intellisoftkenya.com
103	
103	bmuyundo@intellisoftkenya.com
103	muyundobrian@gmail.com
104	nnyaga@intellisoftkenya.com
105	nnyaga@intellisoftkenya.com
106	davillamilner@gmail.com
106	string
106	nnyaga@intellisoftkenya.com
106	dnjau@intellisoftkenya.com
106	pnyatindo@intellisoftkenya.com
106	
106	bmuyundo@intellisoftkenya.com
106	muyundobrian@gmail.com
107	davillamilner@gmail.com
107	nnyaga@intellisoftkenya.com
107	dnjau@intellisoftkenya.com
107	pnyatindo@intellisoftkenya.com
107	bmuyundo@intellisoftkenya.com
107	muyundobrian@gmail.com
107	nellyflashier2@gmail.com
108	nnyaga@intellisoftkenya.com
109	davillamilner@gmail.com
109	nnyaga@intellisoftkenya.com
109	dnjau@intellisoftkenya.com
109	pnyatindo@intellisoftkenya.com
109	bmuyundo@intellisoftkenya.com
109	muyundobrian@gmail.com
109	nellyflashier2@gmail.com
109	nellyflashier@gmail.com
110	taibali5@gmail.com
111	pnyatindo@intellisoftkenya.com
111	taibali5@gmail.com
112	davillamilner@gmail.com
112	string
112	nnyaga@intellisoftkenya.com
112	dnjau@intellisoftkenya.com
112	pnyatindo@intellisoftkenya.com
112	
112	bmuyundo@intellisoftkenya.com
112	muyundobrian@gmail.com
112	nellyflashier2@gmail.com
112	nellyflashier@gmail.com
112	taibali5@gmail.com
113	davillamilner@gmail.com
113	nnyaga@intellisoftkenya.com
113	dnjau@intellisoftkenya.com
113	pnyatindo@intellisoftkenya.com
113	bmuyundo@intellisoftkenya.com
113	muyundobrian@gmail.com
113	nellyflashier2@gmail.com
113	nellyflashier@gmail.com
113	taibali5@gmail.com
114	davillamilner@gmail.com
114	nnyaga@intellisoftkenya.com
114	dnjau@intellisoftkenya.com
114	pnyatindo@intellisoftkenya.com
114	bmuyundo@intellisoftkenya.com
114	muyundobrian@gmail.com
114	nellyflashier2@gmail.com
114	nellyflashier@gmail.com
114	taibali5@gmail.com
115	davillamilner@gmail.com
115	string
115	nnyaga@intellisoftkenya.com
115	dnjau@intellisoftkenya.com
115	pnyatindo@intellisoftkenya.com
115	
115	bmuyundo@intellisoftkenya.com
115	muyundobrian@gmail.com
115	nellyflashier2@gmail.com
115	nellyflashier@gmail.com
115	taibali5@gmail.com
116	davillamilner@gmail.com
116	nnyaga@intellisoftkenya.com
116	dnjau@intellisoftkenya.com
116	pnyatindo@intellisoftkenya.com
116	bmuyundo@intellisoftkenya.com
116	muyundobrian@gmail.com
116	nellyflashier2@gmail.com
116	nellyflashier@gmail.com
116	taibali5@gmail.com
117	davillamilner@gmail.com
117	nnyaga@intellisoftkenya.com
117	dnjau@intellisoftkenya.com
117	pnyatindo@intellisoftkenya.com
117	bmuyundo@intellisoftkenya.com
117	muyundobrian@gmail.com
117	nellyflashier2@gmail.com
117	nellyflashier@gmail.com
117	taibali5@gmail.com
118	davillamilner@gmail.com
118	nnyaga@intellisoftkenya.com
118	dnjau@intellisoftkenya.com
118	pnyatindo@intellisoftkenya.com
118	bmuyundo@intellisoftkenya.com
118	muyundobrian@gmail.com
118	nellyflashier2@gmail.com
118	nellyflashier@gmail.com
118	taibali5@gmail.com
119	davillamilner@gmail.com
119	nnyaga@intellisoftkenya.com
119	dnjau@intellisoftkenya.com
119	pnyatindo@intellisoftkenya.com
119	bmuyundo@intellisoftkenya.com
119	muyundobrian@gmail.com
119	nellyflashier2@gmail.com
119	nellyflashier@gmail.com
119	taibali5@gmail.com
120	davillamilner@gmail.com
120	nnyaga@intellisoftkenya.com
120	dnjau@intellisoftkenya.com
120	pnyatindo@intellisoftkenya.com
120	bmuyundo@intellisoftkenya.com
120	muyundobrian@gmail.com
120	nellyflashier2@gmail.com
120	nellyflashier@gmail.com
120	taibali5@gmail.com
121	davillamilner@gmail.com
121	nnyaga@intellisoftkenya.com
121	dnjau@intellisoftkenya.com
121	pnyatindo@intellisoftkenya.com
121	bmuyundo@intellisoftkenya.com
121	muyundobrian@gmail.com
121	nellyflashier2@gmail.com
121	nellyflashier@gmail.com
121	taibali5@gmail.com
122	davillamilner@gmail.com
122	string
122	nnyaga@intellisoftkenya.com
122	dnjau@intellisoftkenya.com
122	pnyatindo@intellisoftkenya.com
122	
122	bmuyundo@intellisoftkenya.com
122	muyundobrian@gmail.com
122	nellyflashier2@gmail.com
122	nellyflashier@gmail.com
122	taibali5@gmail.com
123	bmuyundo@intellisoftkenya.com
123	pnyatindo@intellisoftkenya.com
124	davillamilner@gmail.com
124	nnyaga@intellisoftkenya.com
124	dnjau@intellisoftkenya.com
124	pnyatindo@intellisoftkenya.com
124	bmuyundo@intellisoftkenya.com
124	muyundobrian@gmail.com
124	nellyflashier2@gmail.com
124	nellyflashier@gmail.com
124	taibali5@gmail.com
125	davillamilner@gmail.com
125	nnyaga@intellisoftkenya.com
125	dnjau@intellisoftkenya.com
125	pnyatindo@intellisoftkenya.com
125	bmuyundo@intellisoftkenya.com
125	muyundobrian@gmail.com
125	nellyflashier2@gmail.com
125	nellyflashier@gmail.com
125	taibali5@gmail.com
126	taibali5@gmail.com
127	davillamilner@gmail.com
127	nnyaga@intellisoftkenya.com
127	dnjau@intellisoftkenya.com
127	pnyatindo@intellisoftkenya.com
127	bmuyundo@intellisoftkenya.com
127	muyundobrian@gmail.com
127	nellyflashier2@gmail.com
127	nellyflashier@gmail.com
127	taibali5@gmail.com
128	davillamilner@gmail.com
128	nnyaga@intellisoftkenya.com
128	dnjau@intellisoftkenya.com
128	pnyatindo@intellisoftkenya.com
128	bmuyundo@intellisoftkenya.com
128	muyundobrian@gmail.com
128	nellyflashier2@gmail.com
128	nellyflashier@gmail.com
128	taibali5@gmail.com
129	davillamilner@gmail.com
129	nnyaga@intellisoftkenya.com
129	dnjau@intellisoftkenya.com
129	pnyatindo@intellisoftkenya.com
129	bmuyundo@intellisoftkenya.com
129	muyundobrian@gmail.com
129	nellyflashier2@gmail.com
129	nellyflashier@gmail.com
129	taibali5@gmail.com
130	davillamilner@gmail.com
130	string
130	nnyaga@intellisoftkenya.com
130	dnjau@intellisoftkenya.com
130	pnyatindo@intellisoftkenya.com
130	
130	muyundobrian@gmail.com
130	nellyflashier2@gmail.com
130	nellyflashier@gmail.com
130	taibali5@gmail.com
130	bmuyundo@intellisoftkenya.com
131	bmuyundo@intellisoftkenya,com
131	nnyaga@intellisoftkenya.com
132	bmuyundo@intellisoftkenya,com
132	nnyaga@intellisoftkenya.com
133	davillamilner@gmail.com
133	nnyaga@intellisoftkenya.com
133	dnjau@intellisoftkenya.com
133	pnyatindo@intellisoftkenya.com
133	muyundobrian@gmail.com
133	nellyflashier2@gmail.com
133	nellyflashier@gmail.com
133	taibali5@gmail.com
133	bmuyundo@intellisoftkenya.com
134	davillamilner@gmail.com
134	string
134	nnyaga@intellisoftkenya.com
134	dnjau@intellisoftkenya.com
134	pnyatindo@intellisoftkenya.com
134	
134	muyundobrian@gmail.com
134	nellyflashier2@gmail.com
134	nellyflashier@gmail.com
134	taibali5@gmail.com
134	bmuyundo@intellisoftkenya.com
135	davillamilner@gmail.com
135	nnyaga@intellisoftkenya.com
135	dnjau@intellisoftkenya.com
135	pnyatindo@intellisoftkenya.com
135	muyundobrian@gmail.com
135	nellyflashier2@gmail.com
135	nellyflashier@gmail.com
135	taibali5@gmail.com
135	bmuyundo@intellisoftkenya.com
136	davillamilner@gmail.com
136	nnyaga@intellisoftkenya.com
136	dnjau@intellisoftkenya.com
136	pnyatindo@intellisoftkenya.com
136	muyundobrian@gmail.com
136	nellyflashier2@gmail.com
136	nellyflashier@gmail.com
136	bmuyundo@intellisoftkenya.com
136	taibali5@gmail.com
137	davillamilner@gmail.com
137	nnyaga@intellisoftkenya.com
137	dnjau@intellisoftkenya.com
137	pnyatindo@intellisoftkenya.com
137	muyundobrian@gmail.com
137	nellyflashier2@gmail.com
137	nellyflashier@gmail.com
137	bmuyundo@intellisoftkenya.com
137	taibali5@gmail.com
138	davillamilner@gmail.com
138	nnyaga@intellisoftkenya.com
138	dnjau@intellisoftkenya.com
138	pnyatindo@intellisoftkenya.com
138	muyundobrian@gmail.com
138	nellyflashier2@gmail.com
138	nellyflashier@gmail.com
138	bmuyundo@intellisoftkenya.com
138	taibali5@gmail.com
139	davillamilner@gmail.com
139	nnyaga@intellisoftkenya.com
139	dnjau@intellisoftkenya.com
139	pnyatindo@intellisoftkenya.com
139	muyundobrian@gmail.com
139	nellyflashier2@gmail.com
139	nellyflashier@gmail.com
139	bmuyundo@intellisoftkenya.com
139	taibali5@gmail.com
140	davillamilner@gmail.com
140	nnyaga@intellisoftkenya.com
140	dnjau@intellisoftkenya.com
140	pnyatindo@intellisoftkenya.com
140	muyundobrian@gmail.com
140	nellyflashier2@gmail.com
140	nellyflashier@gmail.com
140	bmuyundo@intellisoftkenya.com
140	taibali5@gmail.com
141	davillamilner@gmail.com
141	nnyaga@intellisoftkenya.com
141	dnjau@intellisoftkenya.com
141	pnyatindo@intellisoftkenya.com
141	muyundobrian@gmail.com
141	nellyflashier2@gmail.com
141	nellyflashier@gmail.com
141	bmuyundo@intellisoftkenya.com
141	taibali5@gmail.com
142	davillamilner@gmail.com
142	nnyaga@intellisoftkenya.com
142	dnjau@intellisoftkenya.com
142	pnyatindo@intellisoftkenya.com
142	muyundobrian@gmail.com
142	nellyflashier2@gmail.com
142	nellyflashier@gmail.com
142	bmuyundo@intellisoftkenya.com
142	taibali5@gmail.com
143	davillamilner@gmail.com
143	string
143	nnyaga@intellisoftkenya.com
143	dnjau@intellisoftkenya.com
143	pnyatindo@intellisoftkenya.com
143	
143	muyundobrian@gmail.com
143	nellyflashier2@gmail.com
143	nellyflashier@gmail.com
143	bmuyundo@intellisoftkenya.com
143	taibali5@gmail.com
144	davillamilner@gmail.com
144	nnyaga@intellisoftkenya.com
144	dnjau@intellisoftkenya.com
144	pnyatindo@intellisoftkenya.com
144	muyundobrian@gmail.com
144	nellyflashier2@gmail.com
144	nellyflashier@gmail.com
144	bmuyundo@intellisoftkenya.com
144	taibali5@gmail.com
145	pnyatindo@intellisoftkenya.com
146	davillamilner@gmail.com
146	string
146	nnyaga@intellisoftkenya.com
146	dnjau@intellisoftkenya.com
146	pnyatindo@intellisoftkenya.com
146	
146	muyundobrian@gmail.com
146	nellyflashier2@gmail.com
146	nellyflashier@gmail.com
146	bmuyundo@intellisoftkenya.com
146	taibali5@gmail.com
147	davillamilner@gmail.com
147	nnyaga@intellisoftkenya.com
147	dnjau@intellisoftkenya.com
147	pnyatindo@intellisoftkenya.com
147	muyundobrian@gmail.com
147	nellyflashier2@gmail.com
147	nellyflashier@gmail.com
147	bmuyundo@intellisoftkenya.com
147	taibali5@gmail.com
148	nelsonkimaiga@gmail.com
149	nelsonkimaiga@gmail.com
150	nelsonkimaiga@gmail.com
151	nelsonkimaiga@gmail.com
152	nelsonkimaiga@gmail.com
153	nelsonkimaiga@gmail.com
154	nelsonkimaiga@gmail.com
155	nelsonkimaiga@gmail.com
156	nelsonkimaiga@gmail.com
157	nelsonkimaiga@gmail.com
158	nelsonkimaiga@gmail.com
159	nelsonkimaiga@gmail.com
160	nelsonkimaiga@gmail.com
161	nelsonkimaiga@gmail.com
162	davillamilner@gmail.com
162	string
162	nnyaga@intellisoftkenya.com
162	dnjau@intellisoftkenya.com
162	pnyatindo@intellisoftkenya.com
162	
162	muyundobrian@gmail.com
162	nellyflashier2@gmail.com
162	nellyflashier@gmail.com
162	bmuyundo@intellisoftkenya.com
162	taibali5@gmail.com
163	davillamilner@gmail.com
163	nnyaga@intellisoftkenya.com
163	dnjau@intellisoftkenya.com
163	pnyatindo@intellisoftkenya.com
163	muyundobrian@gmail.com
163	nellyflashier2@gmail.com
163	nellyflashier@gmail.com
163	bmuyundo@intellisoftkenya.com
163	taibali5@gmail.com
164	nelsonkimaiga@gmail.com
165	bmuyundo@intellisoftkenya.com
166	bmuyundo@intellisoftkenya.com
166	tali@intellisoftkenya.com
167	davillamilner@gmail.com
167	string
167	nnyaga@intellisoftkenya.com
167	dnjau@intellisoftkenya.com
167	pnyatindo@intellisoftkenya.com
167	
167	muyundobrian@gmail.com
167	nellyflashier2@gmail.com
167	nellyflashier@gmail.com
167	bmuyundo@intellisoftkenya.com
167	taibali5@gmail.com
168	davillamilner@gmail.com
168	nnyaga@intellisoftkenya.com
168	dnjau@intellisoftkenya.com
168	pnyatindo@intellisoftkenya.com
168	muyundobrian@gmail.com
168	nellyflashier2@gmail.com
168	nellyflashier@gmail.com
168	bmuyundo@intellisoftkenya.com
168	taibali5@gmail.com
169	davillamilner@gmail.com
169	nnyaga@intellisoftkenya.com
169	dnjau@intellisoftkenya.com
169	pnyatindo@intellisoftkenya.com
169	muyundobrian@gmail.com
169	nellyflashier2@gmail.com
169	nellyflashier@gmail.com
169	bmuyundo@intellisoftkenya.com
169	taibali5@gmail.com
170	nelsonkimaiga@gmail.com
171	nelsonkimaiga@gmail.com
172	nkimaiga@intellisoftkenya.com
172	nelsonkimaiga@gmail.com
173	nelsonkimaiga@gmail.com
174	nelsonkimaiga@gmail.com
175	davillamilner@gmail.com
175	nnyaga@intellisoftkenya.com
175	dnjau@intellisoftkenya.com
175	pnyatindo@intellisoftkenya.com
175	muyundobrian@gmail.com
175	nellyflashier2@gmail.com
175	nellyflashier@gmail.com
175	bmuyundo@intellisoftkenya.com
175	taibali5@gmail.com
176	davillamilner@gmail.com
176	nnyaga@intellisoftkenya.com
176	dnjau@intellisoftkenya.com
176	pnyatindo@intellisoftkenya.com
176	muyundobrian@gmail.com
176	nellyflashier2@gmail.com
176	nellyflashier@gmail.com
176	bmuyundo@intellisoftkenya.com
176	taibali5@gmail.com
177	davillamilner@gmail.com
177	string
177	nnyaga@intellisoftkenya.com
177	dnjau@intellisoftkenya.com
177	pnyatindo@intellisoftkenya.com
177	muyundobrian@gmail.com
177	nellyflashier2@gmail.com
177	nellyflashier@gmail.com
177	bmuyundo@intellisoftkenya.com
177	taibali5@gmail.com
177	
177	admin@pss.com
178	bmuyundo@intellisoftkenya.com
178	nwanjiku@intellisoftkenya.com
178	nnyaga@intellisoftkenya.com
179	davillamilner@gmail.com
179	nnyaga@intellisoftkenya.com
179	dnjau@intellisoftkenya.com
179	pnyatindo@intellisoftkenya.com
179	muyundobrian@gmail.com
179	nellyflashier2@gmail.com
179	nellyflashier@gmail.com
179	bmuyundo@intellisoftkenya.com
179	taibali5@gmail.com
179	admin@pss.com
179	nwanjiru@intellisoftkenya.com
179	mowiso@intellisoftkenya.com
180	davillamilner@gmail.com
180	nnyaga@intellisoftkenya.com
180	dnjau@intellisoftkenya.com
180	pnyatindo@intellisoftkenya.com
180	muyundobrian@gmail.com
180	nellyflashier2@gmail.com
180	nellyflashier@gmail.com
180	bmuyundo@intellisoftkenya.com
180	taibali5@gmail.com
180	admin@pss.com
180	nwanjiru@intellisoftkenya.com
180	mowiso@intellisoftkenya.com
181	davillamilner@gmail.com
181	nnyaga@intellisoftkenya.com
181	dnjau@intellisoftkenya.com
181	pnyatindo@intellisoftkenya.com
181	muyundobrian@gmail.com
181	nellyflashier2@gmail.com
181	nellyflashier@gmail.com
181	bmuyundo@intellisoftkenya.com
181	taibali5@gmail.com
181	admin@pss.com
181	nwanjiru@intellisoftkenya.com
181	mowiso@intellisoftkenya.com
182	davillamilner@gmail.com
182	nnyaga@intellisoftkenya.com
182	dnjau@intellisoftkenya.com
182	pnyatindo@intellisoftkenya.com
182	muyundobrian@gmail.com
182	nellyflashier2@gmail.com
182	nellyflashier@gmail.com
182	bmuyundo@intellisoftkenya.com
182	taibali5@gmail.com
182	admin@pss.com
182	nwanjiru@intellisoftkenya.com
182	mowiso@intellisoftkenya.com
183	msoucy333@gmail.com,
184	anampiu@gmail.com
185	davillamilner@gmail.com
185	nnyaga@intellisoftkenya.com
185	dnjau@intellisoftkenya.com
185	pnyatindo@intellisoftkenya.com
185	muyundobrian@gmail.com
185	nellyflashier2@gmail.com
185	nellyflashier@gmail.com
185	taibali5@gmail.com
185	admin@pss.com
185	nwanjiru@intellisoftkenya.com
185	mowiso@intellisoftkenya.com
185	lherzog@mtapsprogram.org
185	thafner@mtapsprogram.org
185	anampiu@gmail.com
185	bmuyundo@intellisoftkenya.com
186	davillamilner@gmail.com
186	nnyaga@intellisoftkenya.com
186	dnjau@intellisoftkenya.com
186	pnyatindo@intellisoftkenya.com
186	muyundobrian@gmail.com
186	nellyflashier2@gmail.com
186	nellyflashier@gmail.com
186	taibali5@gmail.com
186	admin@pss.com
186	nwanjiru@intellisoftkenya.com
186	mowiso@intellisoftkenya.com
186	lherzog@mtapsprogram.org
186	thafner@mtapsprogram.org
186	anampiu@gmail.com
186	bmuyundo@intellisoftkenya.com
187	muyundobrian@gmail.com
188	davillamilner@gmail.com
188	string
188	nnyaga@intellisoftkenya.com
188	dnjau@intellisoftkenya.com
188	pnyatindo@intellisoftkenya.com
188	muyundobrian@gmail.com
188	nellyflashier2@gmail.com
188	nellyflashier@gmail.com
188	taibali5@gmail.com
188	
188	admin@pss.com
188	nwanjiru@intellisoftkenya.com
188	mowiso@intellisoftkenya.com
188	lherzog@mtapsprogram.org
188	thafner@mtapsprogram.org
188	anampiu@gmail.com
188	bmuyundo@intellisoftkenya.com
189	davillamilner@gmail.com
189	nnyaga@intellisoftkenya.com
189	dnjau@intellisoftkenya.com
189	pnyatindo@intellisoftkenya.com
189	muyundobrian@gmail.com
189	nellyflashier2@gmail.com
189	nellyflashier@gmail.com
189	taibali5@gmail.com
189	admin@pss.com
189	nwanjiru@intellisoftkenya.com
189	mowiso@intellisoftkenya.com
189	lherzog@mtapsprogram.org
189	thafner@mtapsprogram.org
189	anampiu@gmail.com
189	bmuyundo@intellisoftkenya.com
190	muyundobrian@gmail.com
191	davillamilner@gmail.com
191	nnyaga@intellisoftkenya.com
191	dnjau@intellisoftkenya.com
191	pnyatindo@intellisoftkenya.com
191	muyundobrian@gmail.com
191	nellyflashier2@gmail.com
191	nellyflashier@gmail.com
191	taibali5@gmail.com
191	admin@pss.com
191	nwanjiru@intellisoftkenya.com
191	mowiso@intellisoftkenya.com
191	lherzog@mtapsprogram.org
191	thafner@mtapsprogram.org
191	anampiu@gmail.com
191	bmuyundo@intellisoftkenya.com
192	davillamilner@gmail.com
192	nnyaga@intellisoftkenya.com
192	dnjau@intellisoftkenya.com
192	pnyatindo@intellisoftkenya.com
192	muyundobrian@gmail.com
192	nellyflashier2@gmail.com
192	nellyflashier@gmail.com
192	taibali5@gmail.com
192	admin@pss.com
192	nwanjiru@intellisoftkenya.com
192	mowiso@intellisoftkenya.com
192	lherzog@mtapsprogram.org
192	thafner@mtapsprogram.org
192	anampiu@gmail.com
192	bmuyundo@intellisoftkenya.com
193	davillamilner@gmail.com
193	string
193	nnyaga@intellisoftkenya.com
193	dnjau@intellisoftkenya.com
193	pnyatindo@intellisoftkenya.com
193	muyundobrian@gmail.com
193	nellyflashier2@gmail.com
193	nellyflashier@gmail.com
193	taibali5@gmail.com
193	
193	admin@pss.com
193	nwanjiru@intellisoftkenya.com
193	mowiso@intellisoftkenya.com
193	lherzog@mtapsprogram.org
193	thafner@mtapsprogram.org
193	anampiu@gmail.com
193	bmuyundo@intellisoftkenya.com
194	nwanjiru@intellisoftkenya.com
194	nataliemakena@gmail.com
195	nwanjiru@intellisoftkenya.com
196	davillamilner@gmail.com
196	string
196	nnyaga@intellisoftkenya.com
196	dnjau@intellisoftkenya.com
196	pnyatindo@intellisoftkenya.com
196	muyundobrian@gmail.com
196	nellyflashier2@gmail.com
196	nellyflashier@gmail.com
196	taibali5@gmail.com
196	
196	admin@pss.com
196	nwanjiru@intellisoftkenya.com
196	mowiso@intellisoftkenya.com
196	lherzog@mtapsprogram.org
196	thafner@mtapsprogram.org
196	anampiu@gmail.com
196	bmuyundo@intellisoftkenya.com
197	muyundobrian@gmail.com
197	bmuyundo@intellisoftkenya.com
198	davillamilner@gmail.com
198	nnyaga@intellisoftkenya.com
198	pnyatindo@intellisoftkenya.com
198	muyundobrian@gmail.com
198	nellyflashier2@gmail.com
198	nellyflashier@gmail.com
198	taibali5@gmail.com
198	admin@pss.com
198	nwanjiru@intellisoftkenya.com
198	mowiso@intellisoftkenya.com
198	lherzog@mtapsprogram.org
198	thafner@mtapsprogram.org
198	anampiu@gmail.com
198	bmuyundo@intellisoftkenya.com
198	nelsonkimaiga@example.com
198	nelsonkimaiga@umail.com
198	dnjau@intellisoftkenya.com
198	nelsonkimaiga@intel.com
199	davillamilner@gmail.com
199	nnyaga@intellisoftkenya.com
199	pnyatindo@intellisoftkenya.com
199	muyundobrian@gmail.com
199	nellyflashier2@gmail.com
199	nellyflashier@gmail.com
199	taibali5@gmail.com
199	admin@pss.com
199	nwanjiru@intellisoftkenya.com
199	mowiso@intellisoftkenya.com
199	lherzog@mtapsprogram.org
199	thafner@mtapsprogram.org
199	anampiu@gmail.com
199	bmuyundo@intellisoftkenya.com
199	nelsonkimaiga@example.com
199	nelsonkimaiga@umail.com
199	dnjau@intellisoftkenya.com
199	nelsonkimaiga@intel.com
200	davillamilner@gmail.com
200	nnyaga@intellisoftkenya.com
200	pnyatindo@intellisoftkenya.com
200	muyundobrian@gmail.com
200	nellyflashier2@gmail.com
200	nellyflashier@gmail.com
200	taibali5@gmail.com
200	admin@pss.com
200	nwanjiru@intellisoftkenya.com
200	mowiso@intellisoftkenya.com
200	lherzog@mtapsprogram.org
200	thafner@mtapsprogram.org
200	anampiu@gmail.com
200	bmuyundo@intellisoftkenya.com
200	nelsonkimaiga@example.com
200	nelsonkimaiga@umail.com
200	dnjau@intellisoftkenya.com
200	nelsonkimaiga@intel.com
201	davillamilner@gmail.com
201	nnyaga@intellisoftkenya.com
201	pnyatindo@intellisoftkenya.com
201	muyundobrian@gmail.com
201	nellyflashier2@gmail.com
201	nellyflashier@gmail.com
201	taibali5@gmail.com
201	admin@pss.com
201	nwanjiru@intellisoftkenya.com
201	mowiso@intellisoftkenya.com
201	lherzog@mtapsprogram.org
201	thafner@mtapsprogram.org
201	anampiu@gmail.com
201	bmuyundo@intellisoftkenya.com
201	nelsonkimaiga@example.com
201	nelsonkimaiga@umail.com
201	dnjau@intellisoftkenya.com
201	nelsonkimaiga@intel.com
202	davillamilner@gmail.com
202	nnyaga@intellisoftkenya.com
202	pnyatindo@intellisoftkenya.com
202	muyundobrian@gmail.com
202	nellyflashier2@gmail.com
202	nellyflashier@gmail.com
202	taibali5@gmail.com
202	admin@pss.com
202	nwanjiru@intellisoftkenya.com
202	mowiso@intellisoftkenya.com
202	lherzog@mtapsprogram.org
202	thafner@mtapsprogram.org
202	anampiu@gmail.com
202	bmuyundo@intellisoftkenya.com
202	nelsonkimaiga@example.com
202	nelsonkimaiga@umail.com
202	dnjau@intellisoftkenya.com
202	nelsonkimaiga@intel.com
203	davillamilner@gmail.com
203	nnyaga@intellisoftkenya.com
203	pnyatindo@intellisoftkenya.com
203	muyundobrian@gmail.com
203	nellyflashier2@gmail.com
203	nellyflashier@gmail.com
203	taibali5@gmail.com
203	admin@pss.com
203	nwanjiru@intellisoftkenya.com
203	mowiso@intellisoftkenya.com
203	lherzog@mtapsprogram.org
203	thafner@mtapsprogram.org
203	anampiu@gmail.com
203	bmuyundo@intellisoftkenya.com
203	nelsonkimaiga@example.com
203	nelsonkimaiga@umail.com
203	dnjau@intellisoftkenya.com
203	nelsonkimaiga@intel.com
204	davillamilner@gmail.com
204	nnyaga@intellisoftkenya.com
204	pnyatindo@intellisoftkenya.com
204	muyundobrian@gmail.com
204	nellyflashier2@gmail.com
204	nellyflashier@gmail.com
204	taibali5@gmail.com
204	admin@pss.com
204	nwanjiru@intellisoftkenya.com
204	mowiso@intellisoftkenya.com
204	lherzog@mtapsprogram.org
204	thafner@mtapsprogram.org
204	anampiu@gmail.com
204	bmuyundo@intellisoftkenya.com
204	nelsonkimaiga@example.com
204	nelsonkimaiga@umail.com
204	dnjau@intellisoftkenya.com
204	nelsonkimaiga@intel.com
205	davillamilner@gmail.com
205	nnyaga@intellisoftkenya.com
205	pnyatindo@intellisoftkenya.com
205	muyundobrian@gmail.com
205	nellyflashier2@gmail.com
205	nellyflashier@gmail.com
205	taibali5@gmail.com
205	admin@pss.com
205	nwanjiru@intellisoftkenya.com
205	mowiso@intellisoftkenya.com
205	lherzog@mtapsprogram.org
205	thafner@mtapsprogram.org
205	anampiu@gmail.com
205	bmuyundo@intellisoftkenya.com
205	nelsonkimaiga@example.com
205	nelsonkimaiga@umail.com
205	dnjau@intellisoftkenya.com
205	nelsonkimaiga@intel.com
206	davillamilner@gmail.com
206	nnyaga@intellisoftkenya.com
206	pnyatindo@intellisoftkenya.com
206	muyundobrian@gmail.com
206	nellyflashier2@gmail.com
206	nellyflashier@gmail.com
206	taibali5@gmail.com
206	admin@pss.com
206	nwanjiru@intellisoftkenya.com
206	mowiso@intellisoftkenya.com
206	lherzog@mtapsprogram.org
206	thafner@mtapsprogram.org
206	anampiu@gmail.com
206	bmuyundo@intellisoftkenya.com
206	nelsonkimaiga@example.com
206	nelsonkimaiga@umail.com
206	dnjau@intellisoftkenya.com
206	nelsonkimaiga@intel.com
207	davillamilner@gmail.com
207	nnyaga@intellisoftkenya.com
207	pnyatindo@intellisoftkenya.com
207	muyundobrian@gmail.com
207	nellyflashier2@gmail.com
207	nellyflashier@gmail.com
207	taibali5@gmail.com
207	admin@pss.com
207	nwanjiru@intellisoftkenya.com
207	mowiso@intellisoftkenya.com
207	lherzog@mtapsprogram.org
207	thafner@mtapsprogram.org
207	anampiu@gmail.com
207	bmuyundo@intellisoftkenya.com
207	nelsonkimaiga@example.com
207	nelsonkimaiga@umail.com
207	dnjau@intellisoftkenya.com
207	nelsonkimaiga@intel.com
208	davillamilner@gmail.com
208	nnyaga@intellisoftkenya.com
208	pnyatindo@intellisoftkenya.com
208	muyundobrian@gmail.com
208	nellyflashier2@gmail.com
208	nellyflashier@gmail.com
208	taibali5@gmail.com
208	admin@pss.com
208	nwanjiru@intellisoftkenya.com
208	mowiso@intellisoftkenya.com
208	lherzog@mtapsprogram.org
208	thafner@mtapsprogram.org
208	anampiu@gmail.com
208	bmuyundo@intellisoftkenya.com
208	nelsonkimaiga@example.com
208	nelsonkimaiga@umail.com
208	dnjau@intellisoftkenya.com
208	nelsonkimaiga@intel.com
209	davillamilner@gmail.com
209	nnyaga@intellisoftkenya.com
209	pnyatindo@intellisoftkenya.com
209	muyundobrian@gmail.com
209	nellyflashier2@gmail.com
209	nellyflashier@gmail.com
209	taibali5@gmail.com
209	admin@pss.com
209	nwanjiru@intellisoftkenya.com
209	mowiso@intellisoftkenya.com
209	lherzog@mtapsprogram.org
209	thafner@mtapsprogram.org
209	anampiu@gmail.com
209	bmuyundo@intellisoftkenya.com
209	nelsonkimaiga@example.com
209	nelsonkimaiga@umail.com
209	dnjau@intellisoftkenya.com
209	nelsonkimaiga@intel.com
210	davillamilner@gmail.com
210	nnyaga@intellisoftkenya.com
210	pnyatindo@intellisoftkenya.com
210	muyundobrian@gmail.com
210	nellyflashier2@gmail.com
210	nellyflashier@gmail.com
210	taibali5@gmail.com
210	admin@pss.com
210	nwanjiru@intellisoftkenya.com
210	mowiso@intellisoftkenya.com
210	lherzog@mtapsprogram.org
210	thafner@mtapsprogram.org
210	anampiu@gmail.com
210	bmuyundo@intellisoftkenya.com
210	nelsonkimaiga@example.com
210	nelsonkimaiga@umail.com
210	dnjau@intellisoftkenya.com
210	nelsonkimaiga@intel.com
211	davillamilner@gmail.com
211	nnyaga@intellisoftkenya.com
211	pnyatindo@intellisoftkenya.com
211	muyundobrian@gmail.com
211	nellyflashier2@gmail.com
211	nellyflashier@gmail.com
211	taibali5@gmail.com
211	admin@pss.com
211	nwanjiru@intellisoftkenya.com
211	mowiso@intellisoftkenya.com
211	lherzog@mtapsprogram.org
211	thafner@mtapsprogram.org
211	anampiu@gmail.com
211	bmuyundo@intellisoftkenya.com
211	nelsonkimaiga@example.com
211	nelsonkimaiga@umail.com
211	dnjau@intellisoftkenya.com
211	nelsonkimaiga@intel.com
212	davillamilner@gmail.com
212	nnyaga@intellisoftkenya.com
212	pnyatindo@intellisoftkenya.com
212	muyundobrian@gmail.com
212	nellyflashier2@gmail.com
212	nellyflashier@gmail.com
212	taibali5@gmail.com
212	admin@pss.com
212	nwanjiru@intellisoftkenya.com
212	mowiso@intellisoftkenya.com
212	lherzog@mtapsprogram.org
212	thafner@mtapsprogram.org
212	anampiu@gmail.com
212	bmuyundo@intellisoftkenya.com
212	nelsonkimaiga@example.com
212	nelsonkimaiga@umail.com
212	dnjau@intellisoftkenya.com
212	nelsonkimaiga@intel.com
213	davillamilner@gmail.com
213	nnyaga@intellisoftkenya.com
213	pnyatindo@intellisoftkenya.com
213	muyundobrian@gmail.com
213	nellyflashier2@gmail.com
213	nellyflashier@gmail.com
213	taibali5@gmail.com
213	admin@pss.com
213	nwanjiru@intellisoftkenya.com
213	mowiso@intellisoftkenya.com
213	lherzog@mtapsprogram.org
213	thafner@mtapsprogram.org
213	anampiu@gmail.com
213	bmuyundo@intellisoftkenya.com
213	nelsonkimaiga@example.com
213	nelsonkimaiga@umail.com
213	dnjau@intellisoftkenya.com
213	nelsonkimaiga@intel.com
214	davillamilner@gmail.com
214	nnyaga@intellisoftkenya.com
214	pnyatindo@intellisoftkenya.com
214	muyundobrian@gmail.com
214	nellyflashier2@gmail.com
214	nellyflashier@gmail.com
214	taibali5@gmail.com
214	admin@pss.com
214	nwanjiru@intellisoftkenya.com
214	mowiso@intellisoftkenya.com
214	lherzog@mtapsprogram.org
214	thafner@mtapsprogram.org
214	anampiu@gmail.com
214	bmuyundo@intellisoftkenya.com
214	nelsonkimaiga@example.com
214	nelsonkimaiga@umail.com
214	dnjau@intellisoftkenya.com
214	nelsonkimaiga@intel.com
215	davillamilner@gmail.com
215	nnyaga@intellisoftkenya.com
215	pnyatindo@intellisoftkenya.com
215	muyundobrian@gmail.com
215	nellyflashier2@gmail.com
215	nellyflashier@gmail.com
215	taibali5@gmail.com
215	admin@pss.com
215	nwanjiru@intellisoftkenya.com
215	mowiso@intellisoftkenya.com
215	lherzog@mtapsprogram.org
215	thafner@mtapsprogram.org
215	anampiu@gmail.com
215	bmuyundo@intellisoftkenya.com
215	nelsonkimaiga@example.com
215	nelsonkimaiga@umail.com
215	dnjau@intellisoftkenya.com
215	nelsonkimaiga@intel.com
216	muyundobrian@gmail.com
216	tamanna.nigar2015@gmail.com
217	kamu2013.em@gmail.com
217	godfreykingalu@gmail.com
217	berithagkyabula@gmail.com
218	muyundobrian@gmail.com
219	omondi.ken@gmail.com
220	omondi.ken@gmail.com
221	davillamilner@gmail.com
221	nnyaga@intellisoftkenya.com
221	pnyatindo@intellisoftkenya.com
221	muyundobrian@gmail.com
221	nellyflashier2@gmail.com
221	nellyflashier@gmail.com
221	taibali5@gmail.com
221	admin@pss.com
221	nwanjiru@intellisoftkenya.com
221	mowiso@intellisoftkenya.com
221	lherzog@mtapsprogram.org
221	thafner@mtapsprogram.org
221	anampiu@gmail.com
221	bmuyundo@intellisoftkenya.com
221	nelsonkimaiga@example.com
221	nelsonkimaiga@umail.com
221	dnjau@intellisoftkenya.com
221	nelsonkimaiga@intel.com
222	davillamilner@gmail.com
222	nnyaga@intellisoftkenya.com
222	pnyatindo@intellisoftkenya.com
222	muyundobrian@gmail.com
222	nellyflashier2@gmail.com
222	nellyflashier@gmail.com
222	taibali5@gmail.com
222	admin@pss.com
222	nwanjiru@intellisoftkenya.com
222	mowiso@intellisoftkenya.com
222	lherzog@mtapsprogram.org
222	thafner@mtapsprogram.org
222	anampiu@gmail.com
222	bmuyundo@intellisoftkenya.com
222	nelsonkimaiga@example.com
222	nelsonkimaiga@umail.com
222	dnjau@intellisoftkenya.com
222	nelsonkimaiga@intel.com
223	davillamilner@gmail.com
223	nnyaga@intellisoftkenya.com
223	pnyatindo@intellisoftkenya.com
223	muyundobrian@gmail.com
223	nellyflashier2@gmail.com
223	nellyflashier@gmail.com
223	taibali5@gmail.com
223	admin@pss.com
223	nwanjiru@intellisoftkenya.com
223	mowiso@intellisoftkenya.com
223	lherzog@mtapsprogram.org
223	thafner@mtapsprogram.org
223	anampiu@gmail.com
223	bmuyundo@intellisoftkenya.com
223	nelsonkimaiga@example.com
223	nelsonkimaiga@umail.com
223	dnjau@intellisoftkenya.com
223	nelsonkimaiga@intel.com
224	davillamilner@gmail.com
224	nnyaga@intellisoftkenya.com
224	pnyatindo@intellisoftkenya.com
224	muyundobrian@gmail.com
224	nellyflashier2@gmail.com
224	nellyflashier@gmail.com
224	taibali5@gmail.com
224	admin@pss.com
224	nwanjiru@intellisoftkenya.com
224	mowiso@intellisoftkenya.com
224	lherzog@mtapsprogram.org
224	thafner@mtapsprogram.org
224	anampiu@gmail.com
224	bmuyundo@intellisoftkenya.com
224	nelsonkimaiga@example.com
224	nelsonkimaiga@umail.com
224	dnjau@intellisoftkenya.com
224	nelsonkimaiga@intel.com
225	davillamilner@gmail.com
225	nnyaga@intellisoftkenya.com
225	pnyatindo@intellisoftkenya.com
225	muyundobrian@gmail.com
225	nellyflashier2@gmail.com
225	nellyflashier@gmail.com
225	taibali5@gmail.com
225	admin@pss.com
225	nwanjiru@intellisoftkenya.com
225	mowiso@intellisoftkenya.com
225	lherzog@mtapsprogram.org
225	thafner@mtapsprogram.org
225	anampiu@gmail.com
225	bmuyundo@intellisoftkenya.com
225	nelsonkimaiga@example.com
225	nelsonkimaiga@umail.com
225	dnjau@intellisoftkenya.com
225	nelsonkimaiga@intel.com
226	davillamilner@gmail.com
226	nnyaga@intellisoftkenya.com
226	pnyatindo@intellisoftkenya.com
226	muyundobrian@gmail.com
226	nellyflashier2@gmail.com
226	nellyflashier@gmail.com
226	taibali5@gmail.com
226	admin@pss.com
226	nwanjiru@intellisoftkenya.com
226	mowiso@intellisoftkenya.com
226	lherzog@mtapsprogram.org
226	thafner@mtapsprogram.org
226	anampiu@gmail.com
226	bmuyundo@intellisoftkenya.com
226	nelsonkimaiga@example.com
226	nelsonkimaiga@umail.com
226	dnjau@intellisoftkenya.com
226	nelsonkimaiga@intel.com
227	nelsonkimaiga@gmail.com
228	nelsonkimaiga@gmail.com
229	nelsonkimaiga@gmail.com
230	nelsonkimaiga@gmail.com
231	nelsonkimaiga@gmail.com
232	nelsonkimaiga@gmail.com
233	nelsonkimaiga@gmail.com
234	nelsonkimaiga@gmail.com
235	nelsonkimaiga@gmail.com
236	davillamilner@gmail.com
236	nnyaga@intellisoftkenya.com
236	pnyatindo@intellisoftkenya.com
236	muyundobrian@gmail.com
236	nellyflashier2@gmail.com
236	nellyflashier@gmail.com
236	taibali5@gmail.com
236	admin@pss.com
236	nwanjiru@intellisoftkenya.com
236	mowiso@intellisoftkenya.com
236	lherzog@mtapsprogram.org
236	thafner@mtapsprogram.org
236	anampiu@gmail.com
236	bmuyundo@intellisoftkenya.com
236	nelsonkimaiga@example.com
236	nelsonkimaiga@umail.com
236	dnjau@intellisoftkenya.com
236	nelsonkimaiga@intel.com
237	davillamilner@gmail.com
237	string
237	nnyaga@intellisoftkenya.com
237	pnyatindo@intellisoftkenya.com
237	muyundobrian@gmail.com
237	nellyflashier2@gmail.com
237	nellyflashier@gmail.com
237	taibali5@gmail.com
237	
237	admin@pss.com
237	nwanjiru@intellisoftkenya.com
237	mowiso@intellisoftkenya.com
237	lherzog@mtapsprogram.org
237	thafner@mtapsprogram.org
237	anampiu@gmail.com
237	bmuyundo@intellisoftkenya.com
237	nelsonkimaiga@example.com
237	nelsonkimaiga@umail.com
237	dnjau@intellisoftkenya.com
237	nelsonkimaiga@intel.com
238	davillamilner@gmail.com
238	string
238	nnyaga@intellisoftkenya.com
238	pnyatindo@intellisoftkenya.com
238	muyundobrian@gmail.com
238	nellyflashier2@gmail.com
238	nellyflashier@gmail.com
238	taibali5@gmail.com
238	
238	admin@pss.com
238	nwanjiru@intellisoftkenya.com
238	mowiso@intellisoftkenya.com
238	lherzog@mtapsprogram.org
238	thafner@mtapsprogram.org
238	anampiu@gmail.com
238	bmuyundo@intellisoftkenya.com
238	nelsonkimaiga@example.com
238	nelsonkimaiga@umail.com
238	dnjau@intellisoftkenya.com
238	nelsonkimaiga@intel.com
239	nelsonkimaiga@gmail.com
240	nelsonkimaiga@gmail.com
241	davillamilner@gmail.com
241	string
241	nnyaga@intellisoftkenya.com
241	pnyatindo@intellisoftkenya.com
241	muyundobrian@gmail.com
241	nellyflashier2@gmail.com
241	nellyflashier@gmail.com
241	taibali5@gmail.com
241	
241	admin@pss.com
241	nwanjiru@intellisoftkenya.com
241	mowiso@intellisoftkenya.com
241	lherzog@mtapsprogram.org
241	thafner@mtapsprogram.org
241	anampiu@gmail.com
241	bmuyundo@intellisoftkenya.com
241	nelsonkimaiga@example.com
241	nelsonkimaiga@umail.com
241	dnjau@intellisoftkenya.com
241	nelsonkimaiga@intel.com
242	muyundobrian@gmail.com
243	pnyatindo@intellisoftkenya.com
244	bmuyundo@intellisoftkenya.com
245	davillamilner@gmail.com
245	nnyaga@intellisoftkenya.com
245	pnyatindo@intellisoftkenya.com
245	muyundobrian@gmail.com
245	nellyflashier2@gmail.com
245	nellyflashier@gmail.com
245	taibali5@gmail.com
245	admin@pss.com
245	nwanjiru@intellisoftkenya.com
245	mowiso@intellisoftkenya.com
245	lherzog@mtapsprogram.org
245	thafner@mtapsprogram.org
245	anampiu@gmail.com
245	bmuyundo@intellisoftkenya.com
245	nelsonkimaiga@example.com
245	nelsonkimaiga@umail.com
245	dnjau@intellisoftkenya.com
245	nelsonkimaiga@intel.com
246	davillamilner@gmail.com
246	nnyaga@intellisoftkenya.com
246	pnyatindo@intellisoftkenya.com
246	muyundobrian@gmail.com
246	nellyflashier2@gmail.com
246	nellyflashier@gmail.com
246	taibali5@gmail.com
246	admin@pss.com
246	nwanjiru@intellisoftkenya.com
246	mowiso@intellisoftkenya.com
246	lherzog@mtapsprogram.org
246	thafner@mtapsprogram.org
246	anampiu@gmail.com
246	bmuyundo@intellisoftkenya.com
246	nelsonkimaiga@example.com
246	nelsonkimaiga@umail.com
246	dnjau@intellisoftkenya.com
246	nelsonkimaiga@intel.com
247	muyundobrian@gmail.com
248	muyundobrian@gmail.com
248	lherzog@mtapsprogram.org
249	muyundobrian@gmail.com
249	tamanna.nigar2015@gmail.com
250	msoucy333@gmail.com
251	davillamilner@gmail.com
251	nnyaga@intellisoftkenya.com
251	pnyatindo@intellisoftkenya.com
251	muyundobrian@gmail.com
251	nellyflashier2@gmail.com
251	nellyflashier@gmail.com
251	taibali5@gmail.com
251	admin@pss.com
251	nwanjiru@intellisoftkenya.com
251	mowiso@intellisoftkenya.com
251	lherzog@mtapsprogram.org
251	thafner@mtapsprogram.org
251	anampiu@gmail.com
251	bmuyundo@intellisoftkenya.com
251	nelsonkimaiga@example.com
251	nelsonkimaiga@umail.com
251	dnjau@intellisoftkenya.com
251	nelsonkimaiga@intel.com
252	davillamilner@gmail.com
252	nnyaga@intellisoftkenya.com
252	pnyatindo@intellisoftkenya.com
252	muyundobrian@gmail.com
252	nellyflashier2@gmail.com
252	nellyflashier@gmail.com
252	taibali5@gmail.com
252	admin@pss.com
252	nwanjiru@intellisoftkenya.com
252	mowiso@intellisoftkenya.com
252	lherzog@mtapsprogram.org
252	thafner@mtapsprogram.org
252	anampiu@gmail.com
252	bmuyundo@intellisoftkenya.com
252	nelsonkimaiga@example.com
252	nelsonkimaiga@umail.com
252	dnjau@intellisoftkenya.com
252	nelsonkimaiga@intel.com
253	davillamilner@gmail.com
253	nnyaga@intellisoftkenya.com
253	pnyatindo@intellisoftkenya.com
253	muyundobrian@gmail.com
253	nellyflashier2@gmail.com
253	nellyflashier@gmail.com
253	taibali5@gmail.com
253	admin@pss.com
253	nwanjiru@intellisoftkenya.com
253	mowiso@intellisoftkenya.com
253	lherzog@mtapsprogram.org
253	thafner@mtapsprogram.org
253	anampiu@gmail.com
253	bmuyundo@intellisoftkenya.com
253	nelsonkimaiga@example.com
253	nelsonkimaiga@umail.com
253	dnjau@intellisoftkenya.com
253	nelsonkimaiga@intel.com
254	bmuyundo@intellisoftkenya.com
255	davillamilner@gmail.com
255	string
255	nnyaga@intellisoftkenya.com
255	pnyatindo@intellisoftkenya.com
255	muyundobrian@gmail.com
255	nellyflashier2@gmail.com
255	nellyflashier@gmail.com
255	taibali5@gmail.com
255	
255	admin@pss.com
255	nwanjiru@intellisoftkenya.com
255	mowiso@intellisoftkenya.com
255	lherzog@mtapsprogram.org
255	thafner@mtapsprogram.org
255	anampiu@gmail.com
255	bmuyundo@intellisoftkenya.com
255	nelsonkimaiga@example.com
255	nelsonkimaiga@umail.com
255	dnjau@intellisoftkenya.com
255	nelsonkimaiga@intel.com
256	nnyaga@intellisoftkenya.com
256	jwairimu@intellisoftkenya.com
256	bmuyundo@intellisoftkenya.com
257	nwanjiru@intellisoftkenya.com
258	davillamilner@gmail.com
258	nnyaga@intellisoftkenya.com
258	pnyatindo@intellisoftkenya.com
258	muyundobrian@gmail.com
258	nellyflashier2@gmail.com
258	nellyflashier@gmail.com
258	taibali5@gmail.com
258	admin@pss.com
258	nwanjiru@intellisoftkenya.com
258	mowiso@intellisoftkenya.com
258	lherzog@mtapsprogram.org
258	thafner@mtapsprogram.org
258	anampiu@gmail.com
258	bmuyundo@intellisoftkenya.com
258	nelsonkimaiga@example.com
258	nelsonkimaiga@umail.com
258	dnjau@intellisoftkenya.com
258	nelsonkimaiga@intel.com
258	jwairimu@intellisoftkenya.com
258	Admin@info.com
259	jnjeri@intellisoftkenya.com
260	davillamilner@gmail.com
260	nnyaga@intellisoftkenya.com
260	pnyatindo@intellisoftkenya.com
260	muyundobrian@gmail.com
260	nellyflashier2@gmail.com
260	nellyflashier@gmail.com
260	taibali5@gmail.com
260	admin@pss.com
260	nwanjiru@intellisoftkenya.com
260	mowiso@intellisoftkenya.com
260	lherzog@mtapsprogram.org
260	thafner@mtapsprogram.org
260	anampiu@gmail.com
260	bmuyundo@intellisoftkenya.com
260	nelsonkimaiga@example.com
260	nelsonkimaiga@umail.com
260	dnjau@intellisoftkenya.com
260	nelsonkimaiga@intel.com
260	jwairimu@intellisoftkenya.com
260	Admin@info.com
261	bmuyundo@intellisoftkenya.com
262	davillamilner@gmail.com
262	nnyaga@intellisoftkenya.com
262	pnyatindo@intellisoftkenya.com
262	muyundobrian@gmail.com
262	nellyflashier2@gmail.com
262	nellyflashier@gmail.com
262	taibali5@gmail.com
262	admin@pss.com
262	nwanjiru@intellisoftkenya.com
262	mowiso@intellisoftkenya.com
262	lherzog@mtapsprogram.org
262	thafner@mtapsprogram.org
262	anampiu@gmail.com
262	bmuyundo@intellisoftkenya.com
262	nelsonkimaiga@example.com
262	nelsonkimaiga@umail.com
262	dnjau@intellisoftkenya.com
262	nelsonkimaiga@intel.com
262	jwairimu@intellisoftkenya.com
262	Admin@info.com
263	davillamilner@gmail.com
263	nnyaga@intellisoftkenya.com
263	pnyatindo@intellisoftkenya.com
263	muyundobrian@gmail.com
263	nellyflashier2@gmail.com
263	nellyflashier@gmail.com
263	taibali5@gmail.com
263	admin@pss.com
263	nwanjiru@intellisoftkenya.com
263	mowiso@intellisoftkenya.com
263	lherzog@mtapsprogram.org
263	thafner@mtapsprogram.org
263	anampiu@gmail.com
263	bmuyundo@intellisoftkenya.com
263	nelsonkimaiga@example.com
263	nelsonkimaiga@umail.com
263	dnjau@intellisoftkenya.com
263	nelsonkimaiga@intel.com
263	jwairimu@intellisoftkenya.com
263	Admin@info.com
264	davillamilner@gmail.com
264	nnyaga@intellisoftkenya.com
264	pnyatindo@intellisoftkenya.com
264	muyundobrian@gmail.com
264	nellyflashier2@gmail.com
264	nellyflashier@gmail.com
264	taibali5@gmail.com
264	admin@pss.com
264	nwanjiru@intellisoftkenya.com
264	mowiso@intellisoftkenya.com
264	lherzog@mtapsprogram.org
264	thafner@mtapsprogram.org
264	anampiu@gmail.com
264	bmuyundo@intellisoftkenya.com
264	nelsonkimaiga@example.com
264	nelsonkimaiga@umail.com
264	dnjau@intellisoftkenya.com
264	nelsonkimaiga@intel.com
264	jwairimu@intellisoftkenya.com
264	Admin@info.com
265	davillamilner@gmail.com
265	nnyaga@intellisoftkenya.com
265	pnyatindo@intellisoftkenya.com
265	muyundobrian@gmail.com
265	nellyflashier2@gmail.com
265	nellyflashier@gmail.com
265	taibali5@gmail.com
265	admin@pss.com
265	nwanjiru@intellisoftkenya.com
265	mowiso@intellisoftkenya.com
265	lherzog@mtapsprogram.org
265	thafner@mtapsprogram.org
265	anampiu@gmail.com
265	bmuyundo@intellisoftkenya.com
265	nelsonkimaiga@example.com
265	nelsonkimaiga@umail.com
265	dnjau@intellisoftkenya.com
265	nelsonkimaiga@intel.com
265	jwairimu@intellisoftkenya.com
265	Admin@info.com
266	davillamilner@gmail.com
266	nnyaga@intellisoftkenya.com
266	pnyatindo@intellisoftkenya.com
266	muyundobrian@gmail.com
266	nellyflashier2@gmail.com
266	nellyflashier@gmail.com
266	taibali5@gmail.com
266	admin@pss.com
266	nwanjiru@intellisoftkenya.com
266	mowiso@intellisoftkenya.com
266	lherzog@mtapsprogram.org
266	thafner@mtapsprogram.org
266	anampiu@gmail.com
266	bmuyundo@intellisoftkenya.com
266	nelsonkimaiga@example.com
266	nelsonkimaiga@umail.com
266	dnjau@intellisoftkenya.com
266	nelsonkimaiga@intel.com
266	jwairimu@intellisoftkenya.com
266	Admin@info.com
267	davillamilner@gmail.com
267	nnyaga@intellisoftkenya.com
267	pnyatindo@intellisoftkenya.com
267	muyundobrian@gmail.com
267	nellyflashier2@gmail.com
267	nellyflashier@gmail.com
267	taibali5@gmail.com
267	admin@pss.com
267	nwanjiru@intellisoftkenya.com
267	mowiso@intellisoftkenya.com
267	lherzog@mtapsprogram.org
267	thafner@mtapsprogram.org
267	anampiu@gmail.com
267	bmuyundo@intellisoftkenya.com
267	nelsonkimaiga@example.com
267	nelsonkimaiga@umail.com
267	dnjau@intellisoftkenya.com
267	nelsonkimaiga@intel.com
267	jwairimu@intellisoftkenya.com
267	Admin@info.com
268	davillamilner@gmail.com
268	nnyaga@intellisoftkenya.com
268	pnyatindo@intellisoftkenya.com
268	muyundobrian@gmail.com
268	nellyflashier2@gmail.com
268	nellyflashier@gmail.com
268	taibali5@gmail.com
268	admin@pss.com
268	nwanjiru@intellisoftkenya.com
268	mowiso@intellisoftkenya.com
268	lherzog@mtapsprogram.org
268	thafner@mtapsprogram.org
268	anampiu@gmail.com
268	bmuyundo@intellisoftkenya.com
268	nelsonkimaiga@example.com
268	nelsonkimaiga@umail.com
268	dnjau@intellisoftkenya.com
268	nelsonkimaiga@intel.com
268	jwairimu@intellisoftkenya.com
268	Admin@info.com
269	davillamilner@gmail.com
269	nnyaga@intellisoftkenya.com
269	pnyatindo@intellisoftkenya.com
269	muyundobrian@gmail.com
269	nellyflashier2@gmail.com
269	nellyflashier@gmail.com
269	taibali5@gmail.com
269	admin@pss.com
269	nwanjiru@intellisoftkenya.com
269	mowiso@intellisoftkenya.com
269	lherzog@mtapsprogram.org
269	thafner@mtapsprogram.org
269	anampiu@gmail.com
269	bmuyundo@intellisoftkenya.com
269	nelsonkimaiga@example.com
269	nelsonkimaiga@umail.com
269	dnjau@intellisoftkenya.com
269	nelsonkimaiga@intel.com
269	jwairimu@intellisoftkenya.com
269	Admin@info.com
270	davillamilner@gmail.com
270	nnyaga@intellisoftkenya.com
270	pnyatindo@intellisoftkenya.com
270	muyundobrian@gmail.com
270	nellyflashier2@gmail.com
270	nellyflashier@gmail.com
270	taibali5@gmail.com
270	admin@pss.com
270	nwanjiru@intellisoftkenya.com
270	mowiso@intellisoftkenya.com
270	lherzog@mtapsprogram.org
270	thafner@mtapsprogram.org
270	anampiu@gmail.com
270	bmuyundo@intellisoftkenya.com
270	nelsonkimaiga@example.com
270	nelsonkimaiga@umail.com
270	dnjau@intellisoftkenya.com
270	nelsonkimaiga@intel.com
270	jwairimu@intellisoftkenya.com
270	Admin@info.com
271	davillamilner@gmail.com
271	nnyaga@intellisoftkenya.com
271	pnyatindo@intellisoftkenya.com
271	muyundobrian@gmail.com
271	nellyflashier2@gmail.com
271	nellyflashier@gmail.com
271	taibali5@gmail.com
271	admin@pss.com
271	nwanjiru@intellisoftkenya.com
271	mowiso@intellisoftkenya.com
271	lherzog@mtapsprogram.org
271	thafner@mtapsprogram.org
271	anampiu@gmail.com
271	bmuyundo@intellisoftkenya.com
271	nelsonkimaiga@example.com
271	nelsonkimaiga@umail.com
271	dnjau@intellisoftkenya.com
271	nelsonkimaiga@intel.com
271	jwairimu@intellisoftkenya.com
271	Admin@info.com
272	davillamilner@gmail.com
272	nnyaga@intellisoftkenya.com
272	pnyatindo@intellisoftkenya.com
272	muyundobrian@gmail.com
272	nellyflashier2@gmail.com
272	nellyflashier@gmail.com
272	taibali5@gmail.com
272	admin@pss.com
272	nwanjiru@intellisoftkenya.com
272	mowiso@intellisoftkenya.com
272	lherzog@mtapsprogram.org
272	thafner@mtapsprogram.org
272	anampiu@gmail.com
272	bmuyundo@intellisoftkenya.com
272	nelsonkimaiga@example.com
272	nelsonkimaiga@umail.com
272	dnjau@intellisoftkenya.com
272	nelsonkimaiga@intel.com
272	jwairimu@intellisoftkenya.com
272	Admin@info.com
273	davillamilner@gmail.com
273	nnyaga@intellisoftkenya.com
273	pnyatindo@intellisoftkenya.com
273	muyundobrian@gmail.com
273	nellyflashier2@gmail.com
273	nellyflashier@gmail.com
273	taibali5@gmail.com
273	admin@pss.com
273	nwanjiru@intellisoftkenya.com
273	mowiso@intellisoftkenya.com
273	lherzog@mtapsprogram.org
273	thafner@mtapsprogram.org
273	anampiu@gmail.com
273	bmuyundo@intellisoftkenya.com
273	nelsonkimaiga@example.com
273	nelsonkimaiga@umail.com
273	dnjau@intellisoftkenya.com
273	nelsonkimaiga@intel.com
273	jwairimu@intellisoftkenya.com
273	Admin@info.com
274	davillamilner@gmail.com
274	nnyaga@intellisoftkenya.com
274	pnyatindo@intellisoftkenya.com
274	muyundobrian@gmail.com
274	nellyflashier2@gmail.com
274	nellyflashier@gmail.com
274	taibali5@gmail.com
274	admin@pss.com
274	nwanjiru@intellisoftkenya.com
274	mowiso@intellisoftkenya.com
274	lherzog@mtapsprogram.org
274	thafner@mtapsprogram.org
274	anampiu@gmail.com
274	bmuyundo@intellisoftkenya.com
274	nelsonkimaiga@example.com
274	nelsonkimaiga@umail.com
274	dnjau@intellisoftkenya.com
274	nelsonkimaiga@intel.com
274	jwairimu@intellisoftkenya.com
274	Admin@info.com
275	davillamilner@gmail.com
275	nnyaga@intellisoftkenya.com
275	pnyatindo@intellisoftkenya.com
275	muyundobrian@gmail.com
275	nellyflashier2@gmail.com
275	nellyflashier@gmail.com
275	taibali5@gmail.com
275	admin@pss.com
275	nwanjiru@intellisoftkenya.com
275	mowiso@intellisoftkenya.com
275	lherzog@mtapsprogram.org
275	thafner@mtapsprogram.org
275	anampiu@gmail.com
275	bmuyundo@intellisoftkenya.com
275	nelsonkimaiga@example.com
275	nelsonkimaiga@umail.com
275	dnjau@intellisoftkenya.com
275	nelsonkimaiga@intel.com
275	jwairimu@intellisoftkenya.com
275	Admin@info.com
276	davillamilner@gmail.com
276	nnyaga@intellisoftkenya.com
276	pnyatindo@intellisoftkenya.com
276	muyundobrian@gmail.com
276	nellyflashier2@gmail.com
276	nellyflashier@gmail.com
276	taibali5@gmail.com
276	admin@pss.com
276	nwanjiru@intellisoftkenya.com
276	mowiso@intellisoftkenya.com
276	lherzog@mtapsprogram.org
276	thafner@mtapsprogram.org
276	anampiu@gmail.com
276	bmuyundo@intellisoftkenya.com
276	nelsonkimaiga@example.com
276	nelsonkimaiga@umail.com
276	dnjau@intellisoftkenya.com
276	nelsonkimaiga@intel.com
276	jwairimu@intellisoftkenya.com
276	Admin@info.com
277	davillamilner@gmail.com
277	nnyaga@intellisoftkenya.com
277	pnyatindo@intellisoftkenya.com
277	muyundobrian@gmail.com
277	nellyflashier2@gmail.com
277	nellyflashier@gmail.com
277	taibali5@gmail.com
277	admin@pss.com
277	nwanjiru@intellisoftkenya.com
277	mowiso@intellisoftkenya.com
277	lherzog@mtapsprogram.org
277	thafner@mtapsprogram.org
277	anampiu@gmail.com
277	bmuyundo@intellisoftkenya.com
277	nelsonkimaiga@example.com
277	nelsonkimaiga@umail.com
277	dnjau@intellisoftkenya.com
277	nelsonkimaiga@intel.com
277	jwairimu@intellisoftkenya.com
277	Admin@info.com
278	davillamilner@gmail.com
278	nnyaga@intellisoftkenya.com
278	pnyatindo@intellisoftkenya.com
278	muyundobrian@gmail.com
278	nellyflashier2@gmail.com
278	nellyflashier@gmail.com
278	taibali5@gmail.com
278	admin@pss.com
278	nwanjiru@intellisoftkenya.com
278	mowiso@intellisoftkenya.com
278	lherzog@mtapsprogram.org
278	thafner@mtapsprogram.org
278	anampiu@gmail.com
278	bmuyundo@intellisoftkenya.com
278	nelsonkimaiga@example.com
278	nelsonkimaiga@umail.com
278	dnjau@intellisoftkenya.com
278	nelsonkimaiga@intel.com
278	jwairimu@intellisoftkenya.com
278	Admin@info.com
279	davillamilner@gmail.com
279	nnyaga@intellisoftkenya.com
279	pnyatindo@intellisoftkenya.com
279	muyundobrian@gmail.com
279	nellyflashier2@gmail.com
279	nellyflashier@gmail.com
279	taibali5@gmail.com
279	admin@pss.com
279	nwanjiru@intellisoftkenya.com
279	mowiso@intellisoftkenya.com
279	lherzog@mtapsprogram.org
279	thafner@mtapsprogram.org
279	anampiu@gmail.com
279	bmuyundo@intellisoftkenya.com
279	nelsonkimaiga@example.com
279	nelsonkimaiga@umail.com
279	dnjau@intellisoftkenya.com
279	nelsonkimaiga@intel.com
279	jwairimu@intellisoftkenya.com
279	Admin@info.com
280	davillamilner@gmail.com
280	nnyaga@intellisoftkenya.com
280	pnyatindo@intellisoftkenya.com
280	muyundobrian@gmail.com
280	nellyflashier2@gmail.com
280	nellyflashier@gmail.com
280	taibali5@gmail.com
280	admin@pss.com
280	nwanjiru@intellisoftkenya.com
280	mowiso@intellisoftkenya.com
280	lherzog@mtapsprogram.org
280	thafner@mtapsprogram.org
280	anampiu@gmail.com
280	bmuyundo@intellisoftkenya.com
280	nelsonkimaiga@example.com
280	nelsonkimaiga@umail.com
280	dnjau@intellisoftkenya.com
280	nelsonkimaiga@intel.com
280	jwairimu@intellisoftkenya.com
280	Admin@info.com
281	davillamilner@gmail.com
281	nnyaga@intellisoftkenya.com
281	pnyatindo@intellisoftkenya.com
281	muyundobrian@gmail.com
281	nellyflashier2@gmail.com
281	nellyflashier@gmail.com
281	taibali5@gmail.com
281	admin@pss.com
281	nwanjiru@intellisoftkenya.com
281	mowiso@intellisoftkenya.com
281	lherzog@mtapsprogram.org
281	thafner@mtapsprogram.org
281	anampiu@gmail.com
281	bmuyundo@intellisoftkenya.com
281	nelsonkimaiga@example.com
281	nelsonkimaiga@umail.com
281	dnjau@intellisoftkenya.com
281	nelsonkimaiga@intel.com
281	jwairimu@intellisoftkenya.com
281	Admin@info.com
282	davillamilner@gmail.com
282	nnyaga@intellisoftkenya.com
282	pnyatindo@intellisoftkenya.com
282	muyundobrian@gmail.com
282	nellyflashier2@gmail.com
282	nellyflashier@gmail.com
282	taibali5@gmail.com
282	admin@pss.com
282	nwanjiru@intellisoftkenya.com
282	mowiso@intellisoftkenya.com
282	lherzog@mtapsprogram.org
282	thafner@mtapsprogram.org
282	anampiu@gmail.com
282	bmuyundo@intellisoftkenya.com
282	nelsonkimaiga@example.com
282	nelsonkimaiga@umail.com
282	dnjau@intellisoftkenya.com
282	nelsonkimaiga@intel.com
282	jwairimu@intellisoftkenya.com
282	Admin@info.com
283	davillamilner@gmail.com
283	nnyaga@intellisoftkenya.com
283	pnyatindo@intellisoftkenya.com
283	muyundobrian@gmail.com
283	nellyflashier2@gmail.com
283	nellyflashier@gmail.com
283	taibali5@gmail.com
283	admin@pss.com
283	nwanjiru@intellisoftkenya.com
283	mowiso@intellisoftkenya.com
283	lherzog@mtapsprogram.org
283	thafner@mtapsprogram.org
283	anampiu@gmail.com
283	bmuyundo@intellisoftkenya.com
283	nelsonkimaiga@example.com
283	nelsonkimaiga@umail.com
283	dnjau@intellisoftkenya.com
283	nelsonkimaiga@intel.com
283	jwairimu@intellisoftkenya.com
283	Admin@info.com
284	davillamilner@gmail.com
284	nnyaga@intellisoftkenya.com
284	pnyatindo@intellisoftkenya.com
284	muyundobrian@gmail.com
284	nellyflashier2@gmail.com
284	nellyflashier@gmail.com
284	taibali5@gmail.com
284	admin@pss.com
284	nwanjiru@intellisoftkenya.com
284	mowiso@intellisoftkenya.com
284	lherzog@mtapsprogram.org
284	thafner@mtapsprogram.org
284	anampiu@gmail.com
284	bmuyundo@intellisoftkenya.com
284	nelsonkimaiga@example.com
284	nelsonkimaiga@umail.com
284	dnjau@intellisoftkenya.com
284	nelsonkimaiga@intel.com
284	jwairimu@intellisoftkenya.com
284	Admin@info.com
285	davillamilner@gmail.com
285	nnyaga@intellisoftkenya.com
285	pnyatindo@intellisoftkenya.com
285	muyundobrian@gmail.com
285	nellyflashier2@gmail.com
285	nellyflashier@gmail.com
285	taibali5@gmail.com
285	admin@pss.com
285	nwanjiru@intellisoftkenya.com
285	mowiso@intellisoftkenya.com
285	lherzog@mtapsprogram.org
285	thafner@mtapsprogram.org
285	anampiu@gmail.com
285	bmuyundo@intellisoftkenya.com
285	nelsonkimaiga@example.com
285	nelsonkimaiga@umail.com
285	dnjau@intellisoftkenya.com
285	nelsonkimaiga@intel.com
285	jwairimu@intellisoftkenya.com
285	Admin@info.com
285	patrickotieno39@gmail.com
286	davillamilner@gmail.com
286	nnyaga@intellisoftkenya.com
286	pnyatindo@intellisoftkenya.com
286	muyundobrian@gmail.com
286	nellyflashier2@gmail.com
286	nellyflashier@gmail.com
286	taibali5@gmail.com
286	admin@pss.com
286	nwanjiru@intellisoftkenya.com
286	mowiso@intellisoftkenya.com
286	lherzog@mtapsprogram.org
286	thafner@mtapsprogram.org
286	anampiu@gmail.com
286	bmuyundo@intellisoftkenya.com
286	nelsonkimaiga@example.com
286	nelsonkimaiga@umail.com
286	dnjau@intellisoftkenya.com
286	nelsonkimaiga@intel.com
286	jwairimu@intellisoftkenya.com
286	Admin@info.com
286	patrickotieno39@gmail.com
287	davillamilner@gmail.com
287	nnyaga@intellisoftkenya.com
287	pnyatindo@intellisoftkenya.com
287	muyundobrian@gmail.com
287	nellyflashier2@gmail.com
287	nellyflashier@gmail.com
287	taibali5@gmail.com
287	admin@pss.com
287	nwanjiru@intellisoftkenya.com
287	mowiso@intellisoftkenya.com
287	lherzog@mtapsprogram.org
287	thafner@mtapsprogram.org
287	anampiu@gmail.com
287	bmuyundo@intellisoftkenya.com
287	nelsonkimaiga@example.com
287	nelsonkimaiga@umail.com
287	dnjau@intellisoftkenya.com
287	nelsonkimaiga@intel.com
287	jwairimu@intellisoftkenya.com
287	Admin@info.com
287	patrickotieno39@gmail.com
288	davillamilner@gmail.com
288	string
288	nnyaga@intellisoftkenya.com
288	pnyatindo@intellisoftkenya.com
288	muyundobrian@gmail.com
288	nellyflashier2@gmail.com
288	nellyflashier@gmail.com
288	taibali5@gmail.com
288	
288	admin@pss.com
288	nwanjiru@intellisoftkenya.com
288	mowiso@intellisoftkenya.com
288	lherzog@mtapsprogram.org
288	thafner@mtapsprogram.org
288	anampiu@gmail.com
288	bmuyundo@intellisoftkenya.com
288	nelsonkimaiga@example.com
288	nelsonkimaiga@umail.com
288	dnjau@intellisoftkenya.com
288	nelsonkimaiga@intel.com
288	jwairimu@intellisoftkenya.com
288	Admin@info.com
288	patrickotieno39@gmail.com
289	bmuyundo@intellisoftkenya.com
290	bmuyundo@intellisoftkenya.com
290	muyundobrian@gmail.com
291	bmuyundo@intellisoftkenya.com
291	muyundobrian@gmail.com
292	bmuyundo@intellisoftkenya.com
292	muyundobrian@gmail.com
293	bmuyundo@intellisoftkenya.com
294	bmuyundo@intellisoftkenya.com
295	bmuyundo@intellisoftkenya.com
296	bmuyundo@intellisoftkenya.com
296	muyundobrian@gmail.com
297	bmuyundo@intellisoftkenya.com
297	muyundobrian@gmail.com
298	bmuyundo@intellisoftkenya.com
298	muyundobrian@gmail.com
299	bmuyundo@intellisoftkenya.com
299	muyundobrian@gmail.com
300	bmuyundo@intellisoftkenya.com
300	muyundobrian@gmail.com
301	bmuyundo@intellisoftkenya.com
301	muyundobrian@gmail.com
302	bmuyundo@intellisoftkenya.com
302	muyundobrian@gmail.com
302	mowiso@intellisoftkenya.com
303	bmuyundo@intellisoftkenya.com
304	bmuyundo@intellisoftkenya.com
304	muyundobrian@gmail.com
304	mowiso@intellisoftkenya.com
305	tali@intellisoftkenya.com
306	bmuyundo@intellisoftkenya.com
306	muyundobrian@gmail.com
306	mowiso@intellisoftkenya.com
307	bmuyundo@intellisoftkenya.com
307	muyundobrian@gmail.com
307	mowiso@intellisoftkenya.com
308	bmuyundo@intellisoftkenya.com
308	muyundobrian@gmail.com
308	mowiso@intellisoftkenya.com
309	bmuyundo@intellisoftkenya.com
309	muyundobrian@gmail.com
309	mowiso@intellisoftkenya.com
310	bmuyundo@intellisoftkenya.com
310	muyundobrian@gmail.com
310	mowiso@intellisoftkenya.com
311	bmuyundo@intellisoftkenya.com
311	muyundobrian@gmail.com
311	mowiso@intellisoftkenya.com
312	bmuyundo@intellisoftkenya.com
312	muyundobrian@gmail.com
312	mowiso@intellisoftkenya.com
312	Jnjeri@intellisoftkenya.com
312	example@1234.com
313	bmuyundo@intellisoftkenya.com
313	muyundobrian@gmail.com
313	mowiso@intellisoftkenya.com
313	Jnjeri@intellisoftkenya.com
313	example@1234.com
313	mmowiso@intellisoftkenya.com
313	peter@gmail.com
313	jayoma@intellisoftkenya.com
313	nel@gmail.com
313	mndula@intellisoftkenya.com
314	bmuyundo@intellisoftkenya.com
314	muyundobrian@gmail.com
314	mowiso@intellisoftkenya.com
314	Jnjeri@intellisoftkenya.com
314	example@1234.com
314	mmowiso@intellisoftkenya.com
314	peter@gmail.com
314	jayoma@intellisoftkenya.com
314	nel@gmail.com
314	mndula@intellisoftkenya.com
315	bmuyundo@intellisoftkenya.com
315	muyundobrian@gmail.com
315	mowiso@intellisoftkenya.com
315	Jnjeri@intellisoftkenya.com
315	example@1234.com
315	mmowiso@intellisoftkenya.com
315	peter@gmail.com
315	jayoma@intellisoftkenya.com
315	nel@gmail.com
315	mndula@intellisoftkenya.com
316	bmuyundo@intellisoftkenya.com
316	muyundobrian@gmail.com
316	mowiso@intellisoftkenya.com
316	Jnjeri@intellisoftkenya.com
316	example@1234.com
316	mmowiso@intellisoftkenya.com
316	peter@gmail.com
316	jayoma@intellisoftkenya.com
316	nel@gmail.com
316	mndula@intellisoftkenya.com
317	xyz@intellisoftkenya.com
318	xyz@intellisoftkenya.com
319	xyz@intellisoftkenya.com
319	bmuyundo@intellisoftkenya.com
320	xyz@intellisoftkenya.com
320	bmuyundo@intellisoftkenya.com
321	tali@intellisoftkenya.com
322	xyz@intellisoftkenya.com
322	bmuyundo@intellisoftkenya.com
322	muyundo@intellisoftkenya.com
322	pnyatindo@intellisoftkenya.com
323	xyz@intellisoftkenya.com
323	bmuyundo@intellisoftkenya.com
323	pnyatindo@intellisoftkenya.com
323	nelsonkimaiga@cx21.com
323	nelsonkimaiga@cx26.com
324	xyz@intellisoftkenya.com
324	bmuyundo@intellisoftkenya.com
324	pnyatindo@intellisoftkenya.com
324	nelsonkimaiga@cx21.com
324	nelsonkimaiga@cx26.com
325	xyz@intellisoftkenya.com
325	bmuyundo@intellisoftkenya.com
325	pnyatindo@intellisoftkenya.com
325	nelsonkimaiga@cx21.com
325	nelsonkimaiga@cx26.com
326	xyz@intellisoftkenya.com
326	bmuyundo@intellisoftkenya.com
326	pnyatindo@intellisoftkenya.com
326	nelsonkimaiga@cx21.com
326	nelsonkimaiga@cx26.com
327	xyz@intellisoftkenya.com
327	bmuyundo@intellisoftkenya.com
327	pnyatindo@intellisoftkenya.com
327	nelsonkimaiga@cx21.com
327	nelsonkimaiga@cx26.com
328	xyz@intellisoftkenya.com
328	bmuyundo@intellisoftkenya.com
328	pnyatindo@intellisoftkenya.com
328	nelsonkimaiga@cx21.com
328	nelsonkimaiga@cx26.com
329	xyz@intellisoftkenya.com
329	bmuyundo@intellisoftkenya.com
329	pnyatindo@intellisoftkenya.com
329	nelsonkimaiga@cx21.com
329	nelsonkimaiga@cx26.com
330	xyz@intellisoftkenya.com
330	bmuyundo@intellisoftkenya.com
330	pnyatindo@intellisoftkenya.com
330	nelsonkimaiga@cx21.com
330	nelsonkimaiga@cx26.com
331	xyz@intellisoftkenya.com
331	bmuyundo@intellisoftkenya.com
331	pnyatindo@intellisoftkenya.com
331	nelsonkimaiga@cx21.com
331	nelsonkimaiga@cx26.com
332	xyz@intellisoftkenya.com
332	bmuyundo@intellisoftkenya.com
332	pnyatindo@intellisoftkenya.com
332	nelsonkimaiga@cx21.com
332	nelsonkimaiga@cx26.com
333	jnjeri@intellisoftkenya.com
334	xyz@intellisoftkenya.com
334	bmuyundo@intellisoftkenya.com
334	pnyatindo@intellisoftkenya.com
334	nelsonkimaiga@cx21.com
334	nelsonkimaiga@cx26.com
335	xyz@intellisoftkenya.com
335	bmuyundo@intellisoftkenya.com
335	pnyatindo@intellisoftkenya.com
335	nelsonkimaiga@cx21.com
335	nelsonkimaiga@cx26.com
336	xyz@intellisoftkenya.com
336	bmuyundo@intellisoftkenya.com
336	pnyatindo@intellisoftkenya.com
336	nelsonkimaiga@cx21.com
336	nelsonkimaiga@cx26.com
337	xyz@intellisoftkenya.com
337	bmuyundo@intellisoftkenya.com
337	pnyatindo@intellisoftkenya.com
337	nelsonkimaiga@cx21.com
337	nelsonkimaiga@cx26.com
338	xyz@intellisoftkenya.com
338	bmuyundo@intellisoftkenya.com
338	pnyatindo@intellisoftkenya.com
338	nelsonkimaiga@cx21.com
338	nelsonkimaiga@cx26.com
339	xyz@intellisoftkenya.com
339	bmuyundo@intellisoftkenya.com
339	pnyatindo@intellisoftkenya.com
339	nelsonkimaiga@cx21.com
339	nelsonkimaiga@cx26.com
340	xyz@intellisoftkenya.com
340	bmuyundo@intellisoftkenya.com
340	pnyatindo@intellisoftkenya.com
340	nelsonkimaiga@cx21.com
340	nelsonkimaiga@cx26.com
341	xyz@intellisoftkenya.com
341	bmuyundo@intellisoftkenya.com
341	pnyatindo@intellisoftkenya.com
341	nelsonkimaiga@cx21.com
341	nelsonkimaiga@cx26.com
342	tali@intellisoftkenya.com 
342	nnyaga@intellisoftkenya.com 
342	jnjeri@intellisoftkenya.com 
343	tali@intellisoftkenya.com 
343	nnyaga@intellisoftkenya.com 
343	jnjeri@intellisoftkenya.com 
344	xyz@intellisoftkenya.com
344	bmuyundo@intellisoftkenya.com
344	pnyatindo@intellisoftkenya.com
344	nelsonkimaiga@cx21.com
344	nelsonkimaiga@cx26.com
345	xyz@intellisoftkenya.com
345	bmuyundo@intellisoftkenya.com
345	pnyatindo@intellisoftkenya.com
345	nelsonkimaiga@cx21.com
345	nelsonkimaiga@cx26.com
346	xyz@intellisoftkenya.com
346	bmuyundo@intellisoftkenya.com
346	pnyatindo@intellisoftkenya.com
346	nelsonkimaiga@cx21.com
346	nelsonkimaiga@cx26.com
347	xyz@intellisoftkenya.com
347	bmuyundo@intellisoftkenya.com
347	pnyatindo@intellisoftkenya.com
347	nelsonkimaiga@cx21.com
347	nelsonkimaiga@cx26.com
348	xyz@intellisoftkenya.com
348	bmuyundo@intellisoftkenya.com
348	pnyatindo@intellisoftkenya.com
348	nelsonkimaiga@cx21.com
348	nelsonkimaiga@cx26.com
349	xyz@intellisoftkenya.com
349	bmuyundo@intellisoftkenya.com
349	pnyatindo@intellisoftkenya.com
349	nelsonkimaiga@cx21.com
349	nelsonkimaiga@cx26.com
350	xyz@intellisoftkenya.com
350	bmuyundo@intellisoftkenya.com
350	pnyatindo@intellisoftkenya.com
350	nelsonkimaiga@cx21.com
350	nelsonkimaiga@cx26.com
351	xyz@intellisoftkenya.com
351	bmuyundo@intellisoftkenya.com
351	pnyatindo@intellisoftkenya.com
351	nelsonkimaiga@cx21.com
351	nelsonkimaiga@cx26.com
352	xyz@intellisoftkenya.com
352	bmuyundo@intellisoftkenya.com
352	pnyatindo@intellisoftkenya.com
352	nelsonkimaiga@cx21.com
352	nelsonkimaiga@cx26.com
353	xyz@intellisoftkenya.com
353	bmuyundo@intellisoftkenya.com
353	pnyatindo@intellisoftkenya.com
353	nelsonkimaiga@cx21.com
353	nelsonkimaiga@cx26.com
354	xyz@intellisoftkenya.com
354	bmuyundo@intellisoftkenya.com
354	pnyatindo@intellisoftkenya.com
354	nelsonkimaiga@cx21.com
354	nelsonkimaiga@cx26.com
355	xyz@intellisoftkenya.com
355	bmuyundo@intellisoftkenya.com
355	pnyatindo@intellisoftkenya.com
355	nelsonkimaiga@cx21.com
355	nelsonkimaiga@cx26.com
356	xyz@intellisoftkenya.com
356	bmuyundo@intellisoftkenya.com
356	pnyatindo@intellisoftkenya.com
356	nelsonkimaiga@cx21.com
356	nelsonkimaiga@cx26.com
357	xyz@intellisoftkenya.com
357	bmuyundo@intellisoftkenya.com
357	pnyatindo@intellisoftkenya.com
357	nelsonkimaiga@cx21.com
357	nelsonkimaiga@cx26.com
358	xyz@intellisoftkenya.com
358	bmuyundo@intellisoftkenya.com
358	pnyatindo@intellisoftkenya.com
358	nelsonkimaiga@cx21.com
358	nelsonkimaiga@cx26.com
359	xyz@intellisoftkenya.com
359	bmuyundo@intellisoftkenya.com
359	pnyatindo@intellisoftkenya.com
359	nelsonkimaiga@cx21.com
359	nelsonkimaiga@cx26.com
360	tali@intellisoftkenya.com 
360	nnyaga@intellisoftkenya.com 
360	jnjeri@intellisoftkenya.com 
360	pnyatindo@intellisoftkenya.com 
361	xyz@intellisoftkenya.com
361	bmuyundo@intellisoftkenya.com
361	pnyatindo@intellisoftkenya.com
361	nelsonkimaiga@cx21.com
361	nelsonkimaiga@cx26.com
362	xyz@intellisoftkenya.com
362	bmuyundo@intellisoftkenya.com
362	pnyatindo@intellisoftkenya.com
362	nelsonkimaiga@cx21.com
362	nelsonkimaiga@cx26.com
363	xyz@intellisoftkenya.com
363	bmuyundo@intellisoftkenya.com
363	pnyatindo@intellisoftkenya.com
363	nelsonkimaiga@cx21.com
363	nelsonkimaiga@cx26.com
364	xyz@intellisoftkenya.com
364	bmuyundo@intellisoftkenya.com
364	pnyatindo@intellisoftkenya.com
364	nelsonkimaiga@cx21.com
364	nelsonkimaiga@cx26.com
365	xyz@intellisoftkenya.com
365	bmuyundo@intellisoftkenya.com
365	pnyatindo@intellisoftkenya.com
365	nelsonkimaiga@cx21.com
365	nelsonkimaiga@cx26.com
366	xyz@intellisoftkenya.com
366	bmuyundo@intellisoftkenya.com
366	pnyatindo@intellisoftkenya.com
366	nelsonkimaiga@cx21.com
366	nelsonkimaiga@cx26.com
367	xyz@intellisoftkenya.com
367	bmuyundo@intellisoftkenya.com
367	pnyatindo@intellisoftkenya.com
367	nelsonkimaiga@cx21.com
367	nelsonkimaiga@cx26.com
368	xyz@intellisoftkenya.com
368	bmuyundo@intellisoftkenya.com
368	pnyatindo@intellisoftkenya.com
368	nelsonkimaiga@cx21.com
368	nelsonkimaiga@cx26.com
369	xyz@intellisoftkenya.com
369	bmuyundo@intellisoftkenya.com
369	pnyatindo@intellisoftkenya.com
369	nelsonkimaiga@cx21.com
369	nelsonkimaiga@cx26.com
370	xyz@intellisoftkenya.com
370	bmuyundo@intellisoftkenya.com
370	pnyatindo@intellisoftkenya.com
370	nelsonkimaiga@cx21.com
370	nelsonkimaiga@cx26.com
371	xyz@intellisoftkenya.com
371	bmuyundo@intellisoftkenya.com
371	pnyatindo@intellisoftkenya.com
371	nelsonkimaiga@cx21.com
371	nelsonkimaiga@cx26.com
372	xyz@intellisoftkenya.com
372	bmuyundo@intellisoftkenya.com
372	pnyatindo@intellisoftkenya.com
372	nelsonkimaiga@cx21.com
372	nelsonkimaiga@cx26.com
373	xyz@intellisoftkenya.com
373	bmuyundo@intellisoftkenya.com
373	pnyatindo@intellisoftkenya.com
373	nelsonkimaiga@cx21.com
373	nelsonkimaiga@cx26.com
374	xyz@intellisoftkenya.com
374	bmuyundo@intellisoftkenya.com
374	pnyatindo@intellisoftkenya.com
374	nelsonkimaiga@cx21.com
374	nelsonkimaiga@cx26.com
375	xyz@intellisoftkenya.com
375	bmuyundo@intellisoftkenya.com
375	pnyatindo@intellisoftkenya.com
375	nelsonkimaiga@cx21.com
375	nelsonkimaiga@cx26.com
376	xyz@intellisoftkenya.com
376	bmuyundo@intellisoftkenya.com
376	pnyatindo@intellisoftkenya.com
376	nelsonkimaiga@cx21.com
376	nelsonkimaiga@cx26.com
377	xyz@intellisoftkenya.com
377	bmuyundo@intellisoftkenya.com
377	pnyatindo@intellisoftkenya.com
377	nelsonkimaiga@cx21.com
377	nelsonkimaiga@cx26.com
378	xyz@intellisoftkenya.com
378	bmuyundo@intellisoftkenya.com
378	pnyatindo@intellisoftkenya.com
378	nelsonkimaiga@cx21.com
378	nelsonkimaiga@cx26.com
379	xyz@intellisoftkenya.com
379	bmuyundo@intellisoftkenya.com
379	pnyatindo@intellisoftkenya.com
379	nelsonkimaiga@cx21.com
379	nelsonkimaiga@cx26.com
380	xyz@intellisoftkenya.com
380	bmuyundo@intellisoftkenya.com
380	pnyatindo@intellisoftkenya.com
380	nelsonkimaiga@cx21.com
380	nelsonkimaiga@cx26.com
\.


--
-- Data for Name: notification_subscription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notification_subscription (id, email, first_name, is_active, last_name, phone, user_id) FROM stdin;
37	nkimaiga@intellisoftkenya.com	Nelson	f	Kimaiga	\N	M5zQapPyTZI
41	xyz@intellisoftkenya.com	Muyundo	t	Brian	\N	M5zQapPyTZI
42	bmuyundo@intellisoftkenya.com	Muyundo	t	Brian	\N	M5zQapPyTZI
44	pnyatindo@intellisoftkenya.com	Muyundo	t	Brian	\N	M5zQapPyTZI
46	nelsonkimaiga@cx21.com	Muyundo	t	brian	\N	AXd46K2iMq8
47	nelsonkimaiga@cx26.com	Muyundo	t	brian	\N	AXd46K2iMq8
36	xty34@gmail.com	Muyundo	f	Brian	\N	M5zQapPyTZI
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notifications (id, created_at, message, sender, title, updated_at) FROM stdin;
1	2023-03-29 03:28:37.471	A new template has been published by admin from the international instance. The new template has the following details: Version number: 31\nVersion description: Testing\nNumber of indicators: 3	admin	New Version Published.	2023-03-29 03:28:37.471
2	2023-03-30 09:30:56.028	A new template has been published by admin from the international instance. The new template has the following details: Version number: 32\nVersion description: Test 2\nNumber of indicators: 11	admin	New Version Published.	2023-03-30 09:30:56.028
3	2023-03-31 06:26:57.056	A new template has been published by admin from the international instance. The new template has the following details: Version number: 33\nVersion description: Sanity Test\nNumber of indicators: 21	admin	New Version Published.	2023-03-31 06:26:57.056
4	2023-03-31 11:22:20.17	A new template has been published by admin from the international instance. The new template has the following details: Version number: 34\nVersion description: Test Template\nNumber of indicators: 5	admin	New Version Published.	2023-03-31 11:22:20.17
5	2023-03-31 12:39:56.533	A new template has been published by admin from the international instance. The new template has the following details: Version number: 35\nVersion description: Testing Template\nNumber of indicators: 5	admin	New Version Published.	2023-03-31 12:39:56.533
6	2023-04-03 11:13:44.071	A new template has been published by David from the international instance. The new template has the following details: Version number: 36\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-03 11:13:44.071
7	2023-04-03 11:19:17.922	A new template has been published by David from the international instance. The new template has the following details: Version number: 37\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-03 11:19:17.922
8	2023-04-03 11:33:09.936	A new template has been published by David from the international instance. The new template has the following details: Version number: 38\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-03 11:33:09.936
9	2023-04-03 11:44:03.546	A new template has been published by David from the international instance. The new template has the following details: Version number: 39\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-03 11:44:03.546
10	2023-04-03 11:54:32.47	A new template has been published by David from the international instance. The new template has the following details: Version number: 40\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-03 11:54:32.47
11	2023-04-03 11:56:31.694	A new template has been published by David from the international instance. The new template has the following details: Version number: 41\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-03 11:56:31.694
12	2023-04-03 12:15:43.076	A new template has been published by David from the international instance. The new template has the following details: Version number: 42\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-03 12:15:43.076
13	2023-04-03 12:18:41.492	A new template has been published by David from the international instance. The new template has the following details: Version number: 43\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-03 12:18:41.492
14	2023-04-03 12:22:09.149	A new template has been published by David from the international instance. The new template has the following details: Version number: 44\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-03 12:22:09.149
15	2023-04-03 12:26:48.637	A new template has been published by David from the international instance. The new template has the following details: Version number: 45\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-03 12:26:48.637
16	2023-04-03 12:30:23.225	A new template has been published by David from the international instance. The new template has the following details: Version number: 46\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-03 12:30:23.225
17	2023-04-03 12:37:26.328	A new template has been published by David from the international instance. The new template has the following details: Version number: 47\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-03 12:37:26.328
18	2023-04-03 12:52:29.412	A new template has been published by David from the international instance. The new template has the following details: Version number: 48\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-03 12:52:29.412
19	2023-04-03 14:41:58.343	A new template has been published by David from the international instance. The new template has the following details: Version number: 49\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-03 14:41:58.343
20	2023-04-03 15:14:30.826	A new template has been published by David from the international instance. The new template has the following details: Version number: 50\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-03 15:14:30.826
21	2023-04-03 16:12:28.169	A new template has been published by David from the international instance. The new template has the following details: Version number: 51\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-03 16:12:28.169
22	2023-04-04 00:07:34.085	A new template has been published by David from the international instance. The new template has the following details: Version number: 52\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-04 00:07:34.085
23	2023-04-05 07:39:53.176	A new template has been published by David from the international instance. The new template has the following details: Version number: 53\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-05 07:39:53.176
24	2023-04-05 09:09:36.581	A new template has been published by admin from the international instance. The new template has the following details: Version number: 54\nVersion description: test\nNumber of indicators: 2	admin	New Version Published.	2023-04-05 09:09:36.581
25	2023-04-06 05:51:34.272	A new template has been published by admin from the international instance. The new template has the following details: Version number: 55\nVersion description: Publish 6\nNumber of indicators: 6	admin	New Version Published.	2023-04-06 05:51:34.272
26	2023-04-06 13:42:25.073	A new template has been published by admin from the international instance. The new template has the following details: Version number: 56\nVersion description: Test latest\nNumber of indicators: 5	admin	New Version Published.	2023-04-06 13:42:25.073
27	2023-04-11 06:25:48.821	A new template has been published by admin from the international instance. The new template has the following details: Version number: 57\nVersion description: Test Tuesday\nNumber of indicators: 3	admin	New Version Published.	2023-04-11 06:25:48.821
233	2023-05-22 13:07:26.128	Hello	‎pssnotifications23@gmail.com	Hello	2023-05-22 13:07:26.129
234	2023-05-22 13:07:58.567	Hello	‎pssinsights@aol.com	Hello	2023-05-22 13:07:58.567
28	2023-04-11 08:07:56.466	A new template has been published by admin from the international instance. The new template has the following details: Version number: 58\nVersion description: P001\nNumber of indicators: 2	admin	New Version Published.	2023-04-11 08:07:56.466
29	2023-04-11 09:30:54.85	A new template has been published by admin from the international instance. The new template has the following details: Version number: 59\nVersion description: Latest 001\nNumber of indicators: 1	admin	New Version Published.	2023-04-11 09:30:54.85
30	2023-04-11 11:25:28.112	A new template has been published by string from the international instance. The new template has the following details: Version number: 60\nVersion description: string\nNumber of indicators: 1	string	New Version Published.	2023-04-11 11:25:28.112
31	2023-04-11 11:50:12.545	A new template has been published by admin from the international instance. The new template has the following details: Version number: 61\nVersion description: Nelly Test \nNumber of indicators: 10	admin	New Version Published.	2023-04-11 11:50:12.545
32	2023-04-11 12:41:06.802	A new template has been published by admin from the international instance. The new template has the following details: Version number: 62\nVersion description: Clients Meeting Test \nNumber of indicators: 8	admin	New Version Published.	2023-04-11 12:41:06.802
33	2023-04-13 13:17:15.236	A new template has been published by admin from the international instance. The new template has the following details: Version number: 63\nVersion description: Thursday Post Client Call Test\nNumber of indicators: 8	admin	New Version Published.	2023-04-13 13:17:15.236
34	2023-04-14 06:23:51.099	A new template has been published by string from the international instance. The new template has the following details: Version number: 64\nVersion description: string\nNumber of indicators: 1	string	New Version Published.	2023-04-14 06:23:51.099
35	2023-04-16 09:44:41.391	message	admin	title	2023-04-16 09:44:41.391
36	2023-04-16 14:57:08.356	A new template has been published by David from the international instance. The new template has the following details: Version number: 65\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-16 14:57:08.356
37	2023-04-16 15:07:13.143	A new template has been published by David from the international instance. The new template has the following details: Version number: 66\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-16 15:07:13.143
38	2023-04-16 16:17:14.173	A new template has been published by David from the international instance. The new template has the following details: Version number: 69\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-16 16:17:14.173
39	2023-04-16 16:31:09.44	A new template has been published by David from the international instance. The new template has the following details: Version number: 70\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-16 16:31:09.44
40	2023-04-16 16:41:39.352	A new template has been published by David from the international instance. The new template has the following details: Version number: 71\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-16 16:41:39.352
41	2023-04-16 16:51:29.043	A new template has been published by David from the international instance. The new template has the following details: Version number: 72\nVersion description: This is a versionDescription\nNumber of indicators: 5	David	New Version Published.	2023-04-16 16:51:29.043
42	2023-04-16 16:57:36.459	A new template has been published by David from the international instance. The new template has the following details: Version number: 73\nVersion description: This is a versionDescription\n\nNumber of indicators: 5	David	New Version Published.	2023-04-16 16:57:36.459
43	2023-04-17 07:10:34.694	A new template has been published by admin from the international instance. The new template has the following details: Version number: 74\nVersion description: Rechecking the workflow Monday morning Nelly\nNumber of indicators: 8	admin	New Version Published.	2023-04-17 07:10:34.694
44	2023-04-17 13:54:38.809	A new template has been published by David from the international instance. The new template has the following details: Version number: 75\nVersion description: This is a versionDescription\n\nNumber of indicators: 1	David	New Version Published.	2023-04-17 13:54:38.809
45	2023-04-17 14:08:36.889	A new template has been published by David from the international instance. The new template has the following details: Version number: 76\nVersion description: This is a versionDescription\n\nNumber of indicators: 1	David	New Version Published.	2023-04-17 14:08:36.889
46	2023-04-17 11:46:53.12	A new template has been published by admin from the international instance. The new template has the following details: Version number: 77\nVersion description: Test Mon April 2023\n\nNumber of indicators: 4	admin	New Version Published.	2023-04-17 11:46:53.12
47	2023-04-18 05:41:59.88	A new template has been published by David from the international instance. The new template has the following details: Version number: 78\nVersion description: This is a versionDescription\n\nNumber of indicators: 3	David	New Version Published.	2023-04-18 05:41:59.88
48	2023-04-18 07:59:31.211	A new template has been published by admin from the international instance. The new template has the following details: Version number: 79\nVersion description: Checking Notifications Nelly \n\nNumber of indicators: 3	admin	New Version Published.	2023-04-18 07:59:31.211
49	2023-04-18 11:12:21.531	A new template has been published by David from the international instance. The new template has the following details: Version number: 80\nVersion description: This is a versionDescription\n\nNumber of indicators: 2	David	New Version Published.	2023-04-18 11:12:21.531
50	2023-04-18 11:17:03.743	A new template has been published by David from the international instance. The new template has the following details: Version number: 81\nVersion description: This is a versionDescription\n\nNumber of indicators: 2	David	New Version Published.	2023-04-18 11:17:03.743
51	2023-04-18 11:31:55.644	A new template has been published by David from the international instance. The new template has the following details: Version description: This is a versionDescription\n\nNumber of indicators: 2	David	New Version Published.	2023-04-18 11:31:55.644
52	2023-04-18 12:24:22.27	A new template has been published by David from the international instance. The new template has the following details: Version description: This is a versionDescription\n\nNumber of indicators: 2	David	New Version Published.	2023-04-18 12:24:22.27
53	2023-04-18 12:29:33.265	A new template has been published by David from the international instance. The new template has the following details: Version description: This is a versionDescription\n\nNumber of indicators: 2	David	New Version Published.	2023-04-18 12:29:33.265
54	2023-04-18 12:49:09.833	A new template has been published by David from the international instance. The new template has the following details: Version description: This is a versionDescription\n\nNumber of indicators: 2	David	New Version Published.	2023-04-18 12:49:09.833
55	2023-04-18 11:10:45.08	A new template has been published by admin from the international instance. The new template has the following details: Version number: 86\nVersion description: Nelly Testing \n\nNumber of indicators: 8	admin	New Version Published.	2023-04-18 11:10:45.08
235	2023-05-22 13:09:18.77	Hello	pssinsights@aol.com	Hello	2023-05-22 13:09:18.77
56	2023-04-18 11:42:33.943	A new template has been published by admin from the international instance. The new template has the following details: Version number: 87\nVersion description: Muyundo Test Edit\n\nNumber of indicators: 28	admin	New Version Published.	2023-04-18 11:42:33.943
57	2023-04-18 12:01:25.153	A new template has been published by admin from the international instance. The new template has the following details: Version number: 88\nVersion description: ttttttt\n\nNumber of indicators: 2	admin	New Version Published.	2023-04-18 12:01:25.153
58	2023-04-20 05:17:23.556	A new template has been published by David from the international instance. The new template has the following details: Version description: This is an updated versionDescription2 for published by\n\nNumber of indicators: 1	David	New Version Published.	2023-04-20 05:17:23.556
59	2023-04-20 05:18:23.132	A new template has been published by David from the international instance. The new template has the following details: Version description: This is a versionDescription Checking publishedBy\n\nNumber of indicators: 1	David	New Version Published.	2023-04-20 05:18:23.132
60	2023-04-20 02:58:29.592	Test message	admin	Test	2023-04-20 02:58:29.592
61	2023-04-20 03:01:13.763	Testing	admin	Test	2023-04-20 03:01:13.763
62	2023-04-20 03:02:10.69	Testing 2	admin	Test 2	2023-04-20 03:02:10.69
63	2023-04-20 03:03:35.164	test	admin	Notification	2023-04-20 03:03:35.164
64	2023-04-20 03:09:13.723	string	string	string	2023-04-20 03:09:13.723
65	2023-04-20 04:14:02.569	test	admin	Testing	2023-04-20 04:14:02.569
66	2023-04-20 06:12:19.099	This is a test	admin	This is a test	2023-04-20 06:12:19.099
67	2023-04-20 06:13:10.224	You are invited 	admin	COMMUNITY CONFERENCE IN MUMBAI	2023-04-20 06:13:10.224
68	2023-04-20 06:15:24.672	Yooooooooooooo	admin	PSS to the world	2023-04-20 06:15:24.672
69	2023-04-20 06:16:11.12	YOOOOOOOOOOOO	admin	PSS to the world	2023-04-20 06:16:11.12
70	2023-04-20 06:16:13.839	YOOOOOOOOOOOO	admin	PSS to the world	2023-04-20 06:16:13.839
71	2023-04-20 06:18:27.19	Good job team	admin	PSS ARISING 	2023-04-20 06:18:27.19
72	2023-04-20 06:21:17.916	This is a test	admin	Test	2023-04-20 06:21:17.916
73	2023-04-20 06:22:36.258	This is a test by Muyundo	admin	Test	2023-04-20 06:22:36.258
74	2023-04-20 06:22:46.072	HOLAAAA	admin	HOLAAAA	2023-04-20 06:22:46.072
75	2023-04-20 06:22:46.442	HOLAAAA	admin	HOLAAAA	2023-04-20 06:22:46.442
76	2023-04-20 06:25:07.326	This is a test by Muyundo	admin	Test	2023-04-20 06:25:07.326
77	2023-04-20 06:26:08.131	This is a test by muyundo	admin	Test	2023-04-20 06:26:08.131
78	2023-04-20 06:29:48.583	This is to test email broadcast	admin	Test	2023-04-20 06:29:48.583
79	2023-04-20 06:32:57.043	A new template has been published by admin from the international instance. The new template has the following details: Version description: NEW DAY NEW VERSION NEW NEW\n\nNumber of indicators: 5	admin	New Version Published.	2023-04-20 06:32:57.043
80	2023-04-20 06:34:37.464	A new template has been published by admin from the international instance. The new template has the following details: Version description: New Day New Version by Nelly\n\nNumber of indicators: 2	admin	New Version Published.	2023-04-20 06:34:37.464
81	2023-04-20 07:06:19.567	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test  Muyundo\n\nNumber of indicators: 34	admin	New Version Published.	2023-04-20 07:06:19.567
82	2023-04-20 10:11:27.06	A new template has been published by David from the international instance. The new template has the following details: Version description: Testing\n\nNumber of indicators: 1	David	New Version Published.	2023-04-20 10:11:27.06
83	2023-04-20 07:15:51.047	A new template has been published by admin from the international instance. The new template has the following details: Version description: V Latest\n\nNumber of indicators: 1	admin	New Version Published.	2023-04-20 07:15:51.047
84	2023-04-20 10:16:08.834	A new template has been published by David from the international instance. The new template has the following details: Version description: Testing\n\nNumber of indicators: 1	David	New Version Published.	2023-04-20 10:16:08.834
85	2023-04-20 10:18:12.201	A new template has been published by David from the international instance. The new template has the following details: Version description: Testing\n\nNumber of indicators: 1	David	New Version Published.	2023-04-20 10:18:12.201
86	2023-04-20 10:21:29.651	A new template has been published by David from the international instance. The new template has the following details: Version description: Testing\n\nNumber of indicators: 1	David	New Version Published.	2023-04-20 10:21:29.651
87	2023-04-20 10:26:32.865	A new template has been published by David from the international instance. The new template has the following details: Version description: Testing\n\nNumber of indicators: 1	David	New Version Published.	2023-04-20 10:26:32.865
88	2023-04-20 10:51:58.62	A new template has been published by David from the international instance. The new template has the following details: Version description: Testing\n\nNumber of indicators: 1	David	New Version Published.	2023-04-20 10:51:58.62
89	2023-04-20 10:53:36.524	A new template has been published by David from the international instance. The new template has the following details: Version description: Testing\n\nNumber of indicators: 1	David	New Version Published.	2023-04-20 10:53:36.524
90	2023-04-20 10:55:13.309	A new template has been published by David from the international instance. The new template has the following details: Version description: Testing\n\nNumber of indicators: 1	David	New Version Published.	2023-04-20 10:55:13.309
91	2023-04-20 11:01:05.151	A new template has been published by David from the international instance. The new template has the following details: Version description: Testing\n\nNumber of indicators: 1	David	New Version Published.	2023-04-20 11:01:05.151
92	2023-04-20 11:04:04.247	A new template has been published by David from the international instance. The new template has the following details: Version description: Testing\n\nNumber of indicators: 1	David	New Version Published.	2023-04-20 11:04:04.247
93	2023-04-20 11:06:37.335	A new template has been published by David from the international instance. The new template has the following details: Version description: Testing\n\nNumber of indicators: 1	David	New Version Published.	2023-04-20 11:06:37.335
94	2023-04-20 11:13:02.809	A new template has been published by David from the international instance. The new template has the following details: Version description: Testing\n\nNumber of indicators: 1	David	New Version Published.	2023-04-20 11:13:02.809
95	2023-04-20 08:15:57.531	This is a test by Muyundo	admin	This is a test by Muyundo	2023-04-20 08:15:57.531
96	2023-04-20 08:38:40.223	A new template has been published by David from the international instance. The new template has the following details: Version description: This is a versionDescription\n\nNumber of indicators: 2	David	New Version Published.	2023-04-20 08:38:40.223
97	2023-04-20 08:39:39.208	A new template has been published by admin from the international instance. The new template has the following details: Version description: This is a new test\n\nNumber of indicators: 2	admin	New Version Published.	2023-04-20 08:39:39.208
98	2023-04-20 08:39:49.522	A new template has been published by admin from the international instance. The new template has the following details: Version description: What will it take to transform Africa's pharma industry? Data \n\nNumber of indicators: 8	admin	New Version Published.	2023-04-20 08:39:49.522
99	2023-04-20 08:40:08.71	A new template has been published by admin from the international instance. The new template has the following details: Version description: This is a new test for 20April 11:40\n\nNumber of indicators: 2	admin	New Version Published.	2023-04-20 08:40:08.71
100	2023-04-20 11:09:30.318	Test by Muyundo	admin	Test	2023-04-20 11:09:30.318
101	2023-04-20 11:16:35.588	A new template has been published by admin from the international instance. The new template has the following details: Version description: Edit test by Muyundo\n\nNumber of indicators: 38	admin	New Version Published.	2023-04-20 11:16:35.588
102	2023-04-20 11:44:07.151	A new template has been published by admin from the international instance. The new template has the following details: Version description: A great afternoon to test a system\n\nNumber of indicators: 4	admin	New Version Published.	2023-04-20 11:44:07.151
103	2023-04-20 11:52:31.113	Go big or Go home\nVersion 2.0 is coming	admin	Hey Pss Subscribers whassup!	2023-04-20 11:52:31.113
104	2023-04-20 11:53:25.162	Uganda	admin	yooo nelly 	2023-04-20 11:53:25.162
105	2023-04-20 11:53:28.228	Uganda	admin	yooo nelly 	2023-04-20 11:53:28.228
106	2023-04-20 11:55:05.397	yo party people	admin	to check if braadcast to subscribers is working 	2023-04-20 11:55:05.397
107	2023-04-20 12:39:03.595	A new template has been published by admin from the international instance. The new template has the following details: Version description: New version Client Test\n\nNumber of indicators: 7	admin	New Version Published.	2023-04-20 12:39:03.595
108	2023-04-20 13:00:37.173	hhhhhhhhhhhhhhhhhhhhh	admin	ADMINS take note new version	2023-04-20 13:00:37.173
109	2023-04-24 08:08:56.847	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test Taib\n\nNumber of indicators: 8	admin	New Version Published.	2023-04-24 08:08:56.847
110	2023-04-24 08:15:10.164	Document	admin	Document	2023-04-24 08:15:10.164
111	2023-04-24 08:16:46.022	test	admin	test	2023-04-24 08:16:46.022
112	2023-04-24 14:37:45.396	Good evening. This is a test.	admin	Test by Muyundo	2023-04-24 14:37:45.396
113	2023-04-24 19:11:18.36	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test master indicator template\n\nNumber of indicators: 4	admin	New Version Published.	2023-04-24 19:11:18.36
114	2023-04-24 19:20:36.909	A new template has been published by admin from the international instance. The new template has the following details: Version description: bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb\n\nNumber of indicators: 1	admin	New Version Published.	2023-04-24 19:20:36.909
115	2023-04-24 19:21:11.061	bbbbbbbbbbbbbbbbbb	admin	mko wapi	2023-04-24 19:21:11.061
116	2023-04-26 13:47:37.823	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test Edit by Muyundo\n\nNumber of indicators: 37	admin	New Version Published.	2023-04-26 13:47:37.823
117	2023-04-27 05:40:27.582	A new template has been published by admin from the international instance. The new template has the following details: Version description: Muyundo Test edit\n\nNumber of indicators: 27	admin	New Version Published.	2023-04-27 05:40:27.582
118	2023-04-27 05:54:28.281	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test Muyundo Edit\n\nNumber of indicators: 31	admin	New Version Published.	2023-04-27 05:54:28.281
119	2023-04-27 05:58:20.392	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test indicator publication\n\nNumber of indicators: 17	admin	New Version Published.	2023-04-27 05:58:20.392
120	2023-04-27 06:33:43.243	A new template has been published by admin from the international instance. The new template has the following details: Version description: test muyundo\n\nNumber of indicators: 10	admin	New Version Published.	2023-04-27 06:33:43.243
121	2023-04-28 09:39:35.974	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test Demo Edit\n\nNumber of indicators: 24	admin	New Version Published.	2023-04-28 09:39:35.974
122	2023-04-28 10:29:15.239	Ths is a test	admin	Test	2023-04-28 10:29:15.239
123	2023-04-28 10:30:31.676	Test	admin	Test	2023-04-28 10:30:31.676
124	2023-05-02 06:26:51.554	A new template has been published by admin from the international instance. The new template has the following details: Version description: Orientation template\n\nNumber of indicators: 10	admin	New Version Published.	2023-05-02 06:26:51.554
125	2023-05-03 05:42:07.622	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test Master Indicator Template\n\nNumber of indicators: 3	admin	New Version Published.	2023-05-03 05:42:07.622
126	2023-05-03 08:40:23.496	The international admin has published a new template.	admin	New Template notification.	2023-05-03 08:40:23.496
127	2023-05-03 12:01:19.316	A new template has been published by admin from the international instance. The new template has the following details: Version description: End to End test QA\n\nNumber of indicators: 35	admin	New Version Published.	2023-05-03 12:01:19.317
128	2023-05-03 14:36:31.61	A new template has been published by admin from the international instance. The new template has the following details: Version description: Testing\n\nNumber of indicators: 7	admin	New Version Published.	2023-05-03 14:36:31.61
129	2023-05-04 05:35:52.31	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test QA\n\nNumber of indicators: 29	admin	New Version Published.	2023-05-04 05:35:52.31
130	2023-05-04 06:11:28.52	This is a test by Quality Assurance	admin	Test by QA	2023-05-04 06:11:28.52
131	2023-05-04 06:13:55.444	This is a test by the QA team	admin	Test Notifications	2023-05-04 06:13:55.444
132	2023-05-04 06:13:55.71	This is a test by the QA team	admin	Test Notifications	2023-05-04 06:13:55.71
133	2023-05-04 12:27:51.12	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test QA\n\nNumber of indicators: 16	admin	New Version Published.	2023-05-04 12:27:51.12
134	2023-05-04 12:29:00.485	Test QA	admin	Test	2023-05-04 12:29:00.485
135	2023-05-05 06:44:57.381	A new template has been published by admin from the international instance. The new template has the following details: Version description: Master Indicator Template- Documentation\n\nNumber of indicators: 2	admin	New Version Published.	2023-05-05 06:44:57.381
136	2023-05-09 11:06:31.713	A new template has been published by admin from the international instance. The new template has the following details: Version description: Devs Demo\n\nNumber of indicators: 23	admin	New Version Published.	2023-05-09 11:06:31.713
137	2023-05-09 12:46:45.124	A new template has been published by admin from the international instance. The new template has the following details: Version description: ttttttttt\n\nNumber of indicators: 2	admin	New Version Published.	2023-05-09 12:46:45.124
138	2023-05-10 12:28:49.103	A new template has been published by admin from the international instance. The new template has the following details: Version description: testing\n\nNumber of indicators: 2	admin	New Version Published.	2023-05-10 12:28:49.103
139	2023-05-10 12:52:17.656	A new template has been published by admin from the international instance. The new template has the following details: Version description: testing clarification\n\nNumber of indicators: 6	admin	New Version Published.	2023-05-10 12:52:17.656
140	2023-05-10 12:53:29.427	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test clarification 2\n\nNumber of indicators: 4	admin	New Version Published.	2023-05-10 12:53:29.427
141	2023-05-10 14:10:28.181	A new template has been published by admin from the international instance. The new template has the following details: Version description: Natalie\n\nNumber of indicators: 2	admin	New Version Published.	2023-05-10 14:10:28.181
142	2023-05-12 04:47:42.363	A new template has been published by admin from the international instance. The new template has the following details: Version description: This is a test to publish a template\n\nNumber of indicators: 6	admin	New Version Published.	2023-05-12 04:47:42.363
143	2023-05-12 10:00:18.189	test	admin	test	2023-05-12 10:00:18.189
144	2023-05-12 10:00:31.585	A new template has been published by admin from the international instance. The new template has the following details: Version description: test\n\nNumber of indicators: 1	admin	New Version Published.	2023-05-12 10:00:31.585
145	2023-05-12 10:07:31.44	string	string	string	2023-05-12 10:07:31.44
146	2023-05-12 10:12:34.44	string	string	string	2023-05-12 10:12:34.44
147	2023-05-12 11:13:08.332	A new template has been published by admin from the international instance. The new template has the following details: Version description: Testing\n\nNumber of indicators: 4	admin	New Version Published.	2023-05-12 11:13:08.332
148	2023-05-12 14:20:07.323	Hello	nelsonkimaiga@aol.com	Hello	2023-05-12 14:20:07.323
149	2023-05-12 14:23:45.908	Hello	nelsonkimaiga@aol.com	Hello	2023-05-12 14:23:45.908
150	2023-05-12 14:24:51.082	Hello	nelsonkimaiga@aol.com	Hello	2023-05-12 14:24:51.082
151	2023-05-12 14:32:37.156	Hello	nelsonkimaiga@aol.com	Hello	2023-05-12 14:32:37.157
152	2023-05-12 14:34:06.254	Hello	nelsonkimaiga@aol.com	Hello	2023-05-12 14:34:06.254
153	2023-05-12 14:37:03.246	Hello	nelsonkimaiga@aol.com	Hello	2023-05-12 14:37:03.246
154	2023-05-12 14:39:44.58	Hello	nelsonkimaiga@aol.com	Hello	2023-05-12 14:39:44.58
155	2023-05-12 14:40:25.765	Hello	nelsonkimaiga@aol.com	Hello	2023-05-12 14:40:25.765
156	2023-05-12 14:42:41.257	Hello	nelsonkimaiga@aol.com	Hello	2023-05-12 14:42:41.257
157	2023-05-12 14:44:32.402	Hello	nelsonkimaiga@aol.com	Hello	2023-05-12 14:44:32.402
158	2023-05-12 14:49:00.923	Hello	nelsonkimaiga@aol.com	Hello	2023-05-12 14:49:00.923
159	2023-05-12 14:52:31.154	Hello	nelsonkimaiga@aol.com	Hello	2023-05-12 14:52:31.154
160	2023-05-12 14:59:59.705	Hello	nelsonkimaiga@aol.com	Hello	2023-05-12 14:59:59.705
161	2023-05-12 15:04:17.493	Hello	nelsonkimaiga@aol.com	Hello	2023-05-12 15:04:17.493
162	2023-05-12 12:07:04.801	test	admin	Test	2023-05-12 12:07:04.801
163	2023-05-12 14:36:48.331	A new template has been published by admin from the international instance. The new template has the following details: Version description: New Version Muyundo\n\nNumber of indicators: 22	admin	New Version Published.	2023-05-12 14:36:48.331
164	2023-05-12 17:38:58.325	Hello	nelsonkimaiga@aol.com	Hello	2023-05-12 17:38:58.325
165	2023-05-12 15:06:36.795	test	admin	test	2023-05-12 15:06:36.795
166	2023-05-13 17:08:52.244	test	admin	test	2023-05-13 17:08:52.244
167	2023-05-13 17:09:46.001	test	admin	test	2023-05-13 17:09:46.001
168	2023-05-13 17:36:41.776	A new template has been published by admin from the international instance. The new template has the following details: Version description: test\n\nNumber of indicators: 3	admin	New Version Published.	2023-05-13 17:36:41.776
169	2023-05-13 17:39:50.075	A new template has been published by admin from the international instance. The new template has the following details: Version description: test muyundo\n\nNumber of indicators: 20	admin	New Version Published.	2023-05-13 17:39:50.075
170	2023-05-14 19:33:19.129	Hello	nelsonkimaiga@aol.com	Hello	2023-05-14 19:33:19.129
171	2023-05-14 19:39:15.62	Hello	nelsonkimaiga@aol.com	Hello	2023-05-14 19:39:15.62
172	2023-05-14 16:44:38.461	Hello World!	nelsonkimaiga@aol.com	Hello World!	2023-05-14 16:44:38.461
173	2023-05-14 19:45:45.083	Hello	nelsonkimaiga@aol.com	Hello	2023-05-14 19:45:45.084
174	2023-05-14 19:53:03.335	Hello	nkimaiga@intellisoftkenya.com	Hello	2023-05-14 19:53:03.335
175	2023-05-15 05:53:16.661	A new template has been published by admin from the international instance. The new template has the following details: Version description: Monday test Nelly\n\nNumber of indicators: 6	admin	New Version Published.	2023-05-15 05:53:16.661
176	2023-05-15 07:16:32.169	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test Case #2\n\nNumber of indicators: 43	admin	New Version Published.	2023-05-15 07:16:32.169
177	2023-05-15 09:13:07.313	This is a test by muyundo	admin	This is a test	2023-05-15 09:13:07.313
178	2023-05-15 09:16:51.691	To test notification broadcast to specific users	admin	Test by Muyundo	2023-05-15 09:16:51.691
179	2023-05-15 11:14:22.856	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Test\n\nNumber of indicators: 28	muyundo	New Version Published.	2023-05-15 11:14:22.856
180	2023-05-15 12:25:49.247	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test UAT\n\nNumber of indicators: 25	admin	New Version Published.	2023-05-15 12:25:49.247
181	2023-05-15 12:56:33.599	A new template has been published by admin from the international instance. The new template has the following details: Version description: Walkthrough with the team\n\nNumber of indicators: 10	admin	New Version Published.	2023-05-15 12:56:33.599
182	2023-05-15 12:57:19.782	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test PA\n\nNumber of indicators: 2	admin	New Version Published.	2023-05-15 12:57:19.782
183	2023-05-15 13:08:33.459	test test	admin	test uat	2023-05-15 13:08:33.459
184	2023-05-15 13:10:22.281	Test Boadcast > Enter emails	admin	test Broadcast	2023-05-15 13:10:22.281
185	2023-05-17 16:05:22.61	A new template has been published by Jane Smith from the international instance. The new template has the following details: Version description: Sample version description\n\nNumber of indicators: 3	Jane Smith	New Version Published.	2023-05-17 16:05:22.61
186	2023-05-17 19:45:16.387	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test_Hafner\n\nNumber of indicators: 3	admin	New Version Published.	2023-05-17 19:45:16.387
187	2023-05-18 04:44:19.466	Test	admin	Test	2023-05-18 04:44:19.466
188	2023-05-18 04:44:59.758	To test notifications	admin	This is a test by QA	2023-05-18 04:44:59.758
189	2023-05-18 05:06:01.511	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test-Documentation\n\nNumber of indicators: 7	admin	New Version Published.	2023-05-18 05:06:01.511
190	2023-05-18 05:45:51.399	test	admin	test	2023-05-18 05:45:51.399
191	2023-05-18 07:51:45.358	A new template has been published by admin from the international instance. The new template has the following details: Version description: QA test\n\nNumber of indicators: 23	admin	New Version Published.	2023-05-18 07:51:45.358
192	2023-05-18 08:22:20.819	A new template has been published by admin from the international instance. The new template has the following details: Version description: Indicator Test #1 (international)\n\nNumber of indicators: 43	admin	New Version Published.	2023-05-18 08:22:20.819
193	2023-05-18 08:42:46.951	This is an email broadcast	admin	Email Broadcast	2023-05-18 08:42:46.951
194	2023-05-18 08:47:50.99	This is an email broadcast that caters to both subs and non subs	admin	Email broadcast	2023-05-18 08:47:50.99
195	2023-05-18 08:52:24.809	This is an example	admin	Email Broadcast	2023-05-18 08:52:24.809
196	2023-05-18 11:08:23.077	test	admin	Test	2023-05-18 11:08:23.077
197	2023-05-18 11:09:11.437	test	admin	Test	2023-05-18 11:09:11.437
198	2023-05-19 04:06:59.751	A new template has been published by admin from the international instance. The new template has the following details: Version description: QA test\n\nNumber of indicators: 7	admin	New Version Published.	2023-05-19 04:06:59.751
199	2023-05-19 04:10:11.517	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test Load\n\nNumber of indicators: 4	admin	New Version Published.	2023-05-19 04:10:11.517
200	2023-05-19 04:25:19.788	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test Load\n\nNumber of indicators: 1	admin	New Version Published.	2023-05-19 04:25:19.788
201	2023-05-19 04:26:20.673	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test Load\n\nNumber of indicators: 5	admin	New Version Published.	2023-05-19 04:26:20.673
202	2023-05-19 04:29:05.909	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test Load\n\nNumber of indicators: 5	admin	New Version Published.	2023-05-19 04:29:05.909
203	2023-05-19 04:32:28.532	A new template has been published by admin from the international instance. The new template has the following details: Version description: test template\n\nNumber of indicators: 3	admin	New Version Published.	2023-05-19 04:32:28.532
204	2023-05-19 04:35:45.977	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test 3 \n\nNumber of indicators: 4	admin	New Version Published.	2023-05-19 04:35:45.977
205	2023-05-19 04:43:48.737	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test Load\n\nNumber of indicators: 3	admin	New Version Published.	2023-05-19 04:43:48.737
206	2023-05-19 04:45:22.213	A new template has been published by admin from the international instance. The new template has the following details: Version description: test load\n\nNumber of indicators: 7	admin	New Version Published.	2023-05-19 04:45:22.213
207	2023-05-19 04:50:48.166	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test load\n\nNumber of indicators: 4	admin	New Version Published.	2023-05-19 04:50:48.167
208	2023-05-19 05:01:55.869	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test Load1\n\nNumber of indicators: 8	admin	New Version Published.	2023-05-19 05:01:55.869
209	2023-05-19 05:02:35.443	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test Load2\n\nNumber of indicators: 7	admin	New Version Published.	2023-05-19 05:02:35.443
210	2023-05-19 05:04:53.99	A new template has been published by admin from the international instance. The new template has the following details: Version description: TestLoad3\n\nNumber of indicators: 17	admin	New Version Published.	2023-05-19 05:04:53.99
211	2023-05-19 05:05:05.217	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test 4 \n\nNumber of indicators: 8	admin	New Version Published.	2023-05-19 05:05:05.217
212	2023-05-19 05:12:27.591	A new template has been published by admin from the international instance. The new template has the following details: Version description: testLoad\n\nNumber of indicators: 6	admin	New Version Published.	2023-05-19 05:12:27.591
213	2023-05-19 05:13:47.062	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: TestLoad\n\nNumber of indicators: 10	muyundo	New Version Published.	2023-05-19 05:13:47.062
214	2023-05-19 05:48:38.02	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Testload6\n\nNumber of indicators: 11	muyundo	New Version Published.	2023-05-19 05:48:38.02
215	2023-05-19 07:27:01.842	A new template has been published by user1 from the international instance. The new template has the following details: Version description: to test the tool\n\n\nNumber of indicators: 6	user1	New Version Published.	2023-05-19 07:27:01.842
216	2023-05-19 07:51:03.58	Test 1 : Institutional development plan to be finalized	admin	Test 1 Regulatory System Upgrade	2023-05-19 07:51:03.58
217	2023-05-19 07:51:26.177	PSS TOOL	admin	Pharmacist and Health Supply chain M&E specialist	2023-05-19 07:51:26.177
218	2023-05-19 07:55:35.283	test 2	admin	test 1	2023-05-19 07:55:35.283
219	2023-05-19 08:58:08.797	Test email	admin	Test email	2023-05-19 08:58:08.797
220	2023-05-19 08:59:54.936	Test	admin	Test	2023-05-19 08:59:54.936
221	2023-05-22 06:02:13.737	A new template has been published by admin from the international instance. The new template has the following details: Version description: Load test\n\nNumber of indicators: 30	admin	New Version Published.	2023-05-22 06:02:13.737
222	2023-05-22 06:12:54.746	A new template has been published by admin from the international instance. The new template has the following details: Version description: testload\n\nNumber of indicators: 21	admin	New Version Published.	2023-05-22 06:12:54.746
223	2023-05-22 06:22:10.497	A new template has been published by admin from the international instance. The new template has the following details: Version description: testload\n\nNumber of indicators: 7	admin	New Version Published.	2023-05-22 06:22:10.497
224	2023-05-22 06:24:59.654	A new template has been published by admin from the international instance. The new template has the following details: Version description: testload\n\nNumber of indicators: 21	admin	New Version Published.	2023-05-22 06:24:59.654
225	2023-05-22 06:29:54.8	A new template has been published by admin from the international instance. The new template has the following details: Version description: test\n\nNumber of indicators: 4	admin	New Version Published.	2023-05-22 06:29:54.8
226	2023-05-22 06:39:31.382	A new template has been published by admin from the international instance. The new template has the following details: Version description: test\n\nNumber of indicators: 9	admin	New Version Published.	2023-05-22 06:39:31.382
227	2023-05-22 12:42:51.591	Hello	‎pssinsights@​aol.com	Hello	2023-05-22 12:42:51.591
228	2023-05-22 12:51:18.575	Hello	‎pssinsights@​aol.com	Hello	2023-05-22 12:51:18.575
229	2023-05-22 12:52:14.195	Hello	‎pssinsights@​aol.com	Hello	2023-05-22 12:52:14.195
230	2023-05-22 12:59:25.756	Hello	‎pssinsights@​aol.com	Hello	2023-05-22 12:59:25.756
231	2023-05-22 12:59:59.545	Hello	‎pssnotifications23@gmail.com	Hello	2023-05-22 12:59:59.545
232	2023-05-22 13:04:27.862	Hello	‎pssnotifications23@gmail.com	Hello	2023-05-22 13:04:27.862
236	2023-05-22 11:26:52.67	A new template has been published by admin from the international instance. The new template has the following details: Version description: test1\n\nNumber of indicators: 12	admin	New Version Published.	2023-05-22 11:26:52.67
237	2023-05-22 11:27:31.258	test	admin	test	2023-05-22 11:27:31.258
238	2023-05-22 11:45:26.56	test	admin	test	2023-05-22 11:45:26.56
239	2023-05-22 14:47:37.031	Hello	‎pssnotifications23@gmail.com	Hello	2023-05-22 14:47:37.031
240	2023-05-22 14:49:07.873	Hello	‎pssnotifications23@gmail.com	Hello	2023-05-22 14:49:07.873
241	2023-05-22 11:50:38.808	This is a test by Q A	admin	Test	2023-05-22 11:50:38.808
242	2023-05-22 11:50:54.811	test	admin	test	2023-05-22 11:50:54.811
243	2023-05-22 11:55:06.466	test	admin	test	2023-05-22 11:55:06.466
244	2023-05-22 14:57:23.477	Test	‎pssnotifications23@gmail.com	Test	2023-05-22 14:57:23.477
245	2023-05-22 12:27:09.312	A new template has been published by user1 from the international instance. The new template has the following details: Version description: Trial 1 to add a new version\n\nNumber of indicators: 5	user1	New Version Published.	2023-05-22 12:27:09.312
246	2023-05-22 12:28:43.746	A new template has been published by user5 from the international instance. The new template has the following details: Version description: Test_LH_May 22\n\nNumber of indicators: 4	user5	New Version Published.	2023-05-22 12:28:43.746
247	2023-05-22 12:35:22.315	trial email broadcast notifications	admin	Test 1 on 22 May	2023-05-22 12:35:22.315
248	2023-05-22 12:35:24.926	Testing	admin	May 22 test_LH	2023-05-22 12:35:24.926
249	2023-05-22 12:37:16.11	trial run for email notifications	admin	test -1 for trial notifications	2023-05-22 12:37:16.11
250	2023-05-22 12:38:22.077	hi	admin	test	2023-05-22 12:38:22.077
251	2023-05-23 06:35:36.641	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test by QA\n\nNumber of indicators: 9	admin	New Version Published.	2023-05-23 06:35:36.641
252	2023-05-23 06:52:58.796	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test by QA\n\nNumber of indicators: 12	admin	New Version Published.	2023-05-23 06:52:58.796
253	2023-05-25 04:08:51.449	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test QA\n\nNumber of indicators: 12	admin	New Version Published.	2023-05-25 04:08:51.449
254	2023-05-25 04:14:34.429	Thank you for PSS	admin	Test	2023-05-25 04:14:34.429
255	2023-05-25 04:15:39.256	This is a test by Q.A team	admin	Test	2023-05-25 04:15:39.256
256	2023-05-25 11:31:55.001	This is a broadcast test by the QA. Ignore the message	admin	Test	2023-05-25 11:31:55.001
257	2023-05-26 04:59:24.34	This is a notification broadcast	admin	A broadcast	2023-05-26 04:59:24.34
258	2023-05-26 05:41:27.98	A new template has been published by admin from the international instance. The new template has the following details: Version description: New Test\n\nNumber of indicators: 14	admin	New Version Published.	2023-05-26 05:41:27.98
259	2023-05-26 05:46:41.294	There will be a new template published and accessible by end of this month.	admin	New Template	2023-05-26 05:46:41.294
260	2023-05-26 05:46:59.666	A new template has been published by admin from the international instance. The new template has the following details: Version description: new template test\n\nNumber of indicators: 4	admin	New Version Published.	2023-05-26 05:46:59.666
261	2023-05-29 01:24:51.672	test	admin	test	2023-05-29 01:24:51.672
262	2023-05-29 12:11:56.282	A new template has been published by admin from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	admin	New Version Published.	2023-05-29 12:11:56.282
263	2023-05-29 12:12:58.581	A new template has been published by admin from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	admin	New Version Published.	2023-05-29 12:12:58.581
264	2023-05-29 12:13:57.137	A new template has been published by admin from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	admin	New Version Published.	2023-05-29 12:13:57.137
265	2023-05-29 12:15:16.867	A new template has been published by admin from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	admin	New Version Published.	2023-05-29 12:15:16.867
266	2023-05-29 12:28:40.518	A new template has been published by admin from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	admin	New Version Published.	2023-05-29 12:28:40.518
267	2023-05-29 12:32:17.959	A new template has been published by admin from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	admin	New Version Published.	2023-05-29 12:32:17.959
268	2023-05-29 12:38:43.066	A new template has been published by admin from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	admin	New Version Published.	2023-05-29 12:38:43.066
269	2023-05-29 12:39:36.538	A new template has been published by admin from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	admin	New Version Published.	2023-05-29 12:39:36.538
270	2023-05-29 12:42:29.189	A new template has been published by admin from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	admin	New Version Published.	2023-05-29 12:42:29.189
271	2023-05-30 06:07:17.056	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-05-30 06:07:17.056
272	2023-05-30 09:16:53.479	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-05-30 09:16:53.479
273	2023-05-30 09:19:31.875	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-05-30 09:19:31.875
274	2023-05-30 09:25:11.278	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-05-30 09:25:11.278
275	2023-05-30 09:39:08.94	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-05-30 09:39:08.94
276	2023-05-30 09:53:37.326	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-05-30 09:53:37.326
277	2023-05-30 09:56:01.813	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-05-30 09:56:01.813
278	2023-05-30 10:08:03.329	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-05-30 10:08:03.329
279	2023-05-30 10:14:12.522	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-05-30 10:14:12.522
280	2023-05-30 10:20:51.158	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-05-30 10:20:51.158
281	2023-05-30 11:13:12.761	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-05-30 11:13:12.761
282	2023-05-30 12:26:14.118	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-05-30 12:26:14.118
283	2023-05-30 12:39:39.759	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-05-30 12:39:39.759
284	2023-05-30 12:44:04.582	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-05-30 12:44:04.582
285	2023-05-31 03:55:17.523	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-05-31 03:55:17.523
286	2023-05-31 03:56:02.047	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-05-31 03:56:02.047
287	2023-05-31 04:07:48.159	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script1\n\nNumber of indicators: 20	muyundo	New Version Published.	2023-05-31 04:07:48.159
288	2023-05-31 04:17:30.569	To test broadcast message	admin	This is a broadcast	2023-05-31 04:17:30.569
289	2023-05-31 06:02:08.882	test	admin	test	2023-05-31 06:02:08.882
290	2023-05-31 06:04:54.89	test	admin	test	2023-05-31 06:04:54.89
291	2023-05-31 06:24:25.1	This is an automated test script. Please ignore	admin	Test Script	2023-05-31 06:24:25.1
292	2023-05-31 06:27:33.517	This is an automated test script. Please ignore	admin	Test Script	2023-05-31 06:27:33.517
293	2023-05-31 06:29:13.598	This is an automated test script. Please ignore	admin	Test Script	2023-05-31 06:29:13.598
294	2023-05-31 06:29:56.355	This is an automated test script. Please ignore	admin	Test Script	2023-05-31 06:29:56.355
295	2023-05-31 07:18:23.285	This is an automated test script. Please ignore	admin	Test Script	2023-05-31 07:18:23.285
296	2023-06-05 04:58:10.214	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-05 04:58:10.214
297	2023-06-05 05:29:00.517	This is an automated test script. Please ignore	admin	Test Script	2023-06-05 05:29:00.517
298	2023-06-05 05:40:06.091	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-05 05:40:06.091
299	2023-06-05 11:52:04.617	A new template has been published by admin from the international instance. The new template has the following details: Version description: New Template for 2023\n\nNumber of indicators: 43	admin	New Version Published.	2023-06-05 11:52:04.617
300	2023-06-05 11:56:34.377	A new template has been published by admin from the international instance. The new template has the following details: Version description: New Test\n\nNumber of indicators: 11	admin	New Version Published.	2023-06-05 11:56:34.377
301	2023-06-05 12:14:30.575	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script1\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-05 12:14:30.575
302	2023-06-06 04:07:59.694	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script1\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-06 04:07:59.694
303	2023-06-06 04:09:39	This is an automated test script. Please ignore	admin	Test Script	2023-06-06 04:09:39
304	2023-06-06 04:10:38.769	This is an automated test script. Please ignore	admin	Test Script	2023-06-06 04:10:38.769
305	2023-06-06 04:40:01.13	This is an automated test script. Please ignore	admin	Test Script	2023-06-06 04:40:01.13
306	2023-06-06 05:28:42.925	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script1\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-06 05:28:42.925
307	2023-06-06 05:49:39.738	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script1\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-06 05:49:39.738
308	2023-06-06 05:55:15.56	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Automated script1\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-06 05:55:15.56
309	2023-06-06 07:56:06.255	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-06 07:56:06.255
310	2023-06-06 14:36:06.357	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-06 14:36:06.357
311	2023-06-06 14:37:22.959	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-06 14:37:22.959
312	2023-06-08 11:33:46.785	A new template has been published by admin from the international instance. The new template has the following details: Version description: New Stuff FINAL\n\nNumber of indicators: 43	admin	New Version Published.	2023-06-08 11:33:46.785
313	2023-06-20 13:36:11.269	This is a test. Please ignore	admin	test	2023-06-20 13:36:11.269
314	2023-06-20 13:36:52.879	A new template has been published by admin from the international instance. The new template has the following details: Version description: test\n\nNumber of indicators: 3	admin	New Version Published.	2023-06-20 13:36:52.879
315	2023-06-22 11:33:25.913	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-22 11:33:25.913
316	2023-06-22 11:35:28.926	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-22 11:35:28.926
317	2023-06-22 15:39:01.322	This is an automated test script. Please ignore	admin	Test Script	2023-06-22 15:39:01.322
318	2023-06-23 09:25:18.646	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-23 09:25:18.646
319	2023-06-26 06:56:44.922	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-26 06:56:44.922
320	2023-06-26 06:57:40.193	This is an automated test script. Please ignore	admin	Test Script	2023-06-26 06:57:40.193
321	2023-06-26 06:58:15.184	This is an automated test script. Please ignore	admin	Test Script	2023-06-26 06:58:15.184
322	2023-06-26 09:53:50.291	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-26 09:53:50.291
323	2023-06-27 10:19:41.581	A new template has been published by admin from the international instance. The new template has the following details: Version description: benchmark rendering\n\nNumber of indicators: 2	admin	New Version Published.	2023-06-27 10:19:41.581
324	2023-06-27 16:36:35.153	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: End to End tet\n\nNumber of indicators: 8	muyundo	New Version Published.	2023-06-27 16:36:35.153
325	2023-06-28 06:24:30.382	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test Publish\n\nNumber of indicators: 1	admin	New Version Published.	2023-06-28 06:24:30.382
326	2023-06-28 06:33:14.95	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test types\n\nNumber of indicators: 1	admin	New Version Published.	2023-06-28 06:33:14.95
327	2023-06-28 08:16:54.31	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-28 08:16:54.31
328	2023-06-28 08:35:50.61	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-28 08:35:50.61
329	2023-06-28 12:12:35.158	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-28 12:12:35.158
330	2023-06-28 18:11:58.334	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-28 18:11:58.334
331	2023-06-29 11:01:47.76	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-06-29 11:01:47.76
332	2023-07-03 08:33:34.856	A new template will be published by 10th July 2023	admin	New Template	2023-07-03 08:33:34.856
333	2023-07-03 08:34:10.638	A new template will be published soon	admin	New template	2023-07-03 08:34:10.638
334	2023-07-03 09:34:43.928	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-07-03 09:34:43.928
335	2023-07-03 14:24:04.729	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-07-03 14:24:04.729
336	2023-07-03 17:52:22.72	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-07-03 17:52:22.72
337	2023-07-04 04:22:33.758	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 25	muyundo	New Version Published.	2023-07-04 04:22:33.758
338	2023-07-04 05:38:14.61	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 25	muyundo	New Version Published.	2023-07-04 05:38:14.61
339	2023-07-04 06:50:35.299	A new template has been published by admin from the international instance. The new template has the following details: Version description: Verify Indicators\n\nNumber of indicators: 44	admin	New Version Published.	2023-07-04 06:50:35.299
340	2023-07-04 13:55:09.175	This is an automated test script. Please ignore	admin	Test Script	2023-07-04 13:55:09.175
341	2023-07-04 19:09:17.158	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 25	muyundo	New Version Published.	2023-07-04 19:09:17.158
342	2023-07-04 19:12:20.013	This is an automated test script. Please ignore	admin	Test Script	2023-07-04 19:12:20.013
343	2023-07-04 19:13:34.367	This is an automated test script. Please ignore	admin	Test Script	2023-07-04 19:13:34.367
344	2023-07-04 19:14:44.877	This is an automated test script. Please ignore	admin	Test Script	2023-07-04 19:14:44.877
345	2023-07-05 08:26:15.774	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 25	muyundo	New Version Published.	2023-07-05 08:26:15.774
346	2023-07-05 11:41:16.86	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 25	muyundo	New Version Published.	2023-07-05 11:41:16.86
347	2023-07-05 12:43:32.151	A new template has been published by admin from the international instance. The new template has the following details: Version description: New test\n\nNumber of indicators: 8	admin	New Version Published.	2023-07-05 12:43:32.151
348	2023-07-06 11:15:12.892	A new template has been published by admin from the international instance. The new template has the following details: Version description: test\n\nNumber of indicators: 15	admin	New Version Published.	2023-07-06 11:15:12.892
349	2023-07-06 14:53:04.025	A new template has been published by admin from the international instance. The new template has the following details: Version description: test\n\nNumber of indicators: 10	admin	New Version Published.	2023-07-06 14:53:04.025
350	2023-07-06 16:28:31.406	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 25	muyundo	New Version Published.	2023-07-06 16:28:31.406
351	2023-07-06 17:21:57.977	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test complete\n\nNumber of indicators: 31	admin	New Version Published.	2023-07-06 17:21:57.977
352	2023-07-06 17:30:41.587	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 27	muyundo	New Version Published.	2023-07-06 17:30:41.587
353	2023-07-07 05:40:46.42	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy Data\n\nNumber of indicators: 25	muyundo	New Version Published.	2023-07-07 05:40:46.42
354	2023-07-07 06:05:27.112	A new template has been published by admin from the international instance. The new template has the following details: Version description: test\n\nNumber of indicators: 9	admin	New Version Published.	2023-07-07 06:05:27.112
355	2023-07-07 07:03:50.187	A new template has been published by admin from the international instance. The new template has the following details: Version description: test\n\nNumber of indicators: 8	admin	New Version Published.	2023-07-07 07:03:50.187
356	2023-07-07 07:32:02.387	A new template has been published by admin from the international instance. The new template has the following details: Version description: TESTD DESC\n\nNumber of indicators: 3	admin	New Version Published.	2023-07-07 07:32:02.387
357	2023-07-07 08:11:56.246	A new template has been published by admin from the international instance. The new template has the following details: Version description: PUBLISH AGAIN\n\nNumber of indicators: 17	admin	New Version Published.	2023-07-07 08:11:56.246
358	2023-07-07 08:27:47.677	A new template has been published by admin from the international instance. The new template has the following details: Version description: Final Test\n\nNumber of indicators: 2	admin	New Version Published.	2023-07-07 08:27:47.677
359	2023-07-07 09:30:13.666	This is an automated test script. Please ignore	admin	Test Script	2023-07-07 09:30:13.666
360	2023-07-07 09:30:39.238	This is an automated test script. Please ignore	admin	Test Script	2023-07-07 09:30:39.238
361	2023-07-07 10:01:58.02	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test Policy\n\nNumber of indicators: 7	admin	New Version Published.	2023-07-07 10:01:58.02
362	2023-07-07 10:04:13.714	A new template has been published by admin from the international instance. The new template has the following details: Version description: New publication\n\nNumber of indicators: 13	admin	New Version Published.	2023-07-07 10:04:13.714
363	2023-07-07 10:06:37.677	A new template has been published by admin from the international instance. The new template has the following details: Version description: test new\n\nNumber of indicators: 3	admin	New Version Published.	2023-07-07 10:06:37.677
364	2023-07-07 10:15:30.874	A new template has been published by admin from the international instance. The new template has the following details: Version description: test error\n\nNumber of indicators: 7	admin	New Version Published.	2023-07-07 10:15:30.874
365	2023-07-07 10:47:14.863	A new template has been published by admin from the international instance. The new template has the following details: Version description: swedrfg\n\nNumber of indicators: 20	admin	New Version Published.	2023-07-07 10:47:14.863
366	2023-07-07 10:48:03.466	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test version\n\nNumber of indicators: 2	admin	New Version Published.	2023-07-07 10:48:03.466
367	2023-07-07 11:00:57.31	A new template has been published by admin from the international instance. The new template has the following details: Version description: test\n\nNumber of indicators: 9	admin	New Version Published.	2023-07-07 11:00:57.31
368	2023-07-07 11:23:22.251	A new template has been published by admin from the international instance. The new template has the following details: Version description: test Publish all\n\nNumber of indicators: 40	admin	New Version Published.	2023-07-07 11:23:22.251
369	2023-07-10 06:46:45.752	A new template has been published by admin from the international instance. The new template has the following details: Version description: test javan version\n\nNumber of indicators: 2	admin	New Version Published.	2023-07-10 06:46:45.752
370	2023-07-11 05:20:14.494	A new template has been published by admin from the international instance. The new template has the following details: Version description: New Test\n\nNumber of indicators: 9	admin	New Version Published.	2023-07-11 05:20:14.494
371	2023-07-11 08:14:10.458	A new template has been published by admin from the international instance. The new template has the following details: Version description: Tuseday Elleven Version\n\nNumber of indicators: 46	admin	New Version Published.	2023-07-11 08:14:10.458
372	2023-07-11 08:55:39.07	A new template has been published by admin from the international instance. The new template has the following details: Version description: Tuesday Elleven\n\nNumber of indicators: 46	admin	New Version Published.	2023-07-11 08:55:39.07
373	2023-07-11 11:43:34.479	A new template has been published by admin from the international instance. The new template has the following details: Version description: templates international instance \n\nNumber of indicators: 7	admin	New Version Published.	2023-07-11 11:43:34.479
374	2023-07-13 08:38:02.857	A new template has been published by admin from the international instance. The new template has the following details: Version description: Latest Indicators version\n\n\nNumber of indicators: 10	admin	New Version Published.	2023-07-13 08:38:02.857
375	2023-07-14 05:14:07.443	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test Friday version\n\n\nNumber of indicators: 4	admin	New Version Published.	2023-07-14 05:14:07.443
376	2023-07-17 10:11:26.692	A new template has been published by admin from the international instance. The new template has the following details: Version description: Test\n\nNumber of indicators: 11	admin	New Version Published.	2023-07-17 10:11:26.692
377	2023-07-24 12:07:29.349	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy\n\nNumber of indicators: 25	muyundo	New Version Published.	2023-07-24 12:07:29.349
378	2023-07-24 12:18:34.336	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy2210\n\nNumber of indicators: 25	muyundo	New Version Published.	2023-07-24 12:18:34.336
379	2023-07-24 12:19:49.852	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Dammy6047\n\nNumber of indicators: 25	muyundo	New Version Published.	2023-07-24 12:19:49.852
380	2023-07-24 12:20:38.246	A new template has been published by muyundo from the international instance. The new template has the following details: Version description: Script8746\n\nNumber of indicators: 25	muyundo	New Version Published.	2023-07-24 12:20:38.246
\.


--
-- Data for Name: version_entity_indicators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.version_entity_indicators (version_entity_id, indicators) FROM stdin;
173	Tl65114repo
173	H20DYglxvEP
173	sQPGzq1aoT7
173	Y8ZF27hweSG
173	aCplj3lP8mF
173	mGK8ovOIglf
173	lFBQwXoFABr
173	xmxoAnQZO4N
173	AWggx4ECKnK
173	qT09ljvNwrQ
173	sRWm1oQJkjK
296	Tl65114repo
296	d29a55BIirH
296	mdcj9SkNX8R
296	HBxte4l7z3C
296	KMQYA8pZHEC
296	bjT5UZoBuZN
296	YaAVW51ySwe
296	ND8nFsd5PdA
296	kJrEab2RX9B
296	TKwtkaM1gPz
188	H20DYglxvEP
188	aCplj3lP8mF
188	lFBQwXoFABr
188	eAo5iLY2azh
188	AWggx4ECKnK
188	wzH7aB1YWvs
188	sRWm1oQJkjK
188	jCfqKpiUqzi
188	lJetJUScHEP
188	JvtlxZMJic1
188	HBxte4l7z3C
188	YaAVW51ySwe
209	Tl65114repo
209	H20DYglxvEP
209	sQPGzq1aoT7
209	lp0Cklzx3CF
209	Y8ZF27hweSG
209	aCplj3lP8mF
209	qZqicwJaLPJ
209	HKwXtFKzjRc
209	mGK8ovOIglf
209	lFBQwXoFABr
209	eAo5iLY2azh
209	SXPOwucxqNJ
209	xmxoAnQZO4N
209	AWggx4ECKnK
209	wzH7aB1YWvs
209	qT09ljvNwrQ
209	sRWm1oQJkjK
209	d29a55BIirH
209	jCfqKpiUqzi
209	c5LU51qS7ij
209	lJetJUScHEP
209	JvtlxZMJic1
209	c5lG8d3YgES
209	mdcj9SkNX8R
209	HBxte4l7z3C
209	YaAVW51ySwe
209	KMQYA8pZHEC
222	wzH7aB1YWvs
222	qT09ljvNwrQ
222	sRWm1oQJkjK
222	d29a55BIirH
222	jCfqKpiUqzi
222	c5LU51qS7ij
222	lJetJUScHEP
222	JvtlxZMJic1
222	c5lG8d3YgES
222	mdcj9SkNX8R
222	HBxte4l7z3C
222	YaAVW51ySwe
222	KMQYA8pZHEC
224	Tl65114repo
224	H20DYglxvEP
224	sQPGzq1aoT7
224	lp0Cklzx3CF
224	REh9mx8ThnO
224	aJ9VFTzHbni
224	wQjXdlykmo2
224	Y8ZF27hweSG
224	HKwXtFKzjRc
224	aCplj3lP8mF
224	mZ9ACpgoxB3
224	qZqicwJaLPJ
224	m8l95uTlehZ
224	mGK8ovOIglf
224	lFBQwXoFABr
224	eAo5iLY2azh
224	SXPOwucxqNJ
224	TKwtkaM1gPz
224	xmxoAnQZO4N
224	AWggx4ECKnK
224	wzH7aB1YWvs
224	qT09ljvNwrQ
224	sRWm1oQJkjK
224	d29a55BIirH
224	jCfqKpiUqzi
224	c5LU51qS7ij
224	lJetJUScHEP
224	JvtlxZMJic1
224	c5lG8d3YgES
224	gds9ABvImR3
224	tnk6ZO9SlsK
224	Wg8lYG97HBO
224	HFZz8qWLmDg
224	vYMPD8xe9nA
224	cmVcraPGr4I
224	dDQ6NdUKFPp
224	mdcj9SkNX8R
224	HBxte4l7z3C
224	YaAVW51ySwe
224	KMQYA8pZHEC
174	kJrEab2RX9B
174	ND8nFsd5PdA
174	bjT5UZoBuZN
174	Tl65114repo
174	H20DYglxvEP
174	sQPGzq1aoT7
224	bjT5UZoBuZN
224	ND8nFsd5PdA
224	kJrEab2RX9B
229	Tl65114repo
229	H20DYglxvEP
229	sQPGzq1aoT7
229	lp0Cklzx3CF
229	Y8ZF27hweSG
229	aCplj3lP8mF
229	qZqicwJaLPJ
229	HKwXtFKzjRc
229	mGK8ovOIglf
229	lFBQwXoFABr
229	eAo5iLY2azh
229	SXPOwucxqNJ
229	xmxoAnQZO4N
229	AWggx4ECKnK
229	wzH7aB1YWvs
189	Tl65114repo
189	H20DYglxvEP
189	sQPGzq1aoT7
189	lp0Cklzx3CF
189	Y8ZF27hweSG
189	HKwXtFKzjRc
189	aCplj3lP8mF
189	mZ9ACpgoxB3
189	qZqicwJaLPJ
189	mGK8ovOIglf
189	lFBQwXoFABr
189	xmxoAnQZO4N
189	AWggx4ECKnK
189	m8l95uTlehZ
229	qT09ljvNwrQ
229	sRWm1oQJkjK
190	Tl65114repo
190	H20DYglxvEP
190	mdcj9SkNX8R
190	HBxte4l7z3C
210	Tl65114repo
210	H20DYglxvEP
210	sQPGzq1aoT7
210	lp0Cklzx3CF
210	Y8ZF27hweSG
210	aCplj3lP8mF
210	qZqicwJaLPJ
210	HKwXtFKzjRc
210	mGK8ovOIglf
210	lFBQwXoFABr
210	eAo5iLY2azh
210	SXPOwucxqNJ
210	xmxoAnQZO4N
210	AWggx4ECKnK
210	wzH7aB1YWvs
210	qT09ljvNwrQ
210	sRWm1oQJkjK
210	d29a55BIirH
210	jCfqKpiUqzi
210	c5LU51qS7ij
210	lJetJUScHEP
210	JvtlxZMJic1
210	c5lG8d3YgES
210	mdcj9SkNX8R
210	HBxte4l7z3C
210	YaAVW51ySwe
210	KMQYA8pZHEC
211	Tl65114repo
211	H20DYglxvEP
211	sQPGzq1aoT7
211	lp0Cklzx3CF
211	Y8ZF27hweSG
211	aCplj3lP8mF
211	qZqicwJaLPJ
211	HKwXtFKzjRc
211	mGK8ovOIglf
211	lFBQwXoFABr
211	eAo5iLY2azh
211	SXPOwucxqNJ
211	xmxoAnQZO4N
211	AWggx4ECKnK
211	wzH7aB1YWvs
211	qT09ljvNwrQ
211	sRWm1oQJkjK
211	d29a55BIirH
211	jCfqKpiUqzi
211	c5LU51qS7ij
211	lJetJUScHEP
211	JvtlxZMJic1
211	c5lG8d3YgES
211	mdcj9SkNX8R
211	HBxte4l7z3C
211	YaAVW51ySwe
211	KMQYA8pZHEC
212	Tl65114repo
212	H20DYglxvEP
212	sQPGzq1aoT7
212	lp0Cklzx3CF
212	Y8ZF27hweSG
212	aCplj3lP8mF
212	qZqicwJaLPJ
212	HKwXtFKzjRc
212	mGK8ovOIglf
212	lFBQwXoFABr
212	eAo5iLY2azh
212	SXPOwucxqNJ
212	xmxoAnQZO4N
212	AWggx4ECKnK
212	wzH7aB1YWvs
212	qT09ljvNwrQ
212	sRWm1oQJkjK
212	d29a55BIirH
212	jCfqKpiUqzi
212	c5LU51qS7ij
212	lJetJUScHEP
212	JvtlxZMJic1
212	c5lG8d3YgES
212	mdcj9SkNX8R
212	HBxte4l7z3C
212	YaAVW51ySwe
212	KMQYA8pZHEC
223	Tl65114repo
223	H20DYglxvEP
223	sQPGzq1aoT7
223	lp0Cklzx3CF
223	Y8ZF27hweSG
223	aCplj3lP8mF
223	qZqicwJaLPJ
223	HKwXtFKzjRc
223	mGK8ovOIglf
223	lFBQwXoFABr
223	eAo5iLY2azh
223	SXPOwucxqNJ
223	xmxoAnQZO4N
223	AWggx4ECKnK
223	wzH7aB1YWvs
223	qT09ljvNwrQ
223	sRWm1oQJkjK
223	d29a55BIirH
223	jCfqKpiUqzi
223	c5LU51qS7ij
223	lJetJUScHEP
223	JvtlxZMJic1
223	c5lG8d3YgES
223	mdcj9SkNX8R
223	HBxte4l7z3C
223	YaAVW51ySwe
223	KMQYA8pZHEC
229	d29a55BIirH
229	jCfqKpiUqzi
229	c5LU51qS7ij
229	lJetJUScHEP
229	JvtlxZMJic1
176	Tl65114repo
176	H20DYglxvEP
176	sQPGzq1aoT7
176	lp0Cklzx3CF
176	REh9mx8ThnO
176	aJ9VFTzHbni
176	wQjXdlykmo2
176	Y8ZF27hweSG
176	aCplj3lP8mF
176	qZqicwJaLPJ
176	HKwXtFKzjRc
176	mZ9ACpgoxB3
176	mGK8ovOIglf
176	lFBQwXoFABr
176	eAo5iLY2azh
176	xmxoAnQZO4N
176	AWggx4ECKnK
176	wzH7aB1YWvs
176	qT09ljvNwrQ
176	sRWm1oQJkjK
176	d29a55BIirH
176	jCfqKpiUqzi
176	c5LU51qS7ij
176	lJetJUScHEP
176	JvtlxZMJic1
176	c5lG8d3YgES
176	mdcj9SkNX8R
176	HBxte4l7z3C
176	YaAVW51ySwe
176	KMQYA8pZHEC
191	Tl65114repo
191	H20DYglxvEP
191	sQPGzq1aoT7
191	lp0Cklzx3CF
191	Y8ZF27hweSG
191	aCplj3lP8mF
191	qZqicwJaLPJ
191	HKwXtFKzjRc
191	mGK8ovOIglf
191	lFBQwXoFABr
191	eAo5iLY2azh
191	SXPOwucxqNJ
191	xmxoAnQZO4N
191	AWggx4ECKnK
191	wzH7aB1YWvs
191	qT09ljvNwrQ
191	sRWm1oQJkjK
191	d29a55BIirH
191	jCfqKpiUqzi
191	c5LU51qS7ij
191	lJetJUScHEP
191	JvtlxZMJic1
191	c5lG8d3YgES
191	mdcj9SkNX8R
191	HBxte4l7z3C
191	YaAVW51ySwe
191	KMQYA8pZHEC
192	Tl65114repo
192	H20DYglxvEP
192	sQPGzq1aoT7
192	lp0Cklzx3CF
192	Y8ZF27hweSG
192	aCplj3lP8mF
192	qZqicwJaLPJ
192	HKwXtFKzjRc
192	mGK8ovOIglf
192	lFBQwXoFABr
192	eAo5iLY2azh
192	SXPOwucxqNJ
192	xmxoAnQZO4N
192	AWggx4ECKnK
192	wzH7aB1YWvs
192	qT09ljvNwrQ
192	sRWm1oQJkjK
192	d29a55BIirH
192	jCfqKpiUqzi
192	c5LU51qS7ij
192	lJetJUScHEP
192	JvtlxZMJic1
192	c5lG8d3YgES
192	mdcj9SkNX8R
192	HBxte4l7z3C
192	YaAVW51ySwe
192	KMQYA8pZHEC
213	Tl65114repo
213	H20DYglxvEP
213	sQPGzq1aoT7
213	lp0Cklzx3CF
213	REh9mx8ThnO
213	aJ9VFTzHbni
213	wQjXdlykmo2
213	Y8ZF27hweSG
213	aCplj3lP8mF
213	qZqicwJaLPJ
213	HKwXtFKzjRc
213	mZ9ACpgoxB3
213	m8l95uTlehZ
213	mGK8ovOIglf
213	lFBQwXoFABr
213	eAo5iLY2azh
213	SXPOwucxqNJ
213	TKwtkaM1gPz
213	xmxoAnQZO4N
213	AWggx4ECKnK
213	wzH7aB1YWvs
213	qT09ljvNwrQ
213	sRWm1oQJkjK
213	d29a55BIirH
213	jCfqKpiUqzi
213	c5LU51qS7ij
213	lJetJUScHEP
213	JvtlxZMJic1
213	c5lG8d3YgES
213	gds9ABvImR3
213	tnk6ZO9SlsK
213	Wg8lYG97HBO
213	HFZz8qWLmDg
213	vYMPD8xe9nA
213	cmVcraPGr4I
213	dDQ6NdUKFPp
297	m8l95uTlehZ
297	mZ9ACpgoxB3
297	d29a55BIirH
297	jCfqKpiUqzi
177	Tl65114repo
177	H20DYglxvEP
177	sQPGzq1aoT7
177	Y8ZF27hweSG
177	aCplj3lP8mF
177	qZqicwJaLPJ
177	mGK8ovOIglf
177	lFBQwXoFABr
177	eAo5iLY2azh
177	xmxoAnQZO4N
177	AWggx4ECKnK
177	wzH7aB1YWvs
177	qT09ljvNwrQ
177	sRWm1oQJkjK
177	d29a55BIirH
177	jCfqKpiUqzi
177	c5LU51qS7ij
177	lJetJUScHEP
177	JvtlxZMJic1
177	HBxte4l7z3C
177	mdcj9SkNX8R
178	Tl65114repo
178	H20DYglxvEP
178	sQPGzq1aoT7
178	lp0Cklzx3CF
178	REh9mx8ThnO
178	Y8ZF27hweSG
178	aCplj3lP8mF
179	Tl65114repo
179	H20DYglxvEP
179	sQPGzq1aoT7
179	lp0Cklzx3CF
179	REh9mx8ThnO
179	mGK8ovOIglf
179	lFBQwXoFABr
179	eAo5iLY2azh
179	SXPOwucxqNJ
179	xmxoAnQZO4N
179	AWggx4ECKnK
179	wzH7aB1YWvs
179	qT09ljvNwrQ
179	sRWm1oQJkjK
179	d29a55BIirH
179	jCfqKpiUqzi
179	c5LU51qS7ij
179	lJetJUScHEP
179	JvtlxZMJic1
179	mdcj9SkNX8R
179	HBxte4l7z3C
193	Tl65114repo
193	H20DYglxvEP
193	sQPGzq1aoT7
193	lp0Cklzx3CF
193	Y8ZF27hweSG
193	aCplj3lP8mF
193	qZqicwJaLPJ
193	HKwXtFKzjRc
193	mGK8ovOIglf
193	lFBQwXoFABr
193	eAo5iLY2azh
193	SXPOwucxqNJ
193	xmxoAnQZO4N
193	AWggx4ECKnK
193	wzH7aB1YWvs
193	qT09ljvNwrQ
193	sRWm1oQJkjK
193	d29a55BIirH
193	jCfqKpiUqzi
193	c5LU51qS7ij
193	lJetJUScHEP
193	JvtlxZMJic1
193	c5lG8d3YgES
193	mdcj9SkNX8R
193	HBxte4l7z3C
193	YaAVW51ySwe
193	KMQYA8pZHEC
194	Tl65114repo
194	H20DYglxvEP
194	sQPGzq1aoT7
194	lp0Cklzx3CF
194	Y8ZF27hweSG
194	aCplj3lP8mF
194	qZqicwJaLPJ
194	HKwXtFKzjRc
194	mGK8ovOIglf
194	lFBQwXoFABr
194	eAo5iLY2azh
194	SXPOwucxqNJ
194	xmxoAnQZO4N
194	AWggx4ECKnK
194	wzH7aB1YWvs
194	qT09ljvNwrQ
194	sRWm1oQJkjK
194	d29a55BIirH
194	jCfqKpiUqzi
194	c5LU51qS7ij
194	lJetJUScHEP
194	JvtlxZMJic1
194	c5lG8d3YgES
194	mdcj9SkNX8R
194	HBxte4l7z3C
194	YaAVW51ySwe
194	KMQYA8pZHEC
214	Tl65114repo
214	H20DYglxvEP
214	sQPGzq1aoT7
214	lp0Cklzx3CF
214	Y8ZF27hweSG
214	aCplj3lP8mF
214	qZqicwJaLPJ
214	HKwXtFKzjRc
214	mGK8ovOIglf
214	lFBQwXoFABr
214	eAo5iLY2azh
214	SXPOwucxqNJ
214	xmxoAnQZO4N
214	AWggx4ECKnK
214	wzH7aB1YWvs
214	qT09ljvNwrQ
214	sRWm1oQJkjK
214	d29a55BIirH
214	jCfqKpiUqzi
214	c5LU51qS7ij
214	lJetJUScHEP
214	JvtlxZMJic1
214	c5lG8d3YgES
214	mdcj9SkNX8R
214	HBxte4l7z3C
214	YaAVW51ySwe
214	KMQYA8pZHEC
225	Tl65114repo
225	H20DYglxvEP
225	Y8ZF27hweSG
225	aCplj3lP8mF
225	mGK8ovOIglf
225	qT09ljvNwrQ
225	d29a55BIirH
225	mdcj9SkNX8R
225	bjT5UZoBuZN
225	ND8nFsd5PdA
225	kJrEab2RX9B
226	Tl65114repo
226	H20DYglxvEP
226	sQPGzq1aoT7
226	lp0Cklzx3CF
226	Y8ZF27hweSG
226	aCplj3lP8mF
226	qZqicwJaLPJ
226	HKwXtFKzjRc
226	mGK8ovOIglf
226	lFBQwXoFABr
226	eAo5iLY2azh
226	SXPOwucxqNJ
226	xmxoAnQZO4N
226	AWggx4ECKnK
226	wzH7aB1YWvs
180	Tl65114repo
180	H20DYglxvEP
180	mdcj9SkNX8R
180	HBxte4l7z3C
181	Tl65114repo
181	H20DYglxvEP
181	sQPGzq1aoT7
181	Y8ZF27hweSG
181	aCplj3lP8mF
181	qZqicwJaLPJ
181	mZ9ACpgoxB3
181	mGK8ovOIglf
181	lFBQwXoFABr
195	Tl65114repo
195	H20DYglxvEP
195	sQPGzq1aoT7
195	lp0Cklzx3CF
195	Y8ZF27hweSG
195	aCplj3lP8mF
195	qZqicwJaLPJ
195	HKwXtFKzjRc
195	mGK8ovOIglf
195	lFBQwXoFABr
195	eAo5iLY2azh
195	SXPOwucxqNJ
195	xmxoAnQZO4N
195	AWggx4ECKnK
195	wzH7aB1YWvs
195	qT09ljvNwrQ
195	sRWm1oQJkjK
195	d29a55BIirH
195	jCfqKpiUqzi
195	c5LU51qS7ij
195	lJetJUScHEP
195	JvtlxZMJic1
195	c5lG8d3YgES
195	mdcj9SkNX8R
195	HBxte4l7z3C
195	YaAVW51ySwe
195	KMQYA8pZHEC
196	Tl65114repo
196	H20DYglxvEP
196	sQPGzq1aoT7
196	lp0Cklzx3CF
196	Y8ZF27hweSG
196	aCplj3lP8mF
196	qZqicwJaLPJ
196	HKwXtFKzjRc
196	mGK8ovOIglf
196	lFBQwXoFABr
196	eAo5iLY2azh
196	SXPOwucxqNJ
196	xmxoAnQZO4N
196	AWggx4ECKnK
196	wzH7aB1YWvs
196	qT09ljvNwrQ
196	sRWm1oQJkjK
196	d29a55BIirH
196	jCfqKpiUqzi
196	c5LU51qS7ij
196	lJetJUScHEP
196	JvtlxZMJic1
196	c5lG8d3YgES
196	mdcj9SkNX8R
196	HBxte4l7z3C
196	YaAVW51ySwe
196	KMQYA8pZHEC
197	Tl65114repo
197	H20DYglxvEP
197	sQPGzq1aoT7
197	lp0Cklzx3CF
197	Y8ZF27hweSG
197	aCplj3lP8mF
197	qZqicwJaLPJ
197	HKwXtFKzjRc
197	mGK8ovOIglf
197	lFBQwXoFABr
197	eAo5iLY2azh
197	SXPOwucxqNJ
197	xmxoAnQZO4N
197	AWggx4ECKnK
197	wzH7aB1YWvs
197	qT09ljvNwrQ
197	sRWm1oQJkjK
197	d29a55BIirH
197	jCfqKpiUqzi
197	c5LU51qS7ij
197	lJetJUScHEP
197	JvtlxZMJic1
197	c5lG8d3YgES
197	mdcj9SkNX8R
197	HBxte4l7z3C
197	YaAVW51ySwe
197	KMQYA8pZHEC
198	Tl65114repo
198	H20DYglxvEP
198	sQPGzq1aoT7
198	lp0Cklzx3CF
198	Y8ZF27hweSG
198	aCplj3lP8mF
198	qZqicwJaLPJ
198	HKwXtFKzjRc
198	mGK8ovOIglf
198	lFBQwXoFABr
198	eAo5iLY2azh
198	SXPOwucxqNJ
198	xmxoAnQZO4N
198	AWggx4ECKnK
198	wzH7aB1YWvs
198	qT09ljvNwrQ
198	sRWm1oQJkjK
198	d29a55BIirH
198	jCfqKpiUqzi
198	c5LU51qS7ij
198	lJetJUScHEP
198	JvtlxZMJic1
198	c5lG8d3YgES
198	mdcj9SkNX8R
198	HBxte4l7z3C
198	YaAVW51ySwe
198	KMQYA8pZHEC
215	Tl65114repo
215	H20DYglxvEP
215	sQPGzq1aoT7
215	lp0Cklzx3CF
215	Y8ZF27hweSG
215	aCplj3lP8mF
215	qZqicwJaLPJ
215	HKwXtFKzjRc
215	mGK8ovOIglf
215	lFBQwXoFABr
215	eAo5iLY2azh
215	SXPOwucxqNJ
215	xmxoAnQZO4N
215	AWggx4ECKnK
215	wzH7aB1YWvs
215	qT09ljvNwrQ
215	sRWm1oQJkjK
215	d29a55BIirH
215	jCfqKpiUqzi
215	c5LU51qS7ij
215	lJetJUScHEP
215	JvtlxZMJic1
215	c5lG8d3YgES
215	mdcj9SkNX8R
215	HBxte4l7z3C
215	YaAVW51ySwe
215	KMQYA8pZHEC
216	Tl65114repo
216	H20DYglxvEP
216	sQPGzq1aoT7
216	lp0Cklzx3CF
216	Y8ZF27hweSG
216	aCplj3lP8mF
216	qZqicwJaLPJ
216	HKwXtFKzjRc
216	mGK8ovOIglf
182	Tl65114repo
182	H20DYglxvEP
182	sQPGzq1aoT7
182	Y8ZF27hweSG
182	aCplj3lP8mF
182	qZqicwJaLPJ
182	mGK8ovOIglf
182	lFBQwXoFABr
182	eAo5iLY2azh
182	xmxoAnQZO4N
182	AWggx4ECKnK
182	wzH7aB1YWvs
199	Tl65114repo
199	H20DYglxvEP
199	sQPGzq1aoT7
199	lp0Cklzx3CF
199	Y8ZF27hweSG
199	aCplj3lP8mF
199	qZqicwJaLPJ
199	HKwXtFKzjRc
199	mGK8ovOIglf
199	lFBQwXoFABr
199	eAo5iLY2azh
199	SXPOwucxqNJ
199	xmxoAnQZO4N
199	AWggx4ECKnK
199	wzH7aB1YWvs
199	qT09ljvNwrQ
199	sRWm1oQJkjK
199	d29a55BIirH
199	jCfqKpiUqzi
199	c5LU51qS7ij
199	lJetJUScHEP
199	JvtlxZMJic1
199	c5lG8d3YgES
199	mdcj9SkNX8R
199	HBxte4l7z3C
199	YaAVW51ySwe
199	KMQYA8pZHEC
200	Tl65114repo
200	H20DYglxvEP
200	sQPGzq1aoT7
200	lp0Cklzx3CF
200	Y8ZF27hweSG
200	aCplj3lP8mF
200	qZqicwJaLPJ
200	HKwXtFKzjRc
200	mGK8ovOIglf
200	lFBQwXoFABr
200	eAo5iLY2azh
200	SXPOwucxqNJ
200	xmxoAnQZO4N
200	AWggx4ECKnK
200	wzH7aB1YWvs
200	qT09ljvNwrQ
200	sRWm1oQJkjK
200	d29a55BIirH
200	jCfqKpiUqzi
200	c5LU51qS7ij
200	lJetJUScHEP
200	JvtlxZMJic1
200	c5lG8d3YgES
200	mdcj9SkNX8R
200	HBxte4l7z3C
200	YaAVW51ySwe
200	KMQYA8pZHEC
201	Tl65114repo
201	H20DYglxvEP
201	sQPGzq1aoT7
201	lp0Cklzx3CF
201	Y8ZF27hweSG
201	aCplj3lP8mF
201	qZqicwJaLPJ
201	HKwXtFKzjRc
201	mGK8ovOIglf
201	lFBQwXoFABr
201	eAo5iLY2azh
201	SXPOwucxqNJ
201	xmxoAnQZO4N
201	AWggx4ECKnK
201	wzH7aB1YWvs
201	qT09ljvNwrQ
201	sRWm1oQJkjK
201	d29a55BIirH
201	jCfqKpiUqzi
201	c5LU51qS7ij
201	lJetJUScHEP
201	JvtlxZMJic1
201	c5lG8d3YgES
201	mdcj9SkNX8R
201	HBxte4l7z3C
201	YaAVW51ySwe
201	KMQYA8pZHEC
216	lFBQwXoFABr
216	eAo5iLY2azh
216	SXPOwucxqNJ
216	xmxoAnQZO4N
216	AWggx4ECKnK
216	wzH7aB1YWvs
216	qT09ljvNwrQ
216	sRWm1oQJkjK
216	d29a55BIirH
216	jCfqKpiUqzi
216	c5LU51qS7ij
216	lJetJUScHEP
216	JvtlxZMJic1
216	c5lG8d3YgES
216	mdcj9SkNX8R
216	HBxte4l7z3C
216	YaAVW51ySwe
216	KMQYA8pZHEC
217	Tl65114repo
217	H20DYglxvEP
217	sQPGzq1aoT7
217	lp0Cklzx3CF
217	Y8ZF27hweSG
217	aCplj3lP8mF
217	qZqicwJaLPJ
217	HKwXtFKzjRc
217	mGK8ovOIglf
217	lFBQwXoFABr
217	eAo5iLY2azh
217	SXPOwucxqNJ
217	xmxoAnQZO4N
217	AWggx4ECKnK
217	wzH7aB1YWvs
217	qT09ljvNwrQ
217	sRWm1oQJkjK
217	d29a55BIirH
217	jCfqKpiUqzi
217	c5LU51qS7ij
217	lJetJUScHEP
217	JvtlxZMJic1
217	c5lG8d3YgES
217	mdcj9SkNX8R
217	HBxte4l7z3C
217	YaAVW51ySwe
217	KMQYA8pZHEC
226	qT09ljvNwrQ
226	sRWm1oQJkjK
226	d29a55BIirH
226	jCfqKpiUqzi
226	c5LU51qS7ij
226	lJetJUScHEP
226	JvtlxZMJic1
226	c5lG8d3YgES
226	mdcj9SkNX8R
226	HBxte4l7z3C
226	YaAVW51ySwe
226	KMQYA8pZHEC
229	c5lG8d3YgES
229	mdcj9SkNX8R
229	HBxte4l7z3C
229	YaAVW51ySwe
229	KMQYA8pZHEC
230	Tl65114repo
230	H20DYglxvEP
183	Tl65114repo
183	H20DYglxvEP
183	sQPGzq1aoT7
183	qT09ljvNwrQ
183	sRWm1oQJkjK
227	Tl65114repo
227	H20DYglxvEP
227	sQPGzq1aoT7
227	lp0Cklzx3CF
184	Tl65114repo
184	H20DYglxvEP
184	c5LU51qS7ij
184	lJetJUScHEP
202	Tl65114repo
202	H20DYglxvEP
202	sQPGzq1aoT7
202	lp0Cklzx3CF
202	Y8ZF27hweSG
202	aCplj3lP8mF
202	qZqicwJaLPJ
202	HKwXtFKzjRc
202	mGK8ovOIglf
202	lFBQwXoFABr
202	eAo5iLY2azh
202	SXPOwucxqNJ
202	xmxoAnQZO4N
202	AWggx4ECKnK
202	wzH7aB1YWvs
202	qT09ljvNwrQ
202	sRWm1oQJkjK
202	d29a55BIirH
202	jCfqKpiUqzi
202	c5LU51qS7ij
202	lJetJUScHEP
202	JvtlxZMJic1
202	c5lG8d3YgES
202	mdcj9SkNX8R
202	HBxte4l7z3C
202	YaAVW51ySwe
202	KMQYA8pZHEC
203	Tl65114repo
203	H20DYglxvEP
203	sQPGzq1aoT7
203	lp0Cklzx3CF
203	Y8ZF27hweSG
203	aCplj3lP8mF
203	qZqicwJaLPJ
203	HKwXtFKzjRc
203	mGK8ovOIglf
203	lFBQwXoFABr
203	eAo5iLY2azh
203	SXPOwucxqNJ
203	xmxoAnQZO4N
203	AWggx4ECKnK
203	wzH7aB1YWvs
203	qT09ljvNwrQ
203	sRWm1oQJkjK
203	d29a55BIirH
203	jCfqKpiUqzi
203	c5LU51qS7ij
203	lJetJUScHEP
203	JvtlxZMJic1
203	c5lG8d3YgES
203	mdcj9SkNX8R
203	HBxte4l7z3C
203	YaAVW51ySwe
203	KMQYA8pZHEC
218	Tl65114repo
218	H20DYglxvEP
218	sQPGzq1aoT7
218	lp0Cklzx3CF
218	Y8ZF27hweSG
218	aCplj3lP8mF
218	qZqicwJaLPJ
218	HKwXtFKzjRc
218	mGK8ovOIglf
218	lFBQwXoFABr
218	eAo5iLY2azh
218	SXPOwucxqNJ
218	xmxoAnQZO4N
218	AWggx4ECKnK
218	wzH7aB1YWvs
218	qT09ljvNwrQ
218	sRWm1oQJkjK
218	d29a55BIirH
218	jCfqKpiUqzi
218	c5LU51qS7ij
218	lJetJUScHEP
218	JvtlxZMJic1
218	c5lG8d3YgES
218	mdcj9SkNX8R
218	HBxte4l7z3C
218	YaAVW51ySwe
218	KMQYA8pZHEC
219	Tl65114repo
219	H20DYglxvEP
219	sQPGzq1aoT7
219	lp0Cklzx3CF
219	Y8ZF27hweSG
219	aCplj3lP8mF
219	qZqicwJaLPJ
219	HKwXtFKzjRc
219	mGK8ovOIglf
219	lFBQwXoFABr
219	eAo5iLY2azh
219	SXPOwucxqNJ
219	xmxoAnQZO4N
219	AWggx4ECKnK
219	wzH7aB1YWvs
219	qT09ljvNwrQ
219	sRWm1oQJkjK
219	d29a55BIirH
219	jCfqKpiUqzi
219	c5LU51qS7ij
219	lJetJUScHEP
219	JvtlxZMJic1
219	c5lG8d3YgES
219	mdcj9SkNX8R
219	HBxte4l7z3C
219	YaAVW51ySwe
219	KMQYA8pZHEC
227	Y8ZF27hweSG
227	aCplj3lP8mF
227	qZqicwJaLPJ
227	HKwXtFKzjRc
227	mGK8ovOIglf
227	lFBQwXoFABr
227	eAo5iLY2azh
227	SXPOwucxqNJ
227	xmxoAnQZO4N
227	AWggx4ECKnK
227	wzH7aB1YWvs
227	qT09ljvNwrQ
227	sRWm1oQJkjK
227	d29a55BIirH
227	jCfqKpiUqzi
227	c5LU51qS7ij
227	lJetJUScHEP
227	JvtlxZMJic1
227	c5lG8d3YgES
227	mdcj9SkNX8R
227	HBxte4l7z3C
227	YaAVW51ySwe
227	KMQYA8pZHEC
230	sQPGzq1aoT7
230	lp0Cklzx3CF
230	Y8ZF27hweSG
230	aCplj3lP8mF
230	qZqicwJaLPJ
230	HKwXtFKzjRc
230	mGK8ovOIglf
230	lFBQwXoFABr
230	eAo5iLY2azh
230	SXPOwucxqNJ
230	xmxoAnQZO4N
230	AWggx4ECKnK
230	wzH7aB1YWvs
228	Tl65114repo
228	H20DYglxvEP
204	Tl65114repo
204	H20DYglxvEP
204	sQPGzq1aoT7
204	lp0Cklzx3CF
204	Y8ZF27hweSG
204	aCplj3lP8mF
204	qZqicwJaLPJ
204	HKwXtFKzjRc
204	mGK8ovOIglf
204	lFBQwXoFABr
204	eAo5iLY2azh
204	SXPOwucxqNJ
204	xmxoAnQZO4N
204	AWggx4ECKnK
204	wzH7aB1YWvs
204	qT09ljvNwrQ
204	sRWm1oQJkjK
204	d29a55BIirH
204	jCfqKpiUqzi
204	c5LU51qS7ij
204	lJetJUScHEP
204	JvtlxZMJic1
204	c5lG8d3YgES
204	mdcj9SkNX8R
204	HBxte4l7z3C
204	YaAVW51ySwe
204	KMQYA8pZHEC
205	Tl65114repo
205	H20DYglxvEP
205	sQPGzq1aoT7
205	lp0Cklzx3CF
205	Y8ZF27hweSG
205	aCplj3lP8mF
205	qZqicwJaLPJ
205	HKwXtFKzjRc
205	mGK8ovOIglf
205	lFBQwXoFABr
205	eAo5iLY2azh
205	SXPOwucxqNJ
205	xmxoAnQZO4N
205	AWggx4ECKnK
205	wzH7aB1YWvs
205	qT09ljvNwrQ
205	sRWm1oQJkjK
205	d29a55BIirH
205	jCfqKpiUqzi
205	c5LU51qS7ij
205	lJetJUScHEP
205	JvtlxZMJic1
205	c5lG8d3YgES
205	mdcj9SkNX8R
205	HBxte4l7z3C
205	YaAVW51ySwe
205	KMQYA8pZHEC
206	Tl65114repo
206	H20DYglxvEP
206	sQPGzq1aoT7
206	lp0Cklzx3CF
206	Y8ZF27hweSG
206	aCplj3lP8mF
206	qZqicwJaLPJ
206	HKwXtFKzjRc
206	mGK8ovOIglf
206	lFBQwXoFABr
206	eAo5iLY2azh
206	SXPOwucxqNJ
206	xmxoAnQZO4N
206	AWggx4ECKnK
206	wzH7aB1YWvs
206	qT09ljvNwrQ
206	sRWm1oQJkjK
206	d29a55BIirH
206	jCfqKpiUqzi
206	c5LU51qS7ij
206	lJetJUScHEP
206	JvtlxZMJic1
206	c5lG8d3YgES
206	mdcj9SkNX8R
206	HBxte4l7z3C
206	YaAVW51ySwe
206	KMQYA8pZHEC
220	Tl65114repo
220	H20DYglxvEP
220	sQPGzq1aoT7
220	lp0Cklzx3CF
220	Y8ZF27hweSG
220	aCplj3lP8mF
220	qZqicwJaLPJ
220	HKwXtFKzjRc
220	mGK8ovOIglf
220	lFBQwXoFABr
220	eAo5iLY2azh
220	SXPOwucxqNJ
220	xmxoAnQZO4N
220	AWggx4ECKnK
220	wzH7aB1YWvs
220	qT09ljvNwrQ
220	sRWm1oQJkjK
220	d29a55BIirH
220	jCfqKpiUqzi
220	c5LU51qS7ij
220	lJetJUScHEP
220	JvtlxZMJic1
220	c5lG8d3YgES
220	mdcj9SkNX8R
220	HBxte4l7z3C
220	YaAVW51ySwe
220	KMQYA8pZHEC
228	sQPGzq1aoT7
228	lp0Cklzx3CF
228	Y8ZF27hweSG
228	aCplj3lP8mF
228	qZqicwJaLPJ
228	HKwXtFKzjRc
228	mGK8ovOIglf
228	lFBQwXoFABr
228	eAo5iLY2azh
228	SXPOwucxqNJ
228	xmxoAnQZO4N
228	AWggx4ECKnK
228	wzH7aB1YWvs
228	qT09ljvNwrQ
228	sRWm1oQJkjK
228	d29a55BIirH
228	jCfqKpiUqzi
228	c5LU51qS7ij
228	lJetJUScHEP
228	JvtlxZMJic1
228	c5lG8d3YgES
228	mdcj9SkNX8R
228	HBxte4l7z3C
228	YaAVW51ySwe
228	KMQYA8pZHEC
221	H20DYglxvEP
221	sQPGzq1aoT7
221	lp0Cklzx3CF
221	HKwXtFKzjRc
221	aCplj3lP8mF
221	qZqicwJaLPJ
221	lFBQwXoFABr
221	eAo5iLY2azh
221	SXPOwucxqNJ
221	xmxoAnQZO4N
221	AWggx4ECKnK
221	wzH7aB1YWvs
221	sRWm1oQJkjK
221	jCfqKpiUqzi
221	lJetJUScHEP
221	JvtlxZMJic1
221	c5lG8d3YgES
221	HBxte4l7z3C
221	YaAVW51ySwe
221	KMQYA8pZHEC
186	Tl65114repo
186	H20DYglxvEP
186	sQPGzq1aoT7
186	Y8ZF27hweSG
186	aCplj3lP8mF
186	qZqicwJaLPJ
186	mGK8ovOIglf
186	lFBQwXoFABr
186	eAo5iLY2azh
187	Tl65114repo
187	H20DYglxvEP
187	sQPGzq1aoT7
187	Y8ZF27hweSG
187	aCplj3lP8mF
187	qZqicwJaLPJ
187	mGK8ovOIglf
187	lFBQwXoFABr
187	eAo5iLY2azh
187	xmxoAnQZO4N
187	AWggx4ECKnK
187	wzH7aB1YWvs
207	Tl65114repo
207	H20DYglxvEP
207	sQPGzq1aoT7
207	lp0Cklzx3CF
207	Y8ZF27hweSG
207	aCplj3lP8mF
207	qZqicwJaLPJ
207	HKwXtFKzjRc
207	mGK8ovOIglf
207	lFBQwXoFABr
207	eAo5iLY2azh
207	SXPOwucxqNJ
207	xmxoAnQZO4N
207	AWggx4ECKnK
207	wzH7aB1YWvs
165	Tl65114repo
165	H20DYglxvEP
165	Y8ZF27hweSG
165	aCplj3lP8mF
165	qT09ljvNwrQ
165	sRWm1oQJkjK
165	mdcj9SkNX8R
166	Tl65114repo
166	H20DYglxvEP
166	c5LU51qS7ij
166	lJetJUScHEP
167	Tl65114repo
167	H20DYglxvEP
167	REh9mx8ThnO
167	lp0Cklzx3CF
167	c5LU51qS7ij
167	lJetJUScHEP
167	JvtlxZMJic1
167	HBxte4l7z3C
168	Tl65114repo
168	H20DYglxvEP
168	sQPGzq1aoT7
168	c5LU51qS7ij
168	lJetJUScHEP
168	mdcj9SkNX8R
168	HBxte4l7z3C
169	Tl65114repo
169	H20DYglxvEP
169	sQPGzq1aoT7
169	mGK8ovOIglf
169	lFBQwXoFABr
169	eAo5iLY2azh
169	xmxoAnQZO4N
169	AWggx4ECKnK
169	wzH7aB1YWvs
169	d29a55BIirH
169	jCfqKpiUqzi
169	c5LU51qS7ij
169	lJetJUScHEP
169	JvtlxZMJic1
169	mdcj9SkNX8R
169	HBxte4l7z3C
169	YaAVW51ySwe
170	Tl65114repo
170	sQPGzq1aoT7
170	REh9mx8ThnO
170	Y8ZF27hweSG
170	qZqicwJaLPJ
170	mZ9ACpgoxB3
170	m8l95uTlehZ
170	mGK8ovOIglf
171	Tl65114repo
171	H20DYglxvEP
171	qT09ljvNwrQ
171	sRWm1oQJkjK
171	mdcj9SkNX8R
171	HBxte4l7z3C
172	Tl65114repo
172	H20DYglxvEP
172	sQPGzq1aoT7
172	Y8ZF27hweSG
172	aCplj3lP8mF
172	HKwXtFKzjRc
172	qT09ljvNwrQ
172	sRWm1oQJkjK
172	mdcj9SkNX8R
172	YaAVW51ySwe
207	qT09ljvNwrQ
207	sRWm1oQJkjK
207	d29a55BIirH
207	jCfqKpiUqzi
207	c5LU51qS7ij
207	lJetJUScHEP
207	JvtlxZMJic1
207	c5lG8d3YgES
207	mdcj9SkNX8R
207	HBxte4l7z3C
207	YaAVW51ySwe
207	KMQYA8pZHEC
208	Tl65114repo
208	H20DYglxvEP
208	sQPGzq1aoT7
208	lp0Cklzx3CF
208	Y8ZF27hweSG
208	aCplj3lP8mF
208	qZqicwJaLPJ
208	HKwXtFKzjRc
208	mGK8ovOIglf
208	lFBQwXoFABr
208	eAo5iLY2azh
208	SXPOwucxqNJ
208	xmxoAnQZO4N
208	AWggx4ECKnK
208	wzH7aB1YWvs
208	qT09ljvNwrQ
208	sRWm1oQJkjK
208	d29a55BIirH
208	jCfqKpiUqzi
208	c5LU51qS7ij
208	lJetJUScHEP
208	JvtlxZMJic1
208	c5lG8d3YgES
208	mdcj9SkNX8R
208	HBxte4l7z3C
208	YaAVW51ySwe
208	KMQYA8pZHEC
222	Tl65114repo
222	H20DYglxvEP
222	sQPGzq1aoT7
222	lp0Cklzx3CF
222	Y8ZF27hweSG
222	aCplj3lP8mF
222	qZqicwJaLPJ
222	HKwXtFKzjRc
222	mGK8ovOIglf
222	lFBQwXoFABr
222	eAo5iLY2azh
222	SXPOwucxqNJ
222	xmxoAnQZO4N
222	AWggx4ECKnK
230	qT09ljvNwrQ
230	sRWm1oQJkjK
230	d29a55BIirH
230	jCfqKpiUqzi
230	c5LU51qS7ij
230	lJetJUScHEP
230	JvtlxZMJic1
230	c5lG8d3YgES
230	mdcj9SkNX8R
230	HBxte4l7z3C
230	YaAVW51ySwe
230	KMQYA8pZHEC
231	Tl65114repo
231	H20DYglxvEP
231	sQPGzq1aoT7
231	lp0Cklzx3CF
231	Y8ZF27hweSG
231	aCplj3lP8mF
231	qZqicwJaLPJ
231	HKwXtFKzjRc
231	mGK8ovOIglf
231	lFBQwXoFABr
231	eAo5iLY2azh
231	SXPOwucxqNJ
231	xmxoAnQZO4N
231	AWggx4ECKnK
231	wzH7aB1YWvs
231	qT09ljvNwrQ
231	sRWm1oQJkjK
231	d29a55BIirH
231	jCfqKpiUqzi
231	c5LU51qS7ij
231	lJetJUScHEP
231	JvtlxZMJic1
231	c5lG8d3YgES
231	mdcj9SkNX8R
231	HBxte4l7z3C
231	YaAVW51ySwe
231	KMQYA8pZHEC
232	Tl65114repo
232	H20DYglxvEP
232	sQPGzq1aoT7
232	lp0Cklzx3CF
232	Y8ZF27hweSG
232	aCplj3lP8mF
232	qZqicwJaLPJ
232	HKwXtFKzjRc
232	mGK8ovOIglf
232	lFBQwXoFABr
232	eAo5iLY2azh
232	SXPOwucxqNJ
232	xmxoAnQZO4N
232	AWggx4ECKnK
232	wzH7aB1YWvs
232	qT09ljvNwrQ
232	sRWm1oQJkjK
232	d29a55BIirH
232	jCfqKpiUqzi
232	c5LU51qS7ij
232	lJetJUScHEP
232	JvtlxZMJic1
232	c5lG8d3YgES
232	mdcj9SkNX8R
232	HBxte4l7z3C
232	YaAVW51ySwe
232	KMQYA8pZHEC
233	Tl65114repo
233	H20DYglxvEP
233	sQPGzq1aoT7
233	lp0Cklzx3CF
233	Y8ZF27hweSG
233	aCplj3lP8mF
233	qZqicwJaLPJ
233	HKwXtFKzjRc
233	mGK8ovOIglf
233	lFBQwXoFABr
233	eAo5iLY2azh
233	SXPOwucxqNJ
233	xmxoAnQZO4N
233	AWggx4ECKnK
233	wzH7aB1YWvs
233	qT09ljvNwrQ
233	sRWm1oQJkjK
233	d29a55BIirH
233	jCfqKpiUqzi
233	c5LU51qS7ij
233	lJetJUScHEP
233	JvtlxZMJic1
233	c5lG8d3YgES
233	mdcj9SkNX8R
233	HBxte4l7z3C
233	YaAVW51ySwe
233	KMQYA8pZHEC
298	Tl65114repo
298	H20DYglxvEP
298	sQPGzq1aoT7
234	sRWm1oQJkjK
234	d29a55BIirH
298	Y8ZF27hweSG
298	aCplj3lP8mF
298	qZqicwJaLPJ
298	HKwXtFKzjRc
298	lFBQwXoFABr
298	eAo5iLY2azh
298	SXPOwucxqNJ
298	TKwtkaM1gPz
299	Tl65114repo
299	H20DYglxvEP
299	sQPGzq1aoT7
299	lp0Cklzx3CF
299	Y8ZF27hweSG
299	aCplj3lP8mF
299	qZqicwJaLPJ
299	HKwXtFKzjRc
299	lFBQwXoFABr
299	eAo5iLY2azh
299	SXPOwucxqNJ
299	TKwtkaM1gPz
299	xmxoAnQZO4N
299	AWggx4ECKnK
299	wzH7aB1YWvs
299	qT09ljvNwrQ
299	sRWm1oQJkjK
299	d29a55BIirH
299	jCfqKpiUqzi
299	LYNfnvUKEyR
299	lJetJUScHEP
299	mdcj9SkNX8R
299	HBxte4l7z3C
299	YaAVW51ySwe
299	KMQYA8pZHEC
300	Tl65114repo
300	H20DYglxvEP
300	sQPGzq1aoT7
300	lp0Cklzx3CF
300	Y8ZF27hweSG
300	aCplj3lP8mF
300	qZqicwJaLPJ
300	HKwXtFKzjRc
300	lFBQwXoFABr
300	eAo5iLY2azh
300	SXPOwucxqNJ
300	TKwtkaM1gPz
300	xmxoAnQZO4N
300	AWggx4ECKnK
300	wzH7aB1YWvs
300	qT09ljvNwrQ
300	sRWm1oQJkjK
300	d29a55BIirH
300	jCfqKpiUqzi
300	LYNfnvUKEyR
300	lJetJUScHEP
300	mdcj9SkNX8R
300	HBxte4l7z3C
300	YaAVW51ySwe
300	KMQYA8pZHEC
301	Tl65114repo
301	H20DYglxvEP
301	sQPGzq1aoT7
301	lp0Cklzx3CF
301	Y8ZF27hweSG
301	aCplj3lP8mF
301	qZqicwJaLPJ
301	HKwXtFKzjRc
301	lFBQwXoFABr
301	eAo5iLY2azh
301	SXPOwucxqNJ
301	TKwtkaM1gPz
301	xmxoAnQZO4N
301	AWggx4ECKnK
301	wzH7aB1YWvs
301	qT09ljvNwrQ
301	sRWm1oQJkjK
301	d29a55BIirH
301	jCfqKpiUqzi
301	LYNfnvUKEyR
301	lJetJUScHEP
301	mdcj9SkNX8R
301	HBxte4l7z3C
301	YaAVW51ySwe
301	KMQYA8pZHEC
302	Tl65114repo
302	H20DYglxvEP
302	sQPGzq1aoT7
302	lp0Cklzx3CF
302	Y8ZF27hweSG
302	aCplj3lP8mF
302	qZqicwJaLPJ
302	HKwXtFKzjRc
302	lFBQwXoFABr
302	eAo5iLY2azh
302	SXPOwucxqNJ
302	TKwtkaM1gPz
237	Tl65114repo
237	H20DYglxvEP
237	sQPGzq1aoT7
237	lp0Cklzx3CF
237	REh9mx8ThnO
237	aJ9VFTzHbni
237	wQjXdlykmo2
237	Y8ZF27hweSG
237	HKwXtFKzjRc
237	aCplj3lP8mF
237	mZ9ACpgoxB3
237	qZqicwJaLPJ
237	m8l95uTlehZ
237	mGK8ovOIglf
237	lFBQwXoFABr
237	eAo5iLY2azh
237	SXPOwucxqNJ
237	TKwtkaM1gPz
237	xmxoAnQZO4N
237	AWggx4ECKnK
237	wzH7aB1YWvs
237	qT09ljvNwrQ
237	sRWm1oQJkjK
237	d29a55BIirH
237	jCfqKpiUqzi
237	c5LU51qS7ij
237	lJetJUScHEP
237	JvtlxZMJic1
237	c5lG8d3YgES
237	gds9ABvImR3
237	tnk6ZO9SlsK
237	Wg8lYG97HBO
237	HFZz8qWLmDg
237	vYMPD8xe9nA
237	cmVcraPGr4I
237	dDQ6NdUKFPp
237	mdcj9SkNX8R
237	HBxte4l7z3C
237	YaAVW51ySwe
237	KMQYA8pZHEC
237	bjT5UZoBuZN
237	ND8nFsd5PdA
237	kJrEab2RX9B
238	Tl65114repo
238	H20DYglxvEP
238	lp0Cklzx3CF
239	Tl65114repo
239	H20DYglxvEP
239	sQPGzq1aoT7
239	lp0Cklzx3CF
239	Y8ZF27hweSG
239	HKwXtFKzjRc
239	aCplj3lP8mF
239	mZ9ACpgoxB3
239	mGK8ovOIglf
239	lFBQwXoFABr
239	eAo5iLY2azh
239	SXPOwucxqNJ
239	xmxoAnQZO4N
239	AWggx4ECKnK
239	wzH7aB1YWvs
239	qT09ljvNwrQ
239	sRWm1oQJkjK
239	d29a55BIirH
239	jCfqKpiUqzi
239	c5LU51qS7ij
239	lJetJUScHEP
239	JvtlxZMJic1
239	c5lG8d3YgES
239	mdcj9SkNX8R
239	HBxte4l7z3C
239	YaAVW51ySwe
239	KMQYA8pZHEC
241	Tl65114repo
241	H20DYglxvEP
241	sQPGzq1aoT7
241	lp0Cklzx3CF
241	Y8ZF27hweSG
241	HKwXtFKzjRc
241	aCplj3lP8mF
241	mZ9ACpgoxB3
241	mGK8ovOIglf
241	lFBQwXoFABr
241	eAo5iLY2azh
241	SXPOwucxqNJ
241	xmxoAnQZO4N
241	AWggx4ECKnK
241	wzH7aB1YWvs
241	qT09ljvNwrQ
241	sRWm1oQJkjK
241	d29a55BIirH
241	jCfqKpiUqzi
241	c5LU51qS7ij
241	lJetJUScHEP
241	JvtlxZMJic1
241	c5lG8d3YgES
241	mdcj9SkNX8R
241	HBxte4l7z3C
241	YaAVW51ySwe
241	KMQYA8pZHEC
242	Tl65114repo
242	H20DYglxvEP
242	sQPGzq1aoT7
242	lp0Cklzx3CF
242	Y8ZF27hweSG
242	HKwXtFKzjRc
242	aCplj3lP8mF
242	mZ9ACpgoxB3
242	mGK8ovOIglf
242	lFBQwXoFABr
242	eAo5iLY2azh
242	SXPOwucxqNJ
242	xmxoAnQZO4N
242	AWggx4ECKnK
242	wzH7aB1YWvs
242	qT09ljvNwrQ
242	sRWm1oQJkjK
242	d29a55BIirH
242	jCfqKpiUqzi
242	c5LU51qS7ij
242	lJetJUScHEP
242	JvtlxZMJic1
242	c5lG8d3YgES
242	mdcj9SkNX8R
242	HBxte4l7z3C
242	YaAVW51ySwe
242	KMQYA8pZHEC
243	Tl65114repo
243	H20DYglxvEP
243	sQPGzq1aoT7
243	lp0Cklzx3CF
243	Y8ZF27hweSG
243	HKwXtFKzjRc
243	aCplj3lP8mF
243	mZ9ACpgoxB3
243	mGK8ovOIglf
243	lFBQwXoFABr
243	eAo5iLY2azh
243	SXPOwucxqNJ
243	xmxoAnQZO4N
243	AWggx4ECKnK
243	wzH7aB1YWvs
243	qT09ljvNwrQ
243	sRWm1oQJkjK
243	d29a55BIirH
243	jCfqKpiUqzi
243	c5LU51qS7ij
243	lJetJUScHEP
243	JvtlxZMJic1
243	c5lG8d3YgES
243	mdcj9SkNX8R
243	HBxte4l7z3C
243	YaAVW51ySwe
243	KMQYA8pZHEC
302	xmxoAnQZO4N
302	AWggx4ECKnK
302	wzH7aB1YWvs
302	qT09ljvNwrQ
302	sRWm1oQJkjK
302	d29a55BIirH
302	jCfqKpiUqzi
302	LYNfnvUKEyR
302	lJetJUScHEP
302	mdcj9SkNX8R
302	HBxte4l7z3C
302	YaAVW51ySwe
302	KMQYA8pZHEC
303	Tl65114repo
303	H20DYglxvEP
303	sQPGzq1aoT7
303	lp0Cklzx3CF
303	Y8ZF27hweSG
303	aCplj3lP8mF
303	qZqicwJaLPJ
303	HKwXtFKzjRc
303	lFBQwXoFABr
303	eAo5iLY2azh
303	SXPOwucxqNJ
303	TKwtkaM1gPz
303	xmxoAnQZO4N
303	AWggx4ECKnK
245	Tl65114repo
245	H20DYglxvEP
245	sQPGzq1aoT7
245	lp0Cklzx3CF
245	Y8ZF27hweSG
245	HKwXtFKzjRc
245	aCplj3lP8mF
245	mZ9ACpgoxB3
245	mGK8ovOIglf
245	lFBQwXoFABr
245	eAo5iLY2azh
245	SXPOwucxqNJ
245	xmxoAnQZO4N
245	AWggx4ECKnK
245	wzH7aB1YWvs
245	qT09ljvNwrQ
245	sRWm1oQJkjK
245	d29a55BIirH
245	jCfqKpiUqzi
245	c5LU51qS7ij
245	lJetJUScHEP
245	JvtlxZMJic1
245	c5lG8d3YgES
245	mdcj9SkNX8R
245	HBxte4l7z3C
245	YaAVW51ySwe
245	KMQYA8pZHEC
246	Tl65114repo
246	H20DYglxvEP
246	sQPGzq1aoT7
246	lp0Cklzx3CF
246	Y8ZF27hweSG
246	HKwXtFKzjRc
246	aCplj3lP8mF
246	mZ9ACpgoxB3
246	mGK8ovOIglf
246	lFBQwXoFABr
246	eAo5iLY2azh
246	SXPOwucxqNJ
246	xmxoAnQZO4N
246	AWggx4ECKnK
246	wzH7aB1YWvs
246	qT09ljvNwrQ
246	sRWm1oQJkjK
246	d29a55BIirH
246	jCfqKpiUqzi
246	c5LU51qS7ij
246	lJetJUScHEP
246	JvtlxZMJic1
246	c5lG8d3YgES
246	mdcj9SkNX8R
246	HBxte4l7z3C
246	YaAVW51ySwe
246	KMQYA8pZHEC
247	Tl65114repo
247	sQPGzq1aoT7
248	H20DYglxvEP
248	HKwXtFKzjRc
248	lFBQwXoFABr
248	AWggx4ECKnK
248	sRWm1oQJkjK
248	jCfqKpiUqzi
248	lJetJUScHEP
248	HBxte4l7z3C
250	Tl65114repo
251	c5LU51qS7ij
252	Tl65114repo
252	H20DYglxvEP
252	sQPGzq1aoT7
252	lp0Cklzx3CF
252	Y8ZF27hweSG
252	HKwXtFKzjRc
252	aCplj3lP8mF
252	mZ9ACpgoxB3
252	mGK8ovOIglf
252	lFBQwXoFABr
252	eAo5iLY2azh
252	SXPOwucxqNJ
252	xmxoAnQZO4N
252	AWggx4ECKnK
252	wzH7aB1YWvs
252	qT09ljvNwrQ
252	sRWm1oQJkjK
252	d29a55BIirH
252	jCfqKpiUqzi
252	c5LU51qS7ij
252	lJetJUScHEP
252	JvtlxZMJic1
252	c5lG8d3YgES
252	mdcj9SkNX8R
252	HBxte4l7z3C
252	YaAVW51ySwe
252	KMQYA8pZHEC
253	Tl65114repo
253	H20DYglxvEP
253	sQPGzq1aoT7
253	lp0Cklzx3CF
253	Y8ZF27hweSG
253	HKwXtFKzjRc
253	aCplj3lP8mF
253	mZ9ACpgoxB3
253	mGK8ovOIglf
253	lFBQwXoFABr
253	eAo5iLY2azh
253	SXPOwucxqNJ
253	xmxoAnQZO4N
253	AWggx4ECKnK
253	wzH7aB1YWvs
253	qT09ljvNwrQ
253	sRWm1oQJkjK
253	d29a55BIirH
253	jCfqKpiUqzi
253	c5LU51qS7ij
253	lJetJUScHEP
253	JvtlxZMJic1
253	c5lG8d3YgES
253	mdcj9SkNX8R
253	HBxte4l7z3C
253	YaAVW51ySwe
253	KMQYA8pZHEC
254	Tl65114repo
254	H20DYglxvEP
254	sQPGzq1aoT7
254	lp0Cklzx3CF
254	Y8ZF27hweSG
254	HKwXtFKzjRc
254	aCplj3lP8mF
254	mZ9ACpgoxB3
254	mGK8ovOIglf
254	lFBQwXoFABr
254	eAo5iLY2azh
254	SXPOwucxqNJ
254	xmxoAnQZO4N
254	AWggx4ECKnK
254	wzH7aB1YWvs
254	qT09ljvNwrQ
254	sRWm1oQJkjK
254	d29a55BIirH
254	jCfqKpiUqzi
254	c5LU51qS7ij
254	lJetJUScHEP
254	JvtlxZMJic1
254	c5lG8d3YgES
254	mdcj9SkNX8R
254	HBxte4l7z3C
254	YaAVW51ySwe
254	KMQYA8pZHEC
255	Tl65114repo
255	H20DYglxvEP
255	sQPGzq1aoT7
255	lp0Cklzx3CF
255	Y8ZF27hweSG
255	HKwXtFKzjRc
255	aCplj3lP8mF
255	mZ9ACpgoxB3
255	mGK8ovOIglf
255	lFBQwXoFABr
255	eAo5iLY2azh
255	SXPOwucxqNJ
255	xmxoAnQZO4N
255	AWggx4ECKnK
255	wzH7aB1YWvs
255	qT09ljvNwrQ
255	sRWm1oQJkjK
255	d29a55BIirH
255	jCfqKpiUqzi
255	c5LU51qS7ij
255	lJetJUScHEP
255	JvtlxZMJic1
255	c5lG8d3YgES
255	mdcj9SkNX8R
255	HBxte4l7z3C
255	YaAVW51ySwe
255	KMQYA8pZHEC
256	Tl65114repo
256	H20DYglxvEP
256	sQPGzq1aoT7
256	lp0Cklzx3CF
256	Y8ZF27hweSG
256	HKwXtFKzjRc
256	aCplj3lP8mF
256	mZ9ACpgoxB3
256	mGK8ovOIglf
256	lFBQwXoFABr
256	eAo5iLY2azh
256	SXPOwucxqNJ
256	xmxoAnQZO4N
256	AWggx4ECKnK
256	wzH7aB1YWvs
256	qT09ljvNwrQ
256	sRWm1oQJkjK
256	d29a55BIirH
256	jCfqKpiUqzi
256	c5LU51qS7ij
256	lJetJUScHEP
256	JvtlxZMJic1
256	c5lG8d3YgES
256	mdcj9SkNX8R
256	HBxte4l7z3C
256	YaAVW51ySwe
256	KMQYA8pZHEC
257	Tl65114repo
257	H20DYglxvEP
257	sQPGzq1aoT7
257	lp0Cklzx3CF
257	Y8ZF27hweSG
257	HKwXtFKzjRc
257	aCplj3lP8mF
257	mZ9ACpgoxB3
257	mGK8ovOIglf
257	lFBQwXoFABr
257	eAo5iLY2azh
257	SXPOwucxqNJ
257	xmxoAnQZO4N
257	AWggx4ECKnK
257	wzH7aB1YWvs
257	qT09ljvNwrQ
257	sRWm1oQJkjK
257	d29a55BIirH
257	jCfqKpiUqzi
257	c5LU51qS7ij
257	lJetJUScHEP
257	zVn9PMHgSFp
257	JvtlxZMJic1
257	mdcj9SkNX8R
257	HBxte4l7z3C
257	YaAVW51ySwe
257	KMQYA8pZHEC
258	Tl65114repo
258	H20DYglxvEP
258	sQPGzq1aoT7
258	lp0Cklzx3CF
258	Y8ZF27hweSG
258	HKwXtFKzjRc
258	aCplj3lP8mF
258	mZ9ACpgoxB3
258	mGK8ovOIglf
258	lFBQwXoFABr
258	eAo5iLY2azh
258	SXPOwucxqNJ
258	xmxoAnQZO4N
258	AWggx4ECKnK
258	wzH7aB1YWvs
258	qT09ljvNwrQ
258	sRWm1oQJkjK
258	d29a55BIirH
258	jCfqKpiUqzi
258	c5LU51qS7ij
258	lJetJUScHEP
258	zVn9PMHgSFp
258	JvtlxZMJic1
258	mdcj9SkNX8R
258	HBxte4l7z3C
258	YaAVW51ySwe
258	KMQYA8pZHEC
259	Tl65114repo
259	H20DYglxvEP
259	sQPGzq1aoT7
259	lp0Cklzx3CF
259	Y8ZF27hweSG
259	HKwXtFKzjRc
259	aCplj3lP8mF
259	mZ9ACpgoxB3
259	mGK8ovOIglf
259	lFBQwXoFABr
259	eAo5iLY2azh
259	SXPOwucxqNJ
259	xmxoAnQZO4N
259	AWggx4ECKnK
259	wzH7aB1YWvs
259	qT09ljvNwrQ
259	sRWm1oQJkjK
259	d29a55BIirH
259	jCfqKpiUqzi
259	c5LU51qS7ij
259	lJetJUScHEP
259	zVn9PMHgSFp
259	JvtlxZMJic1
259	mdcj9SkNX8R
259	HBxte4l7z3C
259	YaAVW51ySwe
259	KMQYA8pZHEC
260	Tl65114repo
260	aJ9VFTzHbni
260	wQjXdlykmo2
260	H20DYglxvEP
260	Y8ZF27hweSG
260	HKwXtFKzjRc
260	aCplj3lP8mF
260	mZ9ACpgoxB3
260	mGK8ovOIglf
260	lFBQwXoFABr
260	eAo5iLY2azh
260	SXPOwucxqNJ
260	xmxoAnQZO4N
260	AWggx4ECKnK
260	wzH7aB1YWvs
260	qT09ljvNwrQ
260	sRWm1oQJkjK
260	d29a55BIirH
260	jCfqKpiUqzi
260	tnk6ZO9SlsK
260	c5LU51qS7ij
260	mdcj9SkNX8R
260	HBxte4l7z3C
260	YaAVW51ySwe
260	KMQYA8pZHEC
261	Tl65114repo
261	aJ9VFTzHbni
261	wQjXdlykmo2
261	H20DYglxvEP
261	Y8ZF27hweSG
261	HKwXtFKzjRc
261	aCplj3lP8mF
261	mZ9ACpgoxB3
261	mGK8ovOIglf
261	lFBQwXoFABr
261	eAo5iLY2azh
261	SXPOwucxqNJ
261	xmxoAnQZO4N
261	AWggx4ECKnK
261	wzH7aB1YWvs
261	qT09ljvNwrQ
261	sRWm1oQJkjK
261	d29a55BIirH
261	jCfqKpiUqzi
261	tnk6ZO9SlsK
261	c5LU51qS7ij
261	mdcj9SkNX8R
261	HBxte4l7z3C
261	YaAVW51ySwe
261	KMQYA8pZHEC
262	Tl65114repo
262	aJ9VFTzHbni
262	wQjXdlykmo2
262	H20DYglxvEP
262	sQPGzq1aoT7
262	lp0Cklzx3CF
262	REh9mx8ThnO
262	Y8ZF27hweSG
262	HKwXtFKzjRc
262	aCplj3lP8mF
262	mZ9ACpgoxB3
262	qZqicwJaLPJ
262	m8l95uTlehZ
262	mGK8ovOIglf
262	lFBQwXoFABr
262	eAo5iLY2azh
262	SXPOwucxqNJ
262	TKwtkaM1gPz
262	AWggx4ECKnK
262	xmxoAnQZO4N
262	wzH7aB1YWvs
262	qT09ljvNwrQ
262	sRWm1oQJkjK
262	d29a55BIirH
262	jCfqKpiUqzi
262	zVn9PMHgSFp
262	tnk6ZO9SlsK
262	gds9ABvImR3
262	c5LU51qS7ij
262	lJetJUScHEP
262	JvtlxZMJic1
262	c5lG8d3YgES
262	Wg8lYG97HBO
262	vYMPD8xe9nA
262	HFZz8qWLmDg
262	cmVcraPGr4I
262	dDQ6NdUKFPp
262	mdcj9SkNX8R
262	HBxte4l7z3C
262	YaAVW51ySwe
262	KMQYA8pZHEC
262	bjT5UZoBuZN
262	ND8nFsd5PdA
262	kJrEab2RX9B
303	wzH7aB1YWvs
303	qT09ljvNwrQ
303	sRWm1oQJkjK
303	d29a55BIirH
303	jCfqKpiUqzi
303	LYNfnvUKEyR
303	lJetJUScHEP
303	mdcj9SkNX8R
303	HBxte4l7z3C
303	YaAVW51ySwe
303	KMQYA8pZHEC
304	Tl65114repo
304	H20DYglxvEP
304	sQPGzq1aoT7
304	lp0Cklzx3CF
304	Y8ZF27hweSG
304	aCplj3lP8mF
304	qZqicwJaLPJ
304	HKwXtFKzjRc
304	lFBQwXoFABr
304	eAo5iLY2azh
304	SXPOwucxqNJ
304	TKwtkaM1gPz
304	xmxoAnQZO4N
304	AWggx4ECKnK
304	wzH7aB1YWvs
304	qT09ljvNwrQ
304	sRWm1oQJkjK
304	d29a55BIirH
304	jCfqKpiUqzi
304	LYNfnvUKEyR
304	lJetJUScHEP
304	mdcj9SkNX8R
304	HBxte4l7z3C
304	YaAVW51ySwe
304	KMQYA8pZHEC
264	Tl65114repo
264	aJ9VFTzHbni
264	wQjXdlykmo2
264	H20DYglxvEP
264	Y8ZF27hweSG
264	HKwXtFKzjRc
264	aCplj3lP8mF
264	mZ9ACpgoxB3
264	mGK8ovOIglf
264	lFBQwXoFABr
264	eAo5iLY2azh
264	SXPOwucxqNJ
264	xmxoAnQZO4N
264	AWggx4ECKnK
264	wzH7aB1YWvs
264	qT09ljvNwrQ
264	sRWm1oQJkjK
264	d29a55BIirH
264	jCfqKpiUqzi
264	tnk6ZO9SlsK
264	lJetJUScHEP
264	mdcj9SkNX8R
264	HBxte4l7z3C
264	YaAVW51ySwe
264	KMQYA8pZHEC
265	Tl65114repo
265	aJ9VFTzHbni
265	wQjXdlykmo2
265	H20DYglxvEP
265	Y8ZF27hweSG
265	HKwXtFKzjRc
265	aCplj3lP8mF
265	mZ9ACpgoxB3
265	mGK8ovOIglf
265	lFBQwXoFABr
265	eAo5iLY2azh
265	SXPOwucxqNJ
265	xmxoAnQZO4N
265	AWggx4ECKnK
265	wzH7aB1YWvs
265	qT09ljvNwrQ
265	sRWm1oQJkjK
265	d29a55BIirH
265	jCfqKpiUqzi
265	tnk6ZO9SlsK
265	lJetJUScHEP
265	mdcj9SkNX8R
265	HBxte4l7z3C
265	YaAVW51ySwe
265	KMQYA8pZHEC
266	Tl65114repo
266	aJ9VFTzHbni
266	wQjXdlykmo2
266	H20DYglxvEP
266	Y8ZF27hweSG
266	HKwXtFKzjRc
266	aCplj3lP8mF
266	mZ9ACpgoxB3
266	mGK8ovOIglf
266	lFBQwXoFABr
266	eAo5iLY2azh
266	SXPOwucxqNJ
266	xmxoAnQZO4N
266	AWggx4ECKnK
266	wzH7aB1YWvs
266	qT09ljvNwrQ
266	sRWm1oQJkjK
266	d29a55BIirH
266	jCfqKpiUqzi
266	tnk6ZO9SlsK
266	lJetJUScHEP
266	mdcj9SkNX8R
266	HBxte4l7z3C
266	YaAVW51ySwe
266	KMQYA8pZHEC
267	Y8ZF27hweSG
267	HKwXtFKzjRc
267	aCplj3lP8mF
267	xmxoAnQZO4N
267	AWggx4ECKnK
267	qT09ljvNwrQ
267	mdcj9SkNX8R
267	HBxte4l7z3C
268	Tl65114repo
268	Y8ZF27hweSG
268	HKwXtFKzjRc
268	aCplj3lP8mF
268	mZ9ACpgoxB3
268	qZqicwJaLPJ
268	m8l95uTlehZ
268	xmxoAnQZO4N
268	AWggx4ECKnK
268	wzH7aB1YWvs
268	qT09ljvNwrQ
268	sRWm1oQJkjK
268	d29a55BIirH
268	JvtlxZMJic1
268	gds9ABvImR3
269	Tl65114repo
269	REh9mx8ThnO
269	Y8ZF27hweSG
269	mGK8ovOIglf
269	xmxoAnQZO4N
269	qT09ljvNwrQ
269	d29a55BIirH
269	c5LU51qS7ij
269	gds9ABvImR3
269	mdcj9SkNX8R
270	Tl65114repo
270	H20DYglxvEP
270	sQPGzq1aoT7
270	lp0Cklzx3CF
270	Y8ZF27hweSG
270	HKwXtFKzjRc
270	aCplj3lP8mF
270	mZ9ACpgoxB3
270	lFBQwXoFABr
270	eAo5iLY2azh
270	SXPOwucxqNJ
270	TKwtkaM1gPz
270	xmxoAnQZO4N
270	AWggx4ECKnK
270	wzH7aB1YWvs
270	qT09ljvNwrQ
270	sRWm1oQJkjK
270	d29a55BIirH
270	jCfqKpiUqzi
270	tnk6ZO9SlsK
270	lJetJUScHEP
270	mdcj9SkNX8R
270	HBxte4l7z3C
270	YaAVW51ySwe
270	KMQYA8pZHEC
271	Tl65114repo
271	H20DYglxvEP
271	sQPGzq1aoT7
271	lp0Cklzx3CF
271	REh9mx8ThnO
271	aJ9VFTzHbni
271	wQjXdlykmo2
271	Y8ZF27hweSG
271	HKwXtFKzjRc
271	aCplj3lP8mF
271	mZ9ACpgoxB3
271	qZqicwJaLPJ
271	m8l95uTlehZ
271	lFBQwXoFABr
271	eAo5iLY2azh
271	SXPOwucxqNJ
271	TKwtkaM1gPz
271	xmxoAnQZO4N
271	AWggx4ECKnK
271	wzH7aB1YWvs
271	qT09ljvNwrQ
271	sRWm1oQJkjK
271	d29a55BIirH
271	jCfqKpiUqzi
271	ZAhhDC2EanO
271	LYNfnvUKEyR
271	zVn9PMHgSFp
271	JvtlxZMJic1
271	KMQYA8pZHEC
271	bjT5UZoBuZN
271	ND8nFsd5PdA
272	Tl65114repo
272	H20DYglxvEP
272	sQPGzq1aoT7
272	lp0Cklzx3CF
272	Y8ZF27hweSG
272	HKwXtFKzjRc
272	aCplj3lP8mF
272	mZ9ACpgoxB3
272	lFBQwXoFABr
272	eAo5iLY2azh
272	SXPOwucxqNJ
272	TKwtkaM1gPz
272	xmxoAnQZO4N
272	AWggx4ECKnK
272	wzH7aB1YWvs
272	qT09ljvNwrQ
272	sRWm1oQJkjK
272	d29a55BIirH
272	jCfqKpiUqzi
272	ZAhhDC2EanO
272	LYNfnvUKEyR
272	zVn9PMHgSFp
272	eCwbSIDDeHA
272	mdcj9SkNX8R
272	HBxte4l7z3C
272	YaAVW51ySwe
272	KMQYA8pZHEC
273	Tl65114repo
273	H20DYglxvEP
273	sQPGzq1aoT7
273	lp0Cklzx3CF
273	Y8ZF27hweSG
273	aCplj3lP8mF
273	qZqicwJaLPJ
273	HKwXtFKzjRc
273	lFBQwXoFABr
273	eAo5iLY2azh
273	SXPOwucxqNJ
273	TKwtkaM1gPz
273	xmxoAnQZO4N
273	AWggx4ECKnK
273	wzH7aB1YWvs
273	qT09ljvNwrQ
273	sRWm1oQJkjK
273	d29a55BIirH
273	jCfqKpiUqzi
273	LYNfnvUKEyR
273	lJetJUScHEP
273	mdcj9SkNX8R
273	HBxte4l7z3C
273	YaAVW51ySwe
273	KMQYA8pZHEC
274	Tl65114repo
274	Y8ZF27hweSG
274	lFBQwXoFABr
274	xmxoAnQZO4N
274	qT09ljvNwrQ
274	d29a55BIirH
274	ZAhhDC2EanO
274	c5LU51qS7ij
274	mdcj9SkNX8R
275	Tl65114repo
275	Y8ZF27hweSG
275	lFBQwXoFABr
275	xmxoAnQZO4N
275	qT09ljvNwrQ
275	d29a55BIirH
275	ZAhhDC2EanO
275	mdcj9SkNX8R
276	Tl65114repo
276	lFBQwXoFABr
276	qT09ljvNwrQ
277	Tl65114repo
277	H20DYglxvEP
277	sQPGzq1aoT7
277	lp0Cklzx3CF
277	REh9mx8ThnO
277	aJ9VFTzHbni
277	wQjXdlykmo2
277	Y8ZF27hweSG
277	aCplj3lP8mF
277	qZqicwJaLPJ
277	HKwXtFKzjRc
277	mZ9ACpgoxB3
277	m8l95uTlehZ
277	lFBQwXoFABr
277	eAo5iLY2azh
277	SXPOwucxqNJ
277	TKwtkaM1gPz
278	Tl65114repo
278	H20DYglxvEP
279	Tl65114repo
279	H20DYglxvEP
279	sQPGzq1aoT7
279	lp0Cklzx3CF
279	REh9mx8ThnO
279	aJ9VFTzHbni
279	wQjXdlykmo2
280	Tl65114repo
280	H20DYglxvEP
280	sQPGzq1aoT7
280	lp0Cklzx3CF
280	REh9mx8ThnO
280	aJ9VFTzHbni
280	wQjXdlykmo2
280	Y8ZF27hweSG
280	aCplj3lP8mF
280	qZqicwJaLPJ
280	HKwXtFKzjRc
280	mZ9ACpgoxB3
280	m8l95uTlehZ
281	Tl65114repo
281	H20DYglxvEP
281	Y8ZF27hweSG
282	Tl65114repo
282	lFBQwXoFABr
282	xmxoAnQZO4N
282	qT09ljvNwrQ
282	d29a55BIirH
282	c5LU51qS7ij
282	mdcj9SkNX8R
283	Tl65114repo
283	H20DYglxvEP
283	sQPGzq1aoT7
283	lp0Cklzx3CF
283	REh9mx8ThnO
283	aJ9VFTzHbni
283	wQjXdlykmo2
283	mZ9ACpgoxB3
283	m8l95uTlehZ
283	aCplj3lP8mF
283	qZqicwJaLPJ
283	HKwXtFKzjRc
283	Y8ZF27hweSG
283	lFBQwXoFABr
283	eAo5iLY2azh
283	SXPOwucxqNJ
283	TKwtkaM1gPz
283	xmxoAnQZO4N
283	AWggx4ECKnK
283	wzH7aB1YWvs
284	Tl65114repo
284	H20DYglxvEP
285	Tl65114repo
285	lFBQwXoFABr
285	Y8ZF27hweSG
285	xmxoAnQZO4N
285	qT09ljvNwrQ
285	d29a55BIirH
285	ZAhhDC2EanO
285	c5LU51qS7ij
285	mdcj9SkNX8R
286	Tl65114repo
286	H20DYglxvEP
286	sQPGzq1aoT7
286	lp0Cklzx3CF
286	REh9mx8ThnO
286	wQjXdlykmo2
286	aJ9VFTzHbni
286	Y8ZF27hweSG
286	aCplj3lP8mF
286	qZqicwJaLPJ
286	HKwXtFKzjRc
286	mZ9ACpgoxB3
286	m8l95uTlehZ
286	lFBQwXoFABr
286	eAo5iLY2azh
286	SXPOwucxqNJ
286	TKwtkaM1gPz
286	xmxoAnQZO4N
286	AWggx4ECKnK
286	wzH7aB1YWvs
286	qT09ljvNwrQ
286	sRWm1oQJkjK
286	d29a55BIirH
286	jCfqKpiUqzi
286	ZAhhDC2EanO
286	LYNfnvUKEyR
286	lJetJUScHEP
286	zVn9PMHgSFp
286	JvtlxZMJic1
286	c5lG8d3YgES
286	gds9ABvImR3
286	Wg8lYG97HBO
286	HFZz8qWLmDg
286	tnk6ZO9SlsK
286	vYMPD8xe9nA
286	cmVcraPGr4I
286	dDQ6NdUKFPp
286	eCwbSIDDeHA
286	mdcj9SkNX8R
286	HBxte4l7z3C
287	Tl65114repo
287	aCplj3lP8mF
290	Tl65114repo
290	H20DYglxvEP
290	sQPGzq1aoT7
290	lp0Cklzx3CF
290	Y8ZF27hweSG
290	aCplj3lP8mF
290	ZAhhDC2EanO
290	lJetJUScHEP
290	LYNfnvUKEyR
293	Tl65114repo
293	H20DYglxvEP
293	sQPGzq1aoT7
293	lp0Cklzx3CF
293	REh9mx8ThnO
293	aJ9VFTzHbni
293	wQjXdlykmo2
293	Y8ZF27hweSG
293	HKwXtFKzjRc
293	aCplj3lP8mF
293	mZ9ACpgoxB3
293	qZqicwJaLPJ
293	m8l95uTlehZ
293	lFBQwXoFABr
293	eAo5iLY2azh
293	SXPOwucxqNJ
293	TKwtkaM1gPz
293	xmxoAnQZO4N
293	AWggx4ECKnK
293	wzH7aB1YWvs
293	qT09ljvNwrQ
293	sRWm1oQJkjK
293	d29a55BIirH
293	jCfqKpiUqzi
293	c5LU51qS7ij
293	ZAhhDC2EanO
293	LYNfnvUKEyR
293	lJetJUScHEP
293	zVn9PMHgSFp
293	JvtlxZMJic1
293	c5lG8d3YgES
293	gds9ABvImR3
293	tnk6ZO9SlsK
293	Wg8lYG97HBO
293	HFZz8qWLmDg
293	vYMPD8xe9nA
293	cmVcraPGr4I
293	dDQ6NdUKFPp
293	eCwbSIDDeHA
293	mdcj9SkNX8R
293	HBxte4l7z3C
293	YaAVW51ySwe
293	KMQYA8pZHEC
293	bjT5UZoBuZN
293	ND8nFsd5PdA
293	kJrEab2RX9B
292	Tl65114repo
292	Y8ZF27hweSG
292	aCplj3lP8mF
292	qZqicwJaLPJ
292	lFBQwXoFABr
292	eAo5iLY2azh
292	YaAVW51ySwe
292	KMQYA8pZHEC
292	kJrEab2RX9B
292	HBxte4l7z3C
292	mdcj9SkNX8R
292	bjT5UZoBuZN
292	ND8nFsd5PdA
292	ZAhhDC2EanO
292	c5LU51qS7ij
292	LYNfnvUKEyR
292	lJetJUScHEP
292	zVn9PMHgSFp
292	JvtlxZMJic1
292	c5lG8d3YgES
292	gds9ABvImR3
292	tnk6ZO9SlsK
292	Wg8lYG97HBO
292	HFZz8qWLmDg
292	vYMPD8xe9nA
292	cmVcraPGr4I
292	dDQ6NdUKFPp
292	eCwbSIDDeHA
292	d29a55BIirH
292	jCfqKpiUqzi
292	qT09ljvNwrQ
292	sRWm1oQJkjK
292	xmxoAnQZO4N
292	AWggx4ECKnK
292	wzH7aB1YWvs
292	SXPOwucxqNJ
292	TKwtkaM1gPz
292	HKwXtFKzjRc
292	mZ9ACpgoxB3
292	m8l95uTlehZ
292	H20DYglxvEP
292	sQPGzq1aoT7
292	lp0Cklzx3CF
292	REh9mx8ThnO
292	aJ9VFTzHbni
292	wQjXdlykmo2
295	sQPGzq1aoT7
295	aJ9VFTzHbni
295	wQjXdlykmo2
295	HKwXtFKzjRc
295	lFBQwXoFABr
295	AWggx4ECKnK
295	Wg8lYG97HBO
\.


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.versions (id, created_at, created_by, published_by, status, updated_at, version_description, version_name) FROM stdin;
173	2023-05-19 05:48:38.01	muyundo	muyundo	PUBLISHED	2023-05-19 05:48:41.546	Testload6	159
176	2023-05-22 06:02:13.718	admin	admin	PUBLISHED	2023-05-22 06:02:36.538	Load test	2
177	2023-05-22 06:12:54.734	admin	admin	AWAITING_PUBLISHING	2023-05-22 06:12:54.74	testload	\N
205	2023-05-30 09:19:31.824	muyundo	muyundo	PUBLISHED	2023-05-30 09:19:33.208	Automated script	27
178	2023-05-22 06:22:10.49	admin	admin	PUBLISHED	2023-05-22 06:22:11.992	testload	4
179	2023-05-22 06:24:59.618	admin	admin	AWAITING_PUBLISHING	2023-05-22 06:24:59.651	testload	\N
182	2023-05-22 11:26:52.661	admin	admin	PUBLISHED	2023-05-22 11:26:53.972	test1	8
267	2023-07-05 12:43:32.133	admin	admin	PUBLISHED	2023-07-05 12:43:44.421	New test	80
206	2023-05-30 09:25:11.259	muyundo	muyundo	PUBLISHED	2023-05-30 09:25:12.637	Automated script	28
210	2023-05-30 10:08:03.312	muyundo	muyundo	AWAITING_PUBLISHING	2023-05-30 10:08:03.325	Automated script	\N
188	2023-05-25 04:07:28.936	admin	admin	PUBLISHED	2023-05-25 04:09:14.152	Test QA	13
211	2023-05-30 10:14:12.507	muyundo	muyundo	AWAITING_PUBLISHING	2023-05-30 10:14:12.517	Automated script	\N
190	2023-05-26 05:46:17.317	admin	admin	PUBLISHED	2023-05-26 05:47:01.082	new template test	15
195	2023-05-29 12:28:40.503	admin	admin	AWAITING_PUBLISHING	2023-05-29 12:28:40.514	Automated script	\N
213	2023-05-30 11:03:25.968	admin	\N	DRAFT	2023-05-30 11:03:25.968	TTest for edit	\N
196	2023-05-29 12:32:17.935	admin	admin	PUBLISHED	2023-05-29 12:32:19.19	Automated script	21
197	2023-05-29 12:38:43.049	admin	admin	PUBLISHED	2023-05-29 12:38:44.322	Automated script	22
238	2023-06-20 13:36:52.851	admin	admin	PUBLISHED	2023-06-20 13:37:18.181	test	55
198	2023-05-29 12:39:36.527	admin	admin	PUBLISHED	2023-05-29 12:39:37.777	Automated script	23
214	2023-05-30 11:13:12.64	muyundo	muyundo	PUBLISHED	2023-05-30 11:13:14.885	Automated script	35
199	2023-05-29 12:42:29.175	admin	admin	PUBLISHED	2023-05-29 12:42:30.648	Automated script	24
200	2023-05-29 12:46:41.94	admin	\N	DRAFT	2023-05-29 12:46:41.94	Automated script	\N
201	2023-05-29 12:51:29.036	admin	\N	DRAFT	2023-05-29 12:51:29.036	Automated script	\N
204	2023-05-30 09:16:53.307	muyundo	muyundo	PUBLISHED	2023-05-30 09:16:54.992	Automated script	26
218	2023-05-31 03:55:17.46	muyundo	muyundo	PUBLISHED	2023-05-31 03:55:22.789	Automated script	39
219	2023-05-31 03:56:02.029	muyundo	muyundo	PUBLISHED	2023-05-31 03:56:06.566	Automated script	40
220	2023-05-31 04:02:07.773	admin	\N	DRAFT	2023-05-31 04:02:07.773	Automated script	\N
242	2023-06-23 09:25:18.608	muyundo	muyundo	PUBLISHED	2023-06-23 09:25:21.131	Dammy Data	59
221	2023-05-31 04:06:05.289	muyundo	muyundo	PUBLISHED	2023-05-31 04:07:52.793	Automated script1	41
246	2023-06-26 09:53:50.121	muyundo	muyundo	PUBLISHED	2023-06-26 09:54:01.429	Dammy Data	61
223	2023-06-05 05:40:06.068	muyundo	muyundo	PUBLISHED	2023-06-05 05:40:11.1	Automated script	43
269	2023-07-06 14:53:03.847	admin	admin	PUBLISHED	2023-07-06 14:53:17.23	test	82
225	2023-06-05 11:50:47.172	admin	admin	PUBLISHED	2023-06-05 11:56:43.061	New Test	45
226	2023-06-05 12:14:30.546	muyundo	muyundo	PUBLISHED	2023-06-05 12:14:40.194	Automated script1	46
228	2023-06-06 05:28:42.897	muyundo	muyundo	PUBLISHED	2023-06-06 05:28:56.22	Automated script1	48
248	2023-06-27 16:35:03.994	muyundo	muyundo	PUBLISHED	2023-06-27 16:36:48.295	End to End tet	63
231	2023-06-06 07:56:06.224	muyundo	muyundo	PUBLISHED	2023-06-06 07:56:18.379	Dammy Data	51
234	2023-06-07 06:13:11.649	admin	\N	DRAFT	2023-06-07 06:20:51.801	TEST KM	\N
271	2023-07-06 17:21:57.947	admin	admin	PUBLISHED	2023-07-06 17:22:10.259	Test complete	84
251	2023-06-28 06:33:14.94	admin	admin	PUBLISHED	2023-06-28 06:33:27.208	Test types	65
237	2023-06-08 11:33:30.35	admin	admin	PUBLISHED	2023-06-08 11:34:03.944	New Stuff FINAL	54
253	2023-06-28 08:35:50.589	muyundo	muyundo	PUBLISHED	2023-06-28 08:36:02.829	Dammy Data	67
255	2023-06-28 18:11:58.149	muyundo	muyundo	PUBLISHED	2023-06-28 18:12:12.098	Dammy Data	69
272	2023-07-06 17:30:41.564	muyundo	muyundo	PUBLISHED	2023-07-06 17:30:53.728	Dammy Data	85
257	2023-07-03 09:34:43.884	muyundo	muyundo	PUBLISHED	2023-07-03 09:34:56.451	Dammy Data	71
259	2023-07-03 17:52:22.596	muyundo	muyundo	PUBLISHED	2023-07-03 17:52:35.659	Dammy Data	73
261	2023-07-04 05:38:14.469	muyundo	muyundo	PUBLISHED	2023-07-04 05:38:27.591	Dammy Data	75
289	2023-07-10 09:50:59.465	admin	admin	PUBLISHED	2023-07-10 09:51:00.568	New Test #2	101
274	2023-07-07 06:05:27.091	admin	admin	PUBLISHED	2023-07-07 06:05:41.452	test	87
265	2023-07-05 08:26:15.639	muyundo	muyundo	PUBLISHED	2023-07-05 08:26:28.685	Dammy Data	78
276	2023-07-07 07:32:02.377	admin	admin	PUBLISHED	2023-07-07 07:32:14.483	TESTD DESC	89
278	2023-07-07 08:27:47.665	admin	admin	PUBLISHED	2023-07-07 08:27:59.879	Final Test	91
302	2023-07-24 12:20:38.224	muyundo	muyundo	PUBLISHED	2023-07-24 12:20:50.335	Script8746	113
283	2023-07-07 10:47:14.845	admin	admin	PUBLISHED	2023-07-07 10:47:30.702	swedrfg	96
294	2023-07-11 08:51:27.112	admin	admin	PUBLISHED	2023-07-11 08:51:28.241	test	104
284	2023-07-07 10:48:03.46	admin	admin	PUBLISHED	2023-07-07 10:48:15.68	Test version	97
303	2023-07-24 12:25:30.283	muyundo	\N	DRAFT	2023-07-24 12:25:30.283	Script8042	\N
286	2023-07-07 11:23:22.231	admin	admin	PUBLISHED	2023-07-07 11:23:34.47	test Publish all	99
304	2023-07-24 12:29:39.055	muyundo	\N	DRAFT	2023-07-24 12:29:39.055	Script8810	\N
292	2023-07-11 07:43:13.951	admin	admin	PUBLISHED	2023-07-11 08:55:51.456	Tuesday Elleven	105
296	2023-07-13 08:38:02.725	admin	admin	PUBLISHED	2023-07-13 08:38:15.945	Latest Indicators version\n	107
298	2023-07-17 10:11:26.669	admin	admin	PUBLISHED	2023-07-17 10:11:38.967	Test	109
174	2023-05-19 07:27:01.835	user1	user1	PUBLISHED	2023-05-19 07:27:03.173	to test the tool\n	160
180	2023-05-22 06:29:54.786	admin	admin	AWAITING_PUBLISHING	2023-05-22 06:29:54.79	test	\N
207	2023-05-30 09:39:08.916	muyundo	muyundo	PUBLISHED	2023-05-30 09:39:13.102	Automated script	29
181	2023-05-22 06:39:31.361	admin	admin	PUBLISHED	2023-05-22 06:40:00.145	test	7
165	2023-05-19 04:45:22.204	admin	admin	PUBLISHED	2023-05-19 04:45:23.505	test load	151
183	2023-05-22 12:27:09.298	user1	user1	PUBLISHED	2023-05-22 12:27:32.171	Trial 1 to add a new version	9
260	2023-07-04 04:22:33.551	muyundo	muyundo	PUBLISHED	2023-07-04 04:22:46.836	Dammy Data	74
208	2023-05-30 09:53:37.309	muyundo	muyundo	PUBLISHED	2023-05-30 09:53:39.207	Automated script	30
184	2023-05-22 12:27:32.165	user5	user5	PUBLISHED	2023-05-22 12:28:47.977	Test_LH_May 22	10
186	2023-05-23 06:35:36.506	admin	admin	PUBLISHED	2023-05-23 06:35:42.636	Test by QA	11
209	2023-05-30 09:56:01.779	muyundo	muyundo	AWAITING_PUBLISHING	2023-05-30 09:56:01.801	Automated script	\N
187	2023-05-23 06:37:27.74	admin	admin	PUBLISHED	2023-05-23 06:53:21.099	Test by QA	12
212	2023-05-30 10:20:51.146	muyundo	muyundo	AWAITING_PUBLISHING	2023-05-30 10:20:51.155	Automated script	\N
189	2023-05-26 05:40:05.635	admin	admin	PUBLISHED	2023-05-26 05:41:53.237	New Test	14
239	2023-06-22 11:33:25.75	muyundo	muyundo	PUBLISHED	2023-06-22 11:33:52.712	Dammy Data	56
191	2023-05-29 12:11:56.117	admin	admin	PUBLISHED	2023-05-29 12:12:22.201	Automated script	16
192	2023-05-29 12:12:58.56	admin	admin	AWAITING_PUBLISHING	2023-05-29 12:12:58.57	Automated script	\N
193	2023-05-29 12:13:57.116	admin	admin	AWAITING_PUBLISHING	2023-05-29 12:13:57.129	Automated script	\N
194	2023-05-29 12:15:16.853	admin	admin	AWAITING_PUBLISHING	2023-05-29 12:15:16.862	Automated script	\N
202	2023-05-30 06:05:40.232	admin	\N	DRAFT	2023-05-30 06:05:40.232	Automated script	\N
215	2023-05-30 12:26:14.096	muyundo	muyundo	PUBLISHED	2023-05-30 12:26:15.517	Automated script	36
203	2023-05-30 06:07:16.909	muyundo	muyundo	PUBLISHED	2023-05-30 06:07:18.548	Automated script	25
216	2023-05-30 12:39:39.739	muyundo	muyundo	PUBLISHED	2023-05-30 12:39:41.207	Automated script	37
217	2023-05-30 12:44:04.529	muyundo	muyundo	PUBLISHED	2023-05-30 12:44:05.947	Automated script	38
240	2023-06-22 11:34:50.628	admin	admin	PUBLISHED	2023-06-22 11:34:51.67	tes	57
222	2023-06-05 04:58:09.349	muyundo	muyundo	PUBLISHED	2023-06-05 04:58:21.691	Automated script	42
285	2023-07-07 11:00:57.297	admin	admin	PUBLISHED	2023-07-07 11:01:09.456	test	98
241	2023-06-22 11:35:28.896	muyundo	muyundo	PUBLISHED	2023-06-22 11:35:54.385	Dammy Data	58
224	2023-06-05 11:43:30.159	admin	admin	PUBLISHED	2023-06-05 11:52:14.069	New Template for 2023	44
227	2023-06-06 04:07:59.552	muyundo	muyundo	PUBLISHED	2023-06-06 04:08:13.04	Automated script1	47
262	2023-07-04 06:50:35.254	admin	admin	PUBLISHED	2023-07-04 06:50:47.616	Verify Indicators	76
229	2023-06-06 05:49:39.71	muyundo	muyundo	PUBLISHED	2023-06-06 05:49:50.416	Automated script1	49
243	2023-06-26 06:56:44.902	muyundo	muyundo	PUBLISHED	2023-06-26 06:56:49.976	Dammy Data	60
230	2023-06-06 05:55:15.529	muyundo	muyundo	PUBLISHED	2023-06-06 05:55:26.312	Automated script1	50
232	2023-06-06 14:36:06.324	muyundo	muyundo	PUBLISHED	2023-06-06 14:36:13.702	Dammy Data	52
245	2023-06-26 07:00:04.397	muyundo	\N	DRAFT	2023-06-26 07:00:04.397	Automated script	\N
233	2023-06-06 14:37:22.919	muyundo	muyundo	PUBLISHED	2023-06-06 14:37:33.648	Dammy Data	53
247	2023-06-27 10:19:41.422	admin	admin	PUBLISHED	2023-06-27 10:19:54.494	benchmark rendering	62
277	2023-07-07 08:11:56.223	admin	admin	PUBLISHED	2023-07-07 08:12:08.463	PUBLISH AGAIN	90
250	2023-06-28 06:24:30.24	admin	admin	PUBLISHED	2023-06-28 06:24:43.58	Test Publish	64
264	2023-07-04 19:09:17.12	muyundo	muyundo	PUBLISHED	2023-07-04 19:09:29.46	Dammy Data	77
252	2023-06-28 08:16:54.283	muyundo	muyundo	PUBLISHED	2023-06-28 08:17:06.514	Dammy Data	66
254	2023-06-28 12:12:35.05	muyundo	muyundo	PUBLISHED	2023-06-28 12:12:47.328	Dammy Data	68
256	2023-06-29 11:01:47.59	muyundo	muyundo	PUBLISHED	2023-06-29 11:02:00.88	Dammy Data	70
266	2023-07-05 11:41:16.723	muyundo	muyundo	PUBLISHED	2023-07-05 11:41:29.724	Dammy Data	79
258	2023-07-03 14:24:04.6	muyundo	muyundo	PUBLISHED	2023-07-03 14:24:17.647	Dammy Data	72
279	2023-07-07 10:01:58.007	admin	admin	PUBLISHED	2023-07-07 10:02:10.268	Test Policy	92
268	2023-07-06 11:15:12.736	admin	admin	PUBLISHED	2023-07-06 11:15:26.338	test	81
270	2023-07-06 16:28:31.378	muyundo	muyundo	PUBLISHED	2023-07-06 16:28:43.746	Dammy Data	83
273	2023-07-07 05:40:46.294	muyundo	muyundo	PUBLISHED	2023-07-07 05:40:59.686	Dammy Data	86
280	2023-07-07 10:04:13.702	admin	admin	PUBLISHED	2023-07-07 10:04:25.822	New publication	93
275	2023-07-07 07:03:50.173	admin	admin	PUBLISHED	2023-07-07 07:04:02.275	test	88
293	2023-07-11 08:13:31.924	admin	admin	PUBLISHED	2023-07-11 08:14:22.711	Tuseday Elleven Version	103
281	2023-07-07 10:06:37.669	admin	admin	PUBLISHED	2023-07-07 10:06:49.763	test new	94
282	2023-07-07 10:15:30.862	admin	admin	PUBLISHED	2023-07-07 10:15:43.066	test error	95
287	2023-07-10 06:46:06.874	admin	admin	PUBLISHED	2023-07-10 06:46:58.07	test javan version	100
297	2023-07-14 05:14:07.428	admin	admin	PUBLISHED	2023-07-14 05:14:19.719	Test Friday version\n	108
290	2023-07-11 05:20:14.476	admin	admin	PUBLISHED	2023-07-11 05:20:26.68	New Test	102
295	2023-07-11 11:42:19.513	admin	admin	PUBLISHED	2023-07-11 11:43:46.632	templates international instance 	106
299	2023-07-24 12:07:29.25	muyundo	muyundo	PUBLISHED	2023-07-24 12:07:45.23	Dammy	110
300	2023-07-24 12:18:34.311	muyundo	muyundo	PUBLISHED	2023-07-24 12:18:46.572	Dammy2210	111
301	2023-07-24 12:19:49.821	muyundo	muyundo	PUBLISHED	2023-07-24 12:20:02.013	Dammy6047	112
167	2023-05-19 05:01:55.85	admin	admin	PUBLISHED	2023-05-19 05:01:57.43	Test Load1	153
166	2023-05-19 04:50:48.159	admin	admin	PUBLISHED	2023-05-19 04:50:49.839	Test load	152
168	2023-05-19 05:02:35.435	admin	admin	PUBLISHED	2023-05-19 05:02:36.69	Test Load2	154
169	2023-05-19 05:04:53.978	admin	admin	PUBLISHED	2023-05-19 05:04:55.4	TestLoad3	155
170	2023-05-19 05:05:05.208	admin	admin	PUBLISHED	2023-05-19 05:05:10.02	Test 4 	156
171	2023-05-19 05:12:27.585	admin	admin	PUBLISHED	2023-05-19 05:12:28.884	testLoad	157
172	2023-05-19 05:13:47.047	muyundo	muyundo	PUBLISHED	2023-05-19 05:13:48.353	TestLoad	158
\.


--
-- Name: audit_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.audit_logs_id_seq', 31, true);


--
-- Name: benchmarks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.benchmarks_id_seq', 44, true);


--
-- Name: indicators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.indicators_id_seq', 1, false);


--
-- Name: mail_configuration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mail_configuration_id_seq', 6, true);


--
-- Name: notification_subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notification_subscription_id_seq', 47, true);


--
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notifications_id_seq', 380, true);


--
-- Name: versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.versions_id_seq', 304, true);


--
-- Name: audit_logs audit_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_logs
    ADD CONSTRAINT audit_logs_pkey PRIMARY KEY (id);


--
-- Name: benchmarks benchmarks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.benchmarks
    ADD CONSTRAINT benchmarks_pkey PRIMARY KEY (id);


--
-- Name: indicators indicators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indicators
    ADD CONSTRAINT indicators_pkey PRIMARY KEY (id);


--
-- Name: mail_configuration mail_configuration_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mail_configuration
    ADD CONSTRAINT mail_configuration_pkey PRIMARY KEY (id);


--
-- Name: metadata_json metadata_json_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.metadata_json
    ADD CONSTRAINT metadata_json_pkey PRIMARY KEY (id);


--
-- Name: notification_subscription notification_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification_subscription
    ADD CONSTRAINT notification_subscription_pkey PRIMARY KEY (id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: notification_subscription uk_5v591nj12l1rwj9osu9uif60t; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification_subscription
    ADD CONSTRAINT uk_5v591nj12l1rwj9osu9uif60t UNIQUE (email);


--
-- Name: versions versions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.versions
    ADD CONSTRAINT versions_pkey PRIMARY KEY (id);


--
-- Name: notification_entity_email_list fkgbnqsg6v1notycd69dqncknn9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notification_entity_email_list
    ADD CONSTRAINT fkgbnqsg6v1notycd69dqncknn9 FOREIGN KEY (notification_entity_id) REFERENCES public.notifications(id);


--
-- Name: version_entity_indicators fktwasuaung2fjaucijqipi6kj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.version_entity_indicators
    ADD CONSTRAINT fktwasuaung2fjaucijqipi6kj FOREIGN KEY (version_entity_id) REFERENCES public.versions(id);


--
-- PostgreSQL database dump complete
--

