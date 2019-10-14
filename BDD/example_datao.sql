

SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('companies', 'co_id'), 101, true);

SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('diary', 'dy_id'), 1001, true);


SELECT pg_catalog.setval(pg_catalog.pg_get_serial_sequence('orders', 'ord_id'), 1001, true);

--
-- Data for Name: ordre; Type: TABLE DATA; Schema: public; Owner: abir
--




COPY products (pr_code, pr_desc) FROM stdin;
MRWID	Medium Red Widget
SRWID	Small Red Widget
LRTHI	Large Red Thingummy
SRGIZ	Small Red Gizmo
SGTHI	Small Green Thingummy
MBBOG	Medium Blue Boggle
MBTHI	Medium Black Thingummy
MRBOG	Medium Red Boggle
DGBOG	Deluxe Green Boggle
LBWID	Large Black Widget
\.


COPY companies (co_id, co_name, co_postcode, co_lastchg) FROM stdin;
1	Worldwide Partnership Ltd	unknown	2007-10-06 16:20:10.889136
2	British Associates Inc	unknown	2007-10-06 16:20:10.894343
3	British Services Ltd	unknown	2007-10-06 16:20:10.89601
4	Worldwide Engineering Inc	unknown	2007-10-06 16:20:10.897578
5	Imperial Associates Corp	unknown	2007-10-06 16:20:10.899155
6	Continental Partnership Corp	unknown	2007-10-06 16:20:10.900851
7	United Services PLC	unknown	2007-10-06 16:20:10.902417
8	Imperial Services PLC	unknown	2007-10-06 16:20:10.903941
9	Continental Research PLC	unknown	2007-10-06 16:20:10.905486
10	Mammon Investments PLC	unknown	2007-10-06 16:20:10.907
11	Acme Investments Inc	unknown	2007-10-06 16:20:10.908605
12	British Partnership Corp	unknown	2007-10-06 16:20:10.910478
13	Universal Research PLC	unknown	2007-10-06 16:20:10.912014
14	Worldwide Services PLC	unknown	2007-10-06 16:20:10.913663
15	Continental Associates Ltd	unknown	2007-10-06 16:20:10.91524
16	Universal Services Ltd	unknown	2007-10-06 16:20:10.916752
17	British Services Inc	unknown	2007-10-06 16:20:10.918429
18	United Services Inc	unknown	2007-10-06 16:20:10.920014
19	Acme Industries Corp	unknown	2007-10-06 16:20:10.921701
20	Universal Partnership Inc	unknown	2007-10-06 16:20:10.923276
21	United Partnership PLC	unknown	2007-10-06 16:20:10.924804
22	Acme Partnership Corp	unknown	2007-10-06 16:20:10.926631
23	Continental Research Corp	unknown	2007-10-06 16:20:10.928222
24	Continental Industries Inc	unknown	2007-10-06 16:20:10.95064
25	Acme Engineering Ltd	unknown	2007-10-06 16:20:10.953059
26	Mammon Services Ltd	unknown	2007-10-06 16:20:10.954607
27	Worldwide Investments Corp	unknown	2007-10-06 16:20:10.956243
28	Continental Services Corp	unknown	2007-10-06 16:20:10.957788
29	Continental Research Inc	unknown	2007-10-06 16:20:10.959358
30	United Industries Corp	unknown	2007-10-06 16:20:10.960876
31	Imperial Services Ltd	unknown	2007-10-06 16:20:10.962418
32	Universal Associates Corp	unknown	2007-10-06 16:20:10.964515
33	United Engineering Inc	unknown	2007-10-06 16:20:10.96608
34	British Partnership PLC	unknown	2007-10-06 16:20:10.967605
35	Continental Partnership Ltd	unknown	2007-10-06 16:20:10.969172
36	Imperial Associates Ltd	unknown	2007-10-06 16:20:10.970815
37	Mammon Industries PLC	unknown	2007-10-06 16:20:10.972478
38	British Associates PLC	unknown	2007-10-06 16:20:10.974067
39	Universal Associates Inc	unknown	2007-10-06 16:20:10.975603
40	British Associates Ltd	unknown	2007-10-06 16:20:10.977147
41	United Engineering Corp	unknown	2007-10-06 16:20:10.978692
42	Imperial Research Corp	unknown	2007-10-06 16:20:10.980334
43	United Industries Inc	unknown	2007-10-06 16:20:10.981851
44	Acme Services Ltd	unknown	2007-10-06 16:20:10.983399
45	Continental Services Ltd	unknown	2007-10-06 16:20:10.984919
46	British Investments Inc	unknown	2007-10-06 16:20:10.98647
47	Mammon Associates Inc	unknown	2007-10-06 16:20:10.988756
48	Worldwide Industries Corp	unknown	2007-10-06 16:20:10.990741
49	Worldwide Partnership Corp	unknown	2007-10-06 16:20:10.99234
50	Acme Associates PLC	unknown	2007-10-06 16:20:11.009583
51	Imperial Investments Corp	unknown	2007-10-06 16:20:11.012284
52	Universal Associates PLC	unknown	2007-10-06 16:20:11.014268
53	Continental Associates PLC	unknown	2007-10-06 16:20:11.015907
54	Mammon Engineering Inc	unknown	2007-10-06 16:20:11.045061
55	Imperial Services Corp	unknown	2007-10-06 16:20:11.046643
56	Acme Research Ltd	unknown	2007-10-06 16:20:11.048339
57	Worldwide Investments Inc	unknown	2007-10-06 16:20:11.049918
58	Imperial Associates Inc	unknown	2007-10-06 16:20:11.051484
59	British Research Ltd	unknown	2007-10-06 16:20:11.05305
60	Worldwide Associates Ltd	unknown	2007-10-06 16:20:11.054668
61	Acme Associates Corp	unknown	2007-10-06 16:20:11.056608
62	Continental Investments Inc	unknown	2007-10-06 16:20:11.058228
63	United Research Inc	unknown	2007-10-06 16:20:11.059733
64	British Partnership Inc	unknown	2007-10-06 16:20:11.061273
65	Universal Services Corp	unknown	2007-10-06 16:20:11.062786
66	Worldwide Partnership PLC	unknown	2007-10-06 16:20:11.064344
67	Mammon Engineering Corp	unknown	2007-10-06 16:20:11.065856
68	Continental Investments Ltd	unknown	2007-10-06 16:20:11.067423
69	Continental Associates Corp	unknown	2007-10-06 16:20:11.068981
70	Imperial Engineering PLC	unknown	2007-10-06 16:20:11.070616
71	Acme Investments PLC	unknown	2007-10-06 16:20:11.072328
72	United Services Ltd	unknown	2007-10-06 16:20:11.073834
73	Imperial Partnership PLC	unknown	2007-10-06 16:20:11.075387
74	British Investments Corp	unknown	2007-10-06 16:20:11.076906
75	British Engineering Inc	unknown	2007-10-06 16:20:11.078471
76	Acme Partnership Inc	unknown	2007-10-06 16:20:11.080032
77	Universal Research Inc	unknown	2007-10-06 16:20:11.08156
78	United Investments Ltd	unknown	2007-10-06 16:20:11.083375
79	Acme Research Corp	unknown	2007-10-06 16:20:11.101091
80	Acme Industries Inc	unknown	2007-10-06 16:20:11.104689
81	United Research Ltd	unknown	2007-10-06 16:20:11.106742
82	United Engineering Ltd	unknown	2007-10-06 16:20:11.108429
83	Imperial Research Ltd	unknown	2007-10-06 16:20:11.109968
84	Universal Partnership Corp	unknown	2007-10-06 16:20:11.11153
85	Imperial Partnership Inc	unknown	2007-10-06 16:20:11.113183
86	British Industries Corp	unknown	2007-10-06 16:20:11.1147
87	Continental Services Inc	unknown	2007-10-06 16:20:11.116256
88	Universal Investments Ltd	unknown	2007-10-06 16:20:11.117797
89	Imperial Associates PLC	unknown	2007-10-06 16:20:11.119462
90	Universal Engineering Corp	unknown	2007-10-06 16:20:11.121174
91	British Industries PLC	unknown	2007-10-06 16:20:11.122687
92	British Industries Ltd	unknown	2007-10-06 16:20:11.124333
93	Universal Engineering Inc	unknown	2007-10-06 16:20:11.125874
94	British Investments Ltd	unknown	2007-10-06 16:20:11.127432
95	Universal Investments PLC	unknown	2007-10-06 16:20:11.128982
96	Imperial Partnership Corp	unknown	2007-10-06 16:20:11.130578
97	Mammon Services PLC	unknown	2007-10-06 16:20:11.132131
98	Continental Investments Corp	unknown	2007-10-06 16:20:11.133689
99	British Associates Corp	unknown	2007-10-06 16:20:11.135614
100	Universal Industries Ltd	unknown	2007-10-06 16:20:11.137327
\.


--
-- Data for Name: diary; Type: TABLE DATA; Schema: public; Owner: abir
--

COPY diary (dy_id, dy_company, dy_timestamp, dy_type, dy_notes) FROM stdin;
1	69	2002-05-30 00:00:00	NOTE	Yak yak yak
2	6	2002-02-19 00:00:00	NOTE	Blah blah blah blah blah
3	35	2002-04-12 00:00:00	NOTE	Yak yak yak
4	83	2002-08-20 00:00:00	NOTE	Rhubarb rhubarb rhubard
5	94	2002-05-02 00:00:00	NOTE	Blah blah blah blah blah
6	97	2002-08-30 00:00:00	NOTE	Rhubarb rhubarb rhubard
7	20	2002-08-30 00:00:00	NOTE	Whatever
8	64	2002-06-26 00:00:00	NOTE	Yak yak yak
9	58	2002-08-16 00:00:00	NOTE	Yak yak yak
10	91	2002-07-21 00:00:00	NOTE	Blah blah blah blah blah
11	85	2002-05-16 00:00:00	NOTE	Whatever
12	65	2002-08-21 00:00:00	NOTE	Yak yak yak
13	17	2001-12-25 00:00:00	NOTE	Blah blah blah blah blah
14	35	2001-10-22 00:00:00	NOTE	Yak yak yak
15	29	2002-06-23 00:00:00	NOTE	Rhubarb rhubarb rhubard
16	15	2002-05-18 00:00:00	NOTE	Yak yak yak
17	12	2002-03-13 00:00:00	NOTE	Rhubarb rhubarb rhubard
18	100	2002-06-12 00:00:00	NOTE	Blah blah blah blah blah
19	72	2001-12-15 00:00:00	NOTE	Yak yak yak
20	19	2002-07-22 00:00:00	NOTE	Yak yak yak
21	74	2002-01-22 00:00:00	NOTE	Rhubarb rhubarb rhubard
22	21	2002-02-04 00:00:00	NOTE	Whatever
23	91	2001-11-15 00:00:00	NOTE	Rhubarb rhubarb rhubard
24	43	2001-09-13 00:00:00	NOTE	Blah blah blah blah blah
25	2	2002-03-12 00:00:00	NOTE	Yak yak yak
26	46	2001-11-18 00:00:00	NOTE	Yak yak yak
27	41	2002-03-03 00:00:00	NOTE	Whatever
28	98	2001-12-15 00:00:00	NOTE	Rhubarb rhubarb rhubard
29	75	2002-04-03 00:00:00	NOTE	Blah blah blah blah blah
30	39	2001-11-16 00:00:00	NOTE	Rhubarb rhubarb rhubard
31	55	2002-07-14 00:00:00	NOTE	Blah blah blah blah blah
32	31	2002-08-28 00:00:00	NOTE	Yak yak yak
33	17	2002-06-30 00:00:00	NOTE	Whatever
34	85	2002-02-07 00:00:00	NOTE	Rhubarb rhubarb rhubard
35	19	2001-10-19 00:00:00	NOTE	Blah blah blah blah blah
36	92	2002-03-25 00:00:00	NOTE	Rhubarb rhubarb rhubard
37	18	2002-01-28 00:00:00	NOTE	Whatever
38	3	2002-07-13 00:00:00	NOTE	Whatever
39	22	2002-08-08 00:00:00	NOTE	Yak yak yak
40	39	2001-10-01 00:00:00	NOTE	Yak yak yak
41	2	2002-04-10 00:00:00	NOTE	Blah blah blah blah blah
42	97	2002-05-26 00:00:00	NOTE	Blah blah blah blah blah
43	9	2002-01-23 00:00:00	NOTE	Whatever
44	11	2002-09-05 00:00:00	NOTE	Whatever
45	81	2002-02-23 00:00:00	NOTE	Rhubarb rhubarb rhubard
46	3	2001-10-24 00:00:00	NOTE	Yak yak yak
47	65	2002-09-09 00:00:00	NOTE	Yak yak yak
48	36	2001-12-01 00:00:00	NOTE	Yak yak yak
49	14	2002-05-27 00:00:00	NOTE	Yak yak yak
50	18	2002-08-31 00:00:00	NOTE	Blah blah blah blah blah
51	51	2002-04-17 00:00:00	NOTE	Blah blah blah blah blah
52	23	2002-06-26 00:00:00	NOTE	Yak yak yak
53	67	2001-11-24 00:00:00	NOTE	Yak yak yak
54	32	2002-08-05 00:00:00	NOTE	Blah blah blah blah blah
55	57	2002-05-29 00:00:00	NOTE	Rhubarb rhubarb rhubard
56	79	2002-02-07 00:00:00	NOTE	Rhubarb rhubarb rhubard
57	89	2002-02-28 00:00:00	NOTE	Rhubarb rhubarb rhubard
58	65	2001-12-30 00:00:00	NOTE	Whatever
59	51	2001-12-11 00:00:00	NOTE	Rhubarb rhubarb rhubard
60	76	2001-11-17 00:00:00	NOTE	Rhubarb rhubarb rhubard
61	4	2001-12-23 00:00:00	NOTE	Rhubarb rhubarb rhubard
62	12	2002-08-06 00:00:00	NOTE	Yak yak yak
63	53	2002-04-02 00:00:00	NOTE	Yak yak yak
64	31	2002-09-08 00:00:00	NOTE	Whatever
65	18	2002-08-11 00:00:00	NOTE	Rhubarb rhubarb rhubard
66	100	2002-05-09 00:00:00	NOTE	Rhubarb rhubarb rhubard
67	2	2001-12-10 00:00:00	NOTE	Yak yak yak
68	99	2002-04-05 00:00:00	NOTE	Yak yak yak
69	40	2001-11-15 00:00:00	NOTE	Whatever
70	31	2002-07-12 00:00:00	NOTE	Blah blah blah blah blah
71	4	2002-01-31 00:00:00	NOTE	Whatever
72	85	2001-10-13 00:00:00	NOTE	Whatever
73	45	2002-07-01 00:00:00	NOTE	Yak yak yak
74	85	2002-08-07 00:00:00	NOTE	Whatever
75	23	2002-01-01 00:00:00	NOTE	Blah blah blah blah blah
76	43	2002-03-03 00:00:00	NOTE	Rhubarb rhubarb rhubard
77	88	2002-05-10 00:00:00	NOTE	Blah blah blah blah blah
78	91	2001-12-05 00:00:00	NOTE	Whatever
79	96	2002-06-10 00:00:00	NOTE	Whatever
80	2	2002-05-26 00:00:00	NOTE	Yak yak yak
81	6	2002-07-17 00:00:00	NOTE	Whatever
82	76	2001-12-31 00:00:00	NOTE	Rhubarb rhubarb rhubard
83	52	2001-12-15 00:00:00	NOTE	Rhubarb rhubarb rhubard
84	48	2001-11-27 00:00:00	NOTE	Whatever
85	12	2002-07-31 00:00:00	NOTE	Yak yak yak
86	33	2001-12-11 00:00:00	NOTE	Whatever
87	89	2001-11-23 00:00:00	NOTE	Blah blah blah blah blah
88	2	2002-06-22 00:00:00	NOTE	Yak yak yak
89	5	2001-10-06 00:00:00	NOTE	Whatever
90	58	2002-06-09 00:00:00	NOTE	Whatever
91	15	2002-04-12 00:00:00	NOTE	Yak yak yak
92	58	2002-03-05 00:00:00	NOTE	Yak yak yak
93	83	2002-02-08 00:00:00	NOTE	Rhubarb rhubarb rhubard
94	63	2001-12-06 00:00:00	NOTE	Rhubarb rhubarb rhubard
95	63	2002-06-20 00:00:00	NOTE	Yak yak yak
96	55	2002-03-25 00:00:00	NOTE	Yak yak yak
97	68	2002-09-11 00:00:00	NOTE	Blah blah blah blah blah
98	93	2002-04-01 00:00:00	NOTE	Whatever
99	34	2002-03-19 00:00:00	NOTE	Rhubarb rhubarb rhubard
100	76	2002-06-23 00:00:00	NOTE	Rhubarb rhubarb rhubard
101	67	2002-07-01 00:00:00	NOTE	Blah blah blah blah blah
102	20	2002-09-11 00:00:00	NOTE	Yak yak yak
103	23	2002-09-08 00:00:00	NOTE	Whatever
104	22	2001-09-28 00:00:00	NOTE	Whatever
105	34	2002-03-23 00:00:00	NOTE	Yak yak yak
106	3	2001-10-03 00:00:00	NOTE	Whatever
107	57	2002-08-28 00:00:00	NOTE	Yak yak yak
108	2	2001-12-26 00:00:00	NOTE	Yak yak yak
109	56	2001-09-16 00:00:00	NOTE	Whatever
110	73	2001-10-25 00:00:00	NOTE	Blah blah blah blah blah
111	97	2002-05-25 00:00:00	NOTE	Yak yak yak
112	91	2002-06-27 00:00:00	NOTE	Whatever
113	22	2002-04-08 00:00:00	NOTE	Blah blah blah blah blah
114	98	2002-03-08 00:00:00	NOTE	Rhubarb rhubarb rhubard
115	99	2001-11-17 00:00:00	NOTE	Rhubarb rhubarb rhubard
116	99	2002-05-23 00:00:00	NOTE	Blah blah blah blah blah
117	10	2002-02-02 00:00:00	NOTE	Blah blah blah blah blah
118	19	2002-04-23 00:00:00	NOTE	Blah blah blah blah blah
119	18	2001-09-19 00:00:00	NOTE	Rhubarb rhubarb rhubard
120	62	2002-07-14 00:00:00	NOTE	Yak yak yak
121	12	2002-07-25 00:00:00	NOTE	Rhubarb rhubarb rhubard
122	21	2002-09-01 00:00:00	NOTE	Yak yak yak
123	15	2002-09-08 00:00:00	NOTE	Blah blah blah blah blah
124	68	2002-09-09 00:00:00	NOTE	Yak yak yak
125	40	2002-08-13 00:00:00	NOTE	Yak yak yak
126	49	2002-06-30 00:00:00	NOTE	Yak yak yak
127	50	2002-09-12 00:00:00	NOTE	Whatever
128	1	2002-04-30 00:00:00	NOTE	Whatever
129	51	2002-06-05 00:00:00	NOTE	Whatever
130	24	2002-09-06 00:00:00	NOTE	Rhubarb rhubarb rhubard
131	19	2002-02-02 00:00:00	NOTE	Whatever
132	57	2002-02-02 00:00:00	NOTE	Yak yak yak
133	68	2001-09-14 00:00:00	NOTE	Rhubarb rhubarb rhubard
134	29	2002-08-17 00:00:00	NOTE	Yak yak yak
135	88	2002-04-02 00:00:00	NOTE	Yak yak yak
136	59	2002-05-21 00:00:00	NOTE	Yak yak yak
137	72	2001-09-13 00:00:00	NOTE	Blah blah blah blah blah
138	13	2002-02-25 00:00:00	NOTE	Whatever
139	97	2001-11-13 00:00:00	NOTE	Yak yak yak
140	100	2002-02-09 00:00:00	NOTE	Yak yak yak
141	4	2001-12-06 00:00:00	NOTE	Yak yak yak
142	92	2002-06-17 00:00:00	NOTE	Whatever
143	79	2001-09-21 00:00:00	NOTE	Blah blah blah blah blah
144	53	2001-11-20 00:00:00	NOTE	Blah blah blah blah blah
145	12	2001-10-28 00:00:00	NOTE	Blah blah blah blah blah
146	20	2002-01-31 00:00:00	NOTE	Yak yak yak
147	16	2002-07-19 00:00:00	NOTE	Whatever
148	97	2002-07-16 00:00:00	NOTE	Whatever
149	34	2001-12-30 00:00:00	NOTE	Whatever
150	87	2002-07-13 00:00:00	NOTE	Rhubarb rhubarb rhubard
151	33	2002-04-07 00:00:00	NOTE	Yak yak yak
152	14	2002-01-14 00:00:00	NOTE	Whatever
153	73	2002-06-23 00:00:00	NOTE	Yak yak yak
154	41	2002-05-18 00:00:00	NOTE	Blah blah blah blah blah
155	29	2002-04-12 00:00:00	NOTE	Whatever
156	84	2002-05-13 00:00:00	NOTE	Whatever
157	54	2002-04-18 00:00:00	NOTE	Yak yak yak
158	41	2002-06-04 00:00:00	NOTE	Yak yak yak
159	52	2002-07-15 00:00:00	NOTE	Yak yak yak
160	10	2002-02-07 00:00:00	NOTE	Rhubarb rhubarb rhubard
161	32	2002-03-23 00:00:00	NOTE	Whatever
162	99	2002-01-15 00:00:00	NOTE	Yak yak yak
163	28	2001-12-24 00:00:00	NOTE	Rhubarb rhubarb rhubard
164	53	2001-09-25 00:00:00	NOTE	Yak yak yak
165	4	2001-10-12 00:00:00	NOTE	Rhubarb rhubarb rhubard
166	33	2001-12-12 00:00:00	NOTE	Blah blah blah blah blah
167	74	2001-11-03 00:00:00	NOTE	Rhubarb rhubarb rhubard
168	88	2002-05-17 00:00:00	NOTE	Blah blah blah blah blah
169	15	2002-03-28 00:00:00	NOTE	Yak yak yak
170	96	2001-10-24 00:00:00	NOTE	Yak yak yak
171	80	2002-09-12 00:00:00	NOTE	Whatever
172	31	2001-11-24 00:00:00	NOTE	Blah blah blah blah blah
173	94	2001-12-21 00:00:00	NOTE	Yak yak yak
174	39	2002-07-04 00:00:00	NOTE	Whatever
175	9	2001-10-23 00:00:00	NOTE	Rhubarb rhubarb rhubard
176	98	2001-10-26 00:00:00	NOTE	Rhubarb rhubarb rhubard
177	62	2002-05-06 00:00:00	NOTE	Blah blah blah blah blah
178	25	2002-08-04 00:00:00	NOTE	Whatever
179	66	2001-10-07 00:00:00	NOTE	Whatever
180	77	2002-07-12 00:00:00	NOTE	Blah blah blah blah blah
181	33	2002-06-06 00:00:00	NOTE	Blah blah blah blah blah
182	12	2002-07-01 00:00:00	NOTE	Whatever
183	93	2002-01-14 00:00:00	NOTE	Rhubarb rhubarb rhubard
184	14	2001-11-19 00:00:00	NOTE	Blah blah blah blah blah
185	14	2002-07-08 00:00:00	NOTE	Rhubarb rhubarb rhubard
186	22	2001-11-23 00:00:00	NOTE	Yak yak yak
187	44	2002-08-04 00:00:00	NOTE	Blah blah blah blah blah
188	14	2002-01-12 00:00:00	NOTE	Rhubarb rhubarb rhubard
189	15	2002-06-16 00:00:00	NOTE	Rhubarb rhubarb rhubard
190	5	2002-01-05 00:00:00	NOTE	Yak yak yak
191	82	2001-09-18 00:00:00	NOTE	Blah blah blah blah blah
192	11	2001-12-17 00:00:00	NOTE	Yak yak yak
193	92	2002-04-01 00:00:00	NOTE	Blah blah blah blah blah
194	51	2001-11-13 00:00:00	NOTE	Whatever
195	30	2002-03-12 00:00:00	NOTE	Yak yak yak
196	78	2002-06-20 00:00:00	NOTE	Blah blah blah blah blah
197	100	2002-05-03 00:00:00	NOTE	Blah blah blah blah blah
198	22	2002-06-13 00:00:00	NOTE	Yak yak yak
199	9	2002-05-13 00:00:00	NOTE	Rhubarb rhubarb rhubard
200	16	2002-01-25 00:00:00	NOTE	Rhubarb rhubarb rhubard
201	98	2002-04-22 00:00:00	NOTE	Blah blah blah blah blah
202	29	2002-02-17 00:00:00	NOTE	Whatever
203	6	2002-08-11 00:00:00	NOTE	Yak yak yak
204	43	2002-04-11 00:00:00	NOTE	Blah blah blah blah blah
205	86	2002-03-01 00:00:00	NOTE	Blah blah blah blah blah
206	81	2002-01-26 00:00:00	NOTE	Blah blah blah blah blah
207	74	2002-01-15 00:00:00	NOTE	Yak yak yak
208	36	2001-11-05 00:00:00	NOTE	Yak yak yak
209	22	2001-12-04 00:00:00	NOTE	Blah blah blah blah blah
210	93	2001-12-12 00:00:00	NOTE	Blah blah blah blah blah
211	70	2002-03-06 00:00:00	NOTE	Rhubarb rhubarb rhubard
212	83	2002-06-13 00:00:00	NOTE	Blah blah blah blah blah
213	53	2001-12-30 00:00:00	NOTE	Rhubarb rhubarb rhubard
214	12	2001-11-28 00:00:00	NOTE	Whatever
215	71	2002-02-23 00:00:00	NOTE	Blah blah blah blah blah
216	17	2002-06-21 00:00:00	NOTE	Yak yak yak
217	95	2002-08-26 00:00:00	NOTE	Blah blah blah blah blah
218	58	2001-12-09 00:00:00	NOTE	Blah blah blah blah blah
219	52	2002-06-30 00:00:00	NOTE	Yak yak yak
220	91	2001-11-15 00:00:00	NOTE	Blah blah blah blah blah
221	68	2001-12-08 00:00:00	NOTE	Whatever
222	13	2002-08-17 00:00:00	NOTE	Whatever
223	47	2001-12-13 00:00:00	NOTE	Rhubarb rhubarb rhubard
224	9	2001-12-08 00:00:00	NOTE	Whatever
225	48	2001-11-22 00:00:00	NOTE	Yak yak yak
226	98	2001-09-30 00:00:00	NOTE	Rhubarb rhubarb rhubard
227	9	2002-05-13 00:00:00	NOTE	Blah blah blah blah blah
228	38	2002-05-06 00:00:00	NOTE	Yak yak yak
229	94	2001-09-24 00:00:00	NOTE	Yak yak yak
230	65	2002-05-08 00:00:00	NOTE	Blah blah blah blah blah
231	74	2002-05-10 00:00:00	NOTE	Whatever
232	80	2002-04-19 00:00:00	NOTE	Blah blah blah blah blah
233	28	2002-07-13 00:00:00	NOTE	Blah blah blah blah blah
234	5	2002-08-12 00:00:00	NOTE	Rhubarb rhubarb rhubard
235	4	2002-06-29 00:00:00	NOTE	Blah blah blah blah blah
236	2	2002-05-10 00:00:00	NOTE	Rhubarb rhubarb rhubard
237	68	2002-06-21 00:00:00	NOTE	Whatever
238	86	2002-08-16 00:00:00	NOTE	Whatever
239	58	2002-02-07 00:00:00	NOTE	Whatever
240	54	2002-08-03 00:00:00	NOTE	Blah blah blah blah blah
241	11	2001-12-06 00:00:00	NOTE	Yak yak yak
242	20	2002-01-13 00:00:00	NOTE	Rhubarb rhubarb rhubard
243	91	2001-12-23 00:00:00	NOTE	Yak yak yak
244	91	2001-12-21 00:00:00	NOTE	Rhubarb rhubarb rhubard
245	5	2002-02-19 00:00:00	NOTE	Yak yak yak
246	46	2001-12-06 00:00:00	NOTE	Blah blah blah blah blah
247	3	2001-10-01 00:00:00	NOTE	Blah blah blah blah blah
248	39	2001-10-07 00:00:00	NOTE	Whatever
249	26	2002-04-14 00:00:00	NOTE	Yak yak yak
250	18	2002-03-11 00:00:00	NOTE	Blah blah blah blah blah
251	80	2001-09-19 00:00:00	NOTE	Rhubarb rhubarb rhubard
252	47	2002-01-28 00:00:00	NOTE	Yak yak yak
253	11	2001-12-06 00:00:00	NOTE	Whatever
254	20	2002-05-14 00:00:00	NOTE	Blah blah blah blah blah
255	64	2002-01-29 00:00:00	NOTE	Whatever
256	69	2002-08-18 00:00:00	NOTE	Whatever
257	17	2002-04-20 00:00:00	NOTE	Whatever
258	53	2001-11-15 00:00:00	NOTE	Whatever
259	91	2001-11-02 00:00:00	NOTE	Rhubarb rhubarb rhubard
260	37	2002-01-06 00:00:00	NOTE	Yak yak yak
261	28	2001-09-23 00:00:00	NOTE	Rhubarb rhubarb rhubard
262	79	2002-03-22 00:00:00	NOTE	Blah blah blah blah blah
263	79	2002-05-26 00:00:00	NOTE	Whatever
264	85	2002-08-24 00:00:00	NOTE	Blah blah blah blah blah
265	19	2002-01-17 00:00:00	NOTE	Blah blah blah blah blah
266	14	2002-03-01 00:00:00	NOTE	Yak yak yak
267	17	2002-01-15 00:00:00	NOTE	Whatever
268	9	2001-12-27 00:00:00	NOTE	Blah blah blah blah blah
269	100	2002-04-12 00:00:00	NOTE	Yak yak yak
270	97	2002-05-04 00:00:00	NOTE	Blah blah blah blah blah
271	71	2002-04-24 00:00:00	NOTE	Yak yak yak
272	47	2001-10-11 00:00:00	NOTE	Rhubarb rhubarb rhubard
273	27	2002-01-26 00:00:00	NOTE	Whatever
274	46	2002-02-17 00:00:00	NOTE	Yak yak yak
275	9	2002-05-14 00:00:00	NOTE	Yak yak yak
276	27	2001-10-11 00:00:00	NOTE	Blah blah blah blah blah
277	58	2002-06-06 00:00:00	NOTE	Whatever
278	95	2002-04-01 00:00:00	NOTE	Whatever
279	67	2001-11-16 00:00:00	NOTE	Whatever
280	23	2002-08-30 00:00:00	NOTE	Rhubarb rhubarb rhubard
281	91	2001-11-21 00:00:00	NOTE	Yak yak yak
282	81	2002-03-18 00:00:00	NOTE	Yak yak yak
283	10	2002-06-14 00:00:00	NOTE	Yak yak yak
284	12	2002-02-24 00:00:00	NOTE	Whatever
285	81	2002-02-22 00:00:00	NOTE	Rhubarb rhubarb rhubard
286	72	2002-01-11 00:00:00	NOTE	Whatever
287	97	2001-12-22 00:00:00	NOTE	Rhubarb rhubarb rhubard
288	48	2002-04-06 00:00:00	NOTE	Blah blah blah blah blah
289	68	2002-05-16 00:00:00	NOTE	Whatever
290	20	2001-11-08 00:00:00	NOTE	Whatever
291	52	2002-07-24 00:00:00	NOTE	Blah blah blah blah blah
292	43	2001-11-21 00:00:00	NOTE	Whatever
293	11	2001-10-29 00:00:00	NOTE	Whatever
294	62	2002-01-15 00:00:00	NOTE	Yak yak yak
295	45	2001-10-01 00:00:00	NOTE	Whatever
296	31	2002-09-13 00:00:00	NOTE	Whatever
297	90	2001-10-02 00:00:00	NOTE	Rhubarb rhubarb rhubard
298	67	2002-06-29 00:00:00	NOTE	Blah blah blah blah blah
299	45	2001-12-23 00:00:00	NOTE	Rhubarb rhubarb rhubard
300	20	2001-09-19 00:00:00	NOTE	Yak yak yak
301	38	2002-04-05 00:00:00	NOTE	Yak yak yak
302	100	2002-07-05 00:00:00	NOTE	Blah blah blah blah blah
303	84	2002-07-03 00:00:00	NOTE	Rhubarb rhubarb rhubard
304	76	2002-03-05 00:00:00	NOTE	Yak yak yak
305	26	2001-09-21 00:00:00	NOTE	Rhubarb rhubarb rhubard
306	57	2002-08-13 00:00:00	NOTE	Whatever
307	45	2002-03-22 00:00:00	NOTE	Blah blah blah blah blah
308	22	2002-04-26 00:00:00	NOTE	Blah blah blah blah blah
309	71	2002-05-04 00:00:00	NOTE	Yak yak yak
310	82	2002-01-05 00:00:00	NOTE	Yak yak yak
311	66	2002-03-01 00:00:00	NOTE	Rhubarb rhubarb rhubard
312	59	2002-01-02 00:00:00	NOTE	Whatever
313	23	2002-03-30 00:00:00	NOTE	Yak yak yak
314	71	2002-03-01 00:00:00	NOTE	Blah blah blah blah blah
315	36	2002-07-28 00:00:00	NOTE	Blah blah blah blah blah
316	86	2002-05-31 00:00:00	NOTE	Rhubarb rhubarb rhubard
317	92	2001-09-29 00:00:00	NOTE	Blah blah blah blah blah
318	71	2001-10-27 00:00:00	NOTE	Rhubarb rhubarb rhubard
319	71	2001-10-01 00:00:00	NOTE	Blah blah blah blah blah
320	11	2002-05-09 00:00:00	NOTE	Whatever
321	12	2001-10-07 00:00:00	NOTE	Whatever
322	30	2002-03-12 00:00:00	NOTE	Blah blah blah blah blah
323	53	2001-11-30 00:00:00	NOTE	Blah blah blah blah blah
324	64	2002-05-07 00:00:00	NOTE	Yak yak yak
325	26	2001-10-12 00:00:00	NOTE	Whatever
326	33	2001-11-30 00:00:00	NOTE	Rhubarb rhubarb rhubard
327	61	2002-07-30 00:00:00	NOTE	Rhubarb rhubarb rhubard
328	72	2001-10-15 00:00:00	NOTE	Rhubarb rhubarb rhubard
329	97	2001-12-08 00:00:00	NOTE	Whatever
330	87	2002-01-27 00:00:00	NOTE	Yak yak yak
331	96	2002-08-16 00:00:00	NOTE	Blah blah blah blah blah
332	11	2002-09-11 00:00:00	NOTE	Rhubarb rhubarb rhubard
333	69	2001-10-23 00:00:00	NOTE	Yak yak yak
334	39	2002-06-11 00:00:00	NOTE	Blah blah blah blah blah
335	16	2001-12-03 00:00:00	NOTE	Yak yak yak
336	97	2001-11-17 00:00:00	NOTE	Blah blah blah blah blah
337	14	2002-01-02 00:00:00	NOTE	Blah blah blah blah blah
338	99	2002-02-15 00:00:00	NOTE	Blah blah blah blah blah
339	87	2002-06-25 00:00:00	NOTE	Yak yak yak
340	52	2002-05-09 00:00:00	NOTE	Whatever
341	51	2001-11-20 00:00:00	NOTE	Blah blah blah blah blah
342	71	2002-03-07 00:00:00	NOTE	Blah blah blah blah blah
343	48	2002-01-06 00:00:00	NOTE	Yak yak yak
344	16	2001-12-05 00:00:00	NOTE	Whatever
345	74	2001-10-19 00:00:00	NOTE	Rhubarb rhubarb rhubard
346	55	2001-11-29 00:00:00	NOTE	Yak yak yak
347	98	2001-12-08 00:00:00	NOTE	Yak yak yak
348	44	2002-03-05 00:00:00	NOTE	Whatever
349	67	2002-08-23 00:00:00	NOTE	Yak yak yak
350	81	2002-05-04 00:00:00	NOTE	Rhubarb rhubarb rhubard
351	24	2001-10-03 00:00:00	NOTE	Rhubarb rhubarb rhubard
352	4	2002-06-29 00:00:00	NOTE	Yak yak yak
353	82	2002-06-08 00:00:00	NOTE	Blah blah blah blah blah
354	74	2002-01-05 00:00:00	NOTE	Blah blah blah blah blah
355	40	2002-01-13 00:00:00	NOTE	Whatever
356	91	2002-07-04 00:00:00	NOTE	Yak yak yak
357	9	2001-10-29 00:00:00	NOTE	Yak yak yak
358	34	2001-11-26 00:00:00	NOTE	Yak yak yak
359	61	2002-05-21 00:00:00	NOTE	Whatever
360	54	2001-09-22 00:00:00	NOTE	Yak yak yak
361	42	2001-10-08 00:00:00	NOTE	Yak yak yak
362	40	2002-03-15 00:00:00	NOTE	Blah blah blah blah blah
363	4	2002-05-01 00:00:00	NOTE	Whatever
364	50	2001-12-25 00:00:00	NOTE	Yak yak yak
365	29	2002-07-19 00:00:00	NOTE	Blah blah blah blah blah
366	35	2002-05-30 00:00:00	NOTE	Yak yak yak
367	31	2002-09-06 00:00:00	NOTE	Yak yak yak
368	1	2002-06-18 00:00:00	NOTE	Yak yak yak
369	2	2002-02-12 00:00:00	NOTE	Whatever
370	56	2002-09-04 00:00:00	NOTE	Rhubarb rhubarb rhubard
371	61	2001-10-11 00:00:00	NOTE	Whatever
372	18	2001-10-23 00:00:00	NOTE	Whatever
373	54	2001-10-14 00:00:00	NOTE	Yak yak yak
374	6	2001-09-30 00:00:00	NOTE	Blah blah blah blah blah
375	15	2002-09-01 00:00:00	NOTE	Yak yak yak
376	23	2001-11-12 00:00:00	NOTE	Rhubarb rhubarb rhubard
377	46	2001-09-15 00:00:00	NOTE	Rhubarb rhubarb rhubard
378	32	2001-11-30 00:00:00	NOTE	Rhubarb rhubarb rhubard
379	68	2002-04-18 00:00:00	NOTE	Blah blah blah blah blah
380	6	2002-02-01 00:00:00	NOTE	Whatever
381	14	2002-08-05 00:00:00	NOTE	Yak yak yak
382	92	2002-05-01 00:00:00	NOTE	Rhubarb rhubarb rhubard
383	35	2001-11-02 00:00:00	NOTE	Rhubarb rhubarb rhubard
384	10	2001-09-30 00:00:00	NOTE	Rhubarb rhubarb rhubard
385	56	2002-02-17 00:00:00	NOTE	Rhubarb rhubarb rhubard
386	68	2002-06-11 00:00:00	NOTE	Whatever
387	75	2002-02-06 00:00:00	NOTE	Rhubarb rhubarb rhubard
388	56	2002-01-11 00:00:00	NOTE	Whatever
389	74	2002-02-01 00:00:00	NOTE	Whatever
390	38	2002-07-17 00:00:00	NOTE	Rhubarb rhubarb rhubard
391	58	2002-02-06 00:00:00	NOTE	Whatever
392	81	2002-01-11 00:00:00	NOTE	Blah blah blah blah blah
393	6	2002-03-12 00:00:00	NOTE	Whatever
394	34	2002-08-16 00:00:00	NOTE	Rhubarb rhubarb rhubard
395	53	2002-03-26 00:00:00	NOTE	Whatever
396	13	2001-10-28 00:00:00	NOTE	Rhubarb rhubarb rhubard
397	24	2002-05-17 00:00:00	NOTE	Blah blah blah blah blah
398	43	2002-02-02 00:00:00	NOTE	Rhubarb rhubarb rhubard
399	88	2002-03-26 00:00:00	NOTE	Rhubarb rhubarb rhubard
400	30	2002-06-30 00:00:00	NOTE	Rhubarb rhubarb rhubard
401	79	2002-06-02 00:00:00	NOTE	Blah blah blah blah blah
402	53	2002-03-29 00:00:00	NOTE	Yak yak yak
403	5	2001-10-04 00:00:00	NOTE	Rhubarb rhubarb rhubard
404	13	2002-06-10 00:00:00	NOTE	Whatever
405	7	2002-07-02 00:00:00	NOTE	Yak yak yak
406	31	2002-05-21 00:00:00	NOTE	Blah blah blah blah blah
407	83	2002-08-23 00:00:00	NOTE	Blah blah blah blah blah
408	65	2001-11-06 00:00:00	NOTE	Whatever
409	22	2001-12-06 00:00:00	NOTE	Rhubarb rhubarb rhubard
410	87	2002-06-16 00:00:00	NOTE	Blah blah blah blah blah
411	6	2002-04-18 00:00:00	NOTE	Yak yak yak
412	37	2002-02-23 00:00:00	NOTE	Yak yak yak
413	1	2002-08-07 00:00:00	NOTE	Yak yak yak
414	12	2001-09-21 00:00:00	NOTE	Rhubarb rhubarb rhubard
415	82	2002-05-29 00:00:00	NOTE	Yak yak yak
416	53	2002-03-03 00:00:00	NOTE	Blah blah blah blah blah
417	62	2002-06-12 00:00:00	NOTE	Whatever
418	16	2002-04-03 00:00:00	NOTE	Blah blah blah blah blah
419	40	2002-02-07 00:00:00	NOTE	Yak yak yak
420	44	2002-06-29 00:00:00	NOTE	Whatever
421	10	2002-08-31 00:00:00	NOTE	Rhubarb rhubarb rhubard
422	24	2002-06-18 00:00:00	NOTE	Rhubarb rhubarb rhubard
423	7	2002-04-20 00:00:00	NOTE	Yak yak yak
424	71	2002-02-17 00:00:00	NOTE	Yak yak yak
425	60	2002-09-05 00:00:00	NOTE	Whatever
426	52	2002-04-05 00:00:00	NOTE	Rhubarb rhubarb rhubard
427	72	2001-11-11 00:00:00	NOTE	Whatever
428	5	2002-04-18 00:00:00	NOTE	Yak yak yak
429	42	2002-08-14 00:00:00	NOTE	Yak yak yak
430	15	2002-01-16 00:00:00	NOTE	Whatever
431	94	2002-05-21 00:00:00	NOTE	Whatever
432	9	2001-12-02 00:00:00	NOTE	Blah blah blah blah blah
433	47	2001-10-07 00:00:00	NOTE	Blah blah blah blah blah
434	11	2002-04-16 00:00:00	NOTE	Whatever
435	87	2002-08-30 00:00:00	NOTE	Rhubarb rhubarb rhubard
436	28	2001-10-03 00:00:00	NOTE	Rhubarb rhubarb rhubard
437	77	2001-10-07 00:00:00	NOTE	Blah blah blah blah blah
438	49	2001-12-15 00:00:00	NOTE	Rhubarb rhubarb rhubard
439	29	2002-02-25 00:00:00	NOTE	Whatever
440	30	2002-07-09 00:00:00	NOTE	Whatever
441	43	2002-01-07 00:00:00	NOTE	Yak yak yak
442	42	2001-09-24 00:00:00	NOTE	Yak yak yak
443	66	2002-02-01 00:00:00	NOTE	Blah blah blah blah blah
444	27	2001-12-02 00:00:00	NOTE	Rhubarb rhubarb rhubard
445	71	2002-02-22 00:00:00	NOTE	Rhubarb rhubarb rhubard
446	34	2002-05-28 00:00:00	NOTE	Whatever
447	80	2001-10-13 00:00:00	NOTE	Rhubarb rhubarb rhubard
448	4	2001-12-01 00:00:00	NOTE	Whatever
449	31	2001-10-27 00:00:00	NOTE	Rhubarb rhubarb rhubard
450	12	2002-03-05 00:00:00	NOTE	Rhubarb rhubarb rhubard
451	60	2002-07-27 00:00:00	NOTE	Whatever
452	30	2001-10-16 00:00:00	NOTE	Yak yak yak
453	18	2001-12-10 00:00:00	NOTE	Rhubarb rhubarb rhubard
454	51	2002-09-08 00:00:00	NOTE	Yak yak yak
455	29	2002-02-15 00:00:00	NOTE	Rhubarb rhubarb rhubard
456	38	2002-01-27 00:00:00	NOTE	Rhubarb rhubarb rhubard
457	6	2002-05-13 00:00:00	NOTE	Rhubarb rhubarb rhubard
458	66	2002-06-27 00:00:00	NOTE	Blah blah blah blah blah
459	23	2002-02-17 00:00:00	NOTE	Yak yak yak
460	28	2001-11-30 00:00:00	NOTE	Blah blah blah blah blah
461	69	2001-09-20 00:00:00	NOTE	Blah blah blah blah blah
462	100	2001-09-17 00:00:00	NOTE	Whatever
463	16	2002-05-07 00:00:00	NOTE	Whatever
464	52	2001-10-20 00:00:00	NOTE	Blah blah blah blah blah
465	69	2002-08-12 00:00:00	NOTE	Whatever
466	29	2001-10-07 00:00:00	NOTE	Blah blah blah blah blah
467	27	2002-08-03 00:00:00	NOTE	Whatever
468	46	2001-10-15 00:00:00	NOTE	Whatever
469	59	2002-01-08 00:00:00	NOTE	Rhubarb rhubarb rhubard
470	62	2002-06-09 00:00:00	NOTE	Yak yak yak
471	78	2001-11-17 00:00:00	NOTE	Rhubarb rhubarb rhubard
472	65	2002-05-18 00:00:00	NOTE	Blah blah blah blah blah
473	93	2001-12-29 00:00:00	NOTE	Whatever
474	59	2002-03-26 00:00:00	NOTE	Blah blah blah blah blah
475	79	2002-01-03 00:00:00	NOTE	Yak yak yak
476	90	2002-05-26 00:00:00	NOTE	Blah blah blah blah blah
477	59	2001-09-24 00:00:00	NOTE	Whatever
478	14	2002-04-23 00:00:00	NOTE	Blah blah blah blah blah
479	49	2002-04-26 00:00:00	NOTE	Whatever
480	14	2002-06-27 00:00:00	NOTE	Rhubarb rhubarb rhubard
481	34	2002-02-04 00:00:00	NOTE	Blah blah blah blah blah
482	35	2002-06-05 00:00:00	NOTE	Whatever
483	4	2001-10-12 00:00:00	NOTE	Whatever
484	65	2002-02-12 00:00:00	NOTE	Blah blah blah blah blah
485	27	2002-07-23 00:00:00	NOTE	Yak yak yak
486	3	2002-01-18 00:00:00	NOTE	Yak yak yak
487	55	2002-04-30 00:00:00	NOTE	Blah blah blah blah blah
488	55	2002-03-14 00:00:00	NOTE	Yak yak yak
489	91	2002-01-26 00:00:00	NOTE	Yak yak yak
490	71	2002-07-20 00:00:00	NOTE	Rhubarb rhubarb rhubard
491	74	2002-02-12 00:00:00	NOTE	Yak yak yak
492	55	2002-09-02 00:00:00	NOTE	Rhubarb rhubarb rhubard
493	86	2001-12-31 00:00:00	NOTE	Blah blah blah blah blah
494	52	2002-06-02 00:00:00	NOTE	Rhubarb rhubarb rhubard
495	92	2002-04-28 00:00:00	NOTE	Rhubarb rhubarb rhubard
496	77	2001-12-03 00:00:00	NOTE	Rhubarb rhubarb rhubard
497	86	2002-05-11 00:00:00	NOTE	Yak yak yak
498	32	2002-01-17 00:00:00	NOTE	Blah blah blah blah blah
499	63	2002-01-08 00:00:00	NOTE	Yak yak yak
500	71	2002-02-24 00:00:00	NOTE	Rhubarb rhubarb rhubard
501	12	2002-04-24 00:00:00	NOTE	Rhubarb rhubarb rhubard
502	44	2001-09-27 00:00:00	NOTE	Rhubarb rhubarb rhubard
503	95	2002-09-05 00:00:00	NOTE	Blah blah blah blah blah
504	87	2001-10-14 00:00:00	NOTE	Whatever
505	36	2001-11-15 00:00:00	NOTE	Blah blah blah blah blah
506	57	2001-12-30 00:00:00	NOTE	Yak yak yak
507	76	2001-11-24 00:00:00	NOTE	Whatever
508	38	2002-01-22 00:00:00	NOTE	Whatever
509	51	2002-04-01 00:00:00	NOTE	Whatever
510	39	2002-03-26 00:00:00	NOTE	Rhubarb rhubarb rhubard
511	67	2001-10-23 00:00:00	NOTE	Whatever
512	58	2002-07-29 00:00:00	NOTE	Yak yak yak
513	58	2002-01-13 00:00:00	NOTE	Blah blah blah blah blah
514	77	2001-12-17 00:00:00	NOTE	Rhubarb rhubarb rhubard
515	10	2001-12-12 00:00:00	NOTE	Blah blah blah blah blah
516	90	2001-12-22 00:00:00	NOTE	Yak yak yak
517	45	2002-08-03 00:00:00	NOTE	Blah blah blah blah blah
518	36	2002-04-11 00:00:00	NOTE	Rhubarb rhubarb rhubard
519	35	2002-01-01 00:00:00	NOTE	Blah blah blah blah blah
520	56	2002-04-29 00:00:00	NOTE	Blah blah blah blah blah
521	48	2001-09-18 00:00:00	NOTE	Rhubarb rhubarb rhubard
522	5	2002-06-27 00:00:00	NOTE	Yak yak yak
523	61	2002-03-27 00:00:00	NOTE	Blah blah blah blah blah
524	44	2001-12-19 00:00:00	NOTE	Yak yak yak
525	81	2001-12-29 00:00:00	NOTE	Blah blah blah blah blah
526	81	2001-11-26 00:00:00	NOTE	Yak yak yak
527	6	2002-02-13 00:00:00	NOTE	Rhubarb rhubarb rhubard
528	2	2001-10-04 00:00:00	NOTE	Rhubarb rhubarb rhubard
529	45	2002-06-10 00:00:00	NOTE	Whatever
530	24	2002-05-05 00:00:00	NOTE	Blah blah blah blah blah
531	22	2002-01-14 00:00:00	NOTE	Yak yak yak
532	49	2001-11-18 00:00:00	NOTE	Whatever
533	12	2002-02-14 00:00:00	NOTE	Blah blah blah blah blah
534	8	2001-11-26 00:00:00	NOTE	Yak yak yak
535	2	2001-09-13 00:00:00	NOTE	Yak yak yak
536	3	2002-03-10 00:00:00	NOTE	Yak yak yak
537	51	2002-04-25 00:00:00	NOTE	Yak yak yak
538	67	2002-02-27 00:00:00	NOTE	Blah blah blah blah blah
539	99	2002-06-25 00:00:00	NOTE	Yak yak yak
540	87	2002-08-01 00:00:00	NOTE	Whatever
541	41	2002-08-23 00:00:00	NOTE	Yak yak yak
542	98	2001-12-12 00:00:00	NOTE	Rhubarb rhubarb rhubard
543	43	2001-09-21 00:00:00	NOTE	Rhubarb rhubarb rhubard
544	15	2002-01-12 00:00:00	NOTE	Whatever
545	75	2002-05-20 00:00:00	NOTE	Blah blah blah blah blah
546	74	2001-11-28 00:00:00	NOTE	Blah blah blah blah blah
547	83	2001-11-12 00:00:00	NOTE	Blah blah blah blah blah
548	98	2001-09-26 00:00:00	NOTE	Rhubarb rhubarb rhubard
549	98	2002-05-28 00:00:00	NOTE	Whatever
550	87	2002-03-13 00:00:00	NOTE	Whatever
551	71	2002-06-14 00:00:00	NOTE	Whatever
552	6	2001-11-27 00:00:00	NOTE	Blah blah blah blah blah
553	17	2002-07-22 00:00:00	NOTE	Rhubarb rhubarb rhubard
554	96	2002-03-14 00:00:00	NOTE	Rhubarb rhubarb rhubard
555	30	2002-03-31 00:00:00	NOTE	Blah blah blah blah blah
556	65	2002-01-02 00:00:00	NOTE	Yak yak yak
557	35	2001-11-07 00:00:00	NOTE	Rhubarb rhubarb rhubard
558	94	2001-11-16 00:00:00	NOTE	Yak yak yak
559	59	2002-04-22 00:00:00	NOTE	Yak yak yak
560	52	2002-04-23 00:00:00	NOTE	Whatever
561	90	2002-09-11 00:00:00	NOTE	Blah blah blah blah blah
562	24	2002-01-22 00:00:00	NOTE	Blah blah blah blah blah
563	31	2001-10-13 00:00:00	NOTE	Blah blah blah blah blah
564	22	2002-08-08 00:00:00	NOTE	Blah blah blah blah blah
565	54	2002-08-23 00:00:00	NOTE	Rhubarb rhubarb rhubard
566	94	2002-03-18 00:00:00	NOTE	Blah blah blah blah blah
567	1	2002-05-26 00:00:00	NOTE	Blah blah blah blah blah
568	86	2002-02-03 00:00:00	NOTE	Blah blah blah blah blah
569	21	2001-11-24 00:00:00	NOTE	Whatever
570	3	2002-05-11 00:00:00	NOTE	Whatever
571	43	2002-05-11 00:00:00	NOTE	Yak yak yak
572	33	2001-10-09 00:00:00	NOTE	Yak yak yak
573	31	2002-06-02 00:00:00	NOTE	Yak yak yak
574	43	2002-01-23 00:00:00	NOTE	Whatever
575	78	2002-08-21 00:00:00	NOTE	Whatever
576	42	2002-06-08 00:00:00	NOTE	Yak yak yak
577	51	2001-11-20 00:00:00	NOTE	Whatever
578	70	2001-09-23 00:00:00	NOTE	Whatever
579	15	2002-07-17 00:00:00	NOTE	Blah blah blah blah blah
580	23	2002-04-07 00:00:00	NOTE	Rhubarb rhubarb rhubard
581	91	2001-09-25 00:00:00	NOTE	Yak yak yak
582	96	2002-08-11 00:00:00	NOTE	Yak yak yak
583	7	2001-09-28 00:00:00	NOTE	Yak yak yak
584	19	2002-09-08 00:00:00	NOTE	Rhubarb rhubarb rhubard
585	93	2001-11-19 00:00:00	NOTE	Yak yak yak
586	85	2002-01-27 00:00:00	NOTE	Rhubarb rhubarb rhubard
587	73	2002-08-06 00:00:00	NOTE	Blah blah blah blah blah
588	69	2002-01-28 00:00:00	NOTE	Whatever
589	27	2002-04-17 00:00:00	NOTE	Whatever
590	100	2002-02-03 00:00:00	NOTE	Rhubarb rhubarb rhubard
591	2	2002-05-29 00:00:00	NOTE	Whatever
592	36	2002-04-18 00:00:00	NOTE	Blah blah blah blah blah
593	74	2002-06-20 00:00:00	NOTE	Whatever
594	99	2002-08-13 00:00:00	NOTE	Yak yak yak
595	33	2002-08-16 00:00:00	NOTE	Rhubarb rhubarb rhubard
596	78	2002-06-23 00:00:00	NOTE	Whatever
597	73	2001-12-25 00:00:00	NOTE	Blah blah blah blah blah
598	56	2002-09-03 00:00:00	NOTE	Yak yak yak
599	35	2001-12-22 00:00:00	NOTE	Blah blah blah blah blah
600	52	2002-04-09 00:00:00	NOTE	Blah blah blah blah blah
601	25	2002-07-14 00:00:00	NOTE	Rhubarb rhubarb rhubard
602	82	2002-06-21 00:00:00	NOTE	Blah blah blah blah blah
603	90	2002-02-08 00:00:00	NOTE	Yak yak yak
604	51	2002-02-07 00:00:00	NOTE	Yak yak yak
605	29	2002-06-09 00:00:00	NOTE	Yak yak yak
606	57	2002-03-09 00:00:00	NOTE	Yak yak yak
607	56	2002-07-19 00:00:00	NOTE	Blah blah blah blah blah
608	93	2001-10-17 00:00:00	NOTE	Rhubarb rhubarb rhubard
609	37	2001-11-11 00:00:00	NOTE	Yak yak yak
610	72	2002-07-24 00:00:00	NOTE	Whatever
611	82	2002-04-14 00:00:00	NOTE	Yak yak yak
612	80	2002-02-03 00:00:00	NOTE	Blah blah blah blah blah
613	61	2002-05-27 00:00:00	NOTE	Whatever
614	81	2002-04-18 00:00:00	NOTE	Yak yak yak
615	47	2002-05-25 00:00:00	NOTE	Yak yak yak
616	45	2002-05-02 00:00:00	NOTE	Yak yak yak
617	44	2002-07-12 00:00:00	NOTE	Yak yak yak
618	80	2002-09-05 00:00:00	NOTE	Yak yak yak
619	43	2002-08-20 00:00:00	NOTE	Blah blah blah blah blah
620	58	2002-04-20 00:00:00	NOTE	Whatever
621	11	2002-08-23 00:00:00	NOTE	Rhubarb rhubarb rhubard
622	94	2002-06-05 00:00:00	NOTE	Blah blah blah blah blah
623	70	2002-08-17 00:00:00	NOTE	Blah blah blah blah blah
624	50	2002-03-20 00:00:00	NOTE	Rhubarb rhubarb rhubard
625	27	2001-12-20 00:00:00	NOTE	Blah blah blah blah blah
626	82	2002-03-22 00:00:00	NOTE	Whatever
627	55	2002-07-24 00:00:00	NOTE	Whatever
628	27	2002-06-17 00:00:00	NOTE	Rhubarb rhubarb rhubard
629	15	2001-11-02 00:00:00	NOTE	Whatever
630	73	2002-06-10 00:00:00	NOTE	Blah blah blah blah blah
631	40	2001-09-17 00:00:00	NOTE	Blah blah blah blah blah
632	6	2001-09-16 00:00:00	NOTE	Rhubarb rhubarb rhubard
633	79	2002-06-29 00:00:00	NOTE	Whatever
634	48	2002-02-28 00:00:00	NOTE	Blah blah blah blah blah
635	79	2001-12-16 00:00:00	NOTE	Rhubarb rhubarb rhubard
636	81	2002-07-06 00:00:00	NOTE	Yak yak yak
637	90	2002-07-20 00:00:00	NOTE	Rhubarb rhubarb rhubard
638	6	2001-10-26 00:00:00	NOTE	Yak yak yak
639	11	2002-05-27 00:00:00	NOTE	Whatever
640	36	2001-11-01 00:00:00	NOTE	Whatever
641	9	2001-09-28 00:00:00	NOTE	Yak yak yak
642	50	2002-04-26 00:00:00	NOTE	Whatever
643	63	2001-10-15 00:00:00	NOTE	Blah blah blah blah blah
644	22	2002-08-18 00:00:00	NOTE	Whatever
645	66	2002-04-14 00:00:00	NOTE	Rhubarb rhubarb rhubard
646	30	2002-08-27 00:00:00	NOTE	Yak yak yak
647	36	2001-10-03 00:00:00	NOTE	Whatever
648	92	2002-07-31 00:00:00	NOTE	Rhubarb rhubarb rhubard
649	67	2001-10-12 00:00:00	NOTE	Yak yak yak
650	88	2002-01-25 00:00:00	NOTE	Whatever
651	64	2002-02-24 00:00:00	NOTE	Yak yak yak
652	10	2002-04-12 00:00:00	NOTE	Blah blah blah blah blah
653	11	2002-06-08 00:00:00	NOTE	Blah blah blah blah blah
654	1	2002-06-30 00:00:00	NOTE	Yak yak yak
655	70	2002-08-07 00:00:00	NOTE	Whatever
656	38	2001-10-08 00:00:00	NOTE	Rhubarb rhubarb rhubard
657	45	2002-05-26 00:00:00	NOTE	Rhubarb rhubarb rhubard
658	89	2002-02-10 00:00:00	NOTE	Yak yak yak
659	65	2002-05-06 00:00:00	NOTE	Rhubarb rhubarb rhubard
660	79	2002-05-12 00:00:00	NOTE	Blah blah blah blah blah
661	19	2002-01-30 00:00:00	NOTE	Blah blah blah blah blah
662	50	2002-07-26 00:00:00	NOTE	Yak yak yak
663	42	2001-09-27 00:00:00	NOTE	Blah blah blah blah blah
664	81	2001-10-16 00:00:00	NOTE	Blah blah blah blah blah
665	86	2002-07-28 00:00:00	NOTE	Rhubarb rhubarb rhubard
666	45	2001-10-13 00:00:00	NOTE	Whatever
667	54	2002-08-01 00:00:00	NOTE	Whatever
668	22	2001-10-15 00:00:00	NOTE	Blah blah blah blah blah
669	56	2002-07-18 00:00:00	NOTE	Rhubarb rhubarb rhubard
670	4	2002-07-18 00:00:00	NOTE	Yak yak yak
671	27	2002-06-16 00:00:00	NOTE	Blah blah blah blah blah
672	8	2002-06-07 00:00:00	NOTE	Rhubarb rhubarb rhubard
673	91	2002-02-14 00:00:00	NOTE	Rhubarb rhubarb rhubard
674	28	2001-12-03 00:00:00	NOTE	Yak yak yak
675	31	2002-09-02 00:00:00	NOTE	Whatever
676	68	2001-12-07 00:00:00	NOTE	Whatever
677	43	2001-12-02 00:00:00	NOTE	Whatever
678	46	2002-07-07 00:00:00	NOTE	Whatever
679	55	2002-07-02 00:00:00	NOTE	Blah blah blah blah blah
680	37	2002-04-30 00:00:00	NOTE	Blah blah blah blah blah
681	11	2002-03-09 00:00:00	NOTE	Blah blah blah blah blah
682	75	2002-02-24 00:00:00	NOTE	Whatever
683	13	2001-10-08 00:00:00	NOTE	Yak yak yak
684	97	2002-03-03 00:00:00	NOTE	Blah blah blah blah blah
685	92	2002-01-20 00:00:00	NOTE	Whatever
686	9	2002-04-14 00:00:00	NOTE	Whatever
687	82	2002-09-12 00:00:00	NOTE	Blah blah blah blah blah
688	84	2002-02-19 00:00:00	NOTE	Rhubarb rhubarb rhubard
689	41	2002-04-27 00:00:00	NOTE	Blah blah blah blah blah
690	14	2001-09-25 00:00:00	NOTE	Yak yak yak
691	84	2001-10-23 00:00:00	NOTE	Whatever
692	44	2002-03-18 00:00:00	NOTE	Blah blah blah blah blah
693	55	2001-10-19 00:00:00	NOTE	Whatever
694	53	2001-09-13 00:00:00	NOTE	Yak yak yak
695	49	2002-09-07 00:00:00	NOTE	Rhubarb rhubarb rhubard
696	43	2002-03-22 00:00:00	NOTE	Blah blah blah blah blah
697	25	2001-11-24 00:00:00	NOTE	Whatever
698	4	2002-02-07 00:00:00	NOTE	Blah blah blah blah blah
699	62	2002-06-24 00:00:00	NOTE	Blah blah blah blah blah
700	20	2002-03-19 00:00:00	NOTE	Yak yak yak
701	43	2001-11-21 00:00:00	NOTE	Yak yak yak
702	60	2001-12-24 00:00:00	NOTE	Whatever
703	15	2001-11-19 00:00:00	NOTE	Whatever
704	68	2002-08-16 00:00:00	NOTE	Rhubarb rhubarb rhubard
705	19	2001-11-04 00:00:00	NOTE	Blah blah blah blah blah
706	7	2002-04-28 00:00:00	NOTE	Whatever
707	74	2001-12-25 00:00:00	NOTE	Whatever
708	28	2002-07-16 00:00:00	NOTE	Blah blah blah blah blah
709	15	2002-05-10 00:00:00	NOTE	Yak yak yak
710	10	2002-07-23 00:00:00	NOTE	Blah blah blah blah blah
711	93	2001-10-31 00:00:00	NOTE	Blah blah blah blah blah
712	55	2002-04-03 00:00:00	NOTE	Rhubarb rhubarb rhubard
713	33	2001-09-17 00:00:00	NOTE	Yak yak yak
714	3	2002-08-21 00:00:00	NOTE	Blah blah blah blah blah
715	12	2001-09-16 00:00:00	NOTE	Rhubarb rhubarb rhubard
716	65	2002-09-10 00:00:00	NOTE	Rhubarb rhubarb rhubard
717	45	2001-12-30 00:00:00	NOTE	Whatever
718	59	2002-04-17 00:00:00	NOTE	Whatever
719	3	2002-05-10 00:00:00	NOTE	Rhubarb rhubarb rhubard
720	63	2002-08-21 00:00:00	NOTE	Yak yak yak
721	9	2001-10-07 00:00:00	NOTE	Whatever
722	36	2002-05-24 00:00:00	NOTE	Rhubarb rhubarb rhubard
723	100	2001-12-14 00:00:00	NOTE	Yak yak yak
724	37	2002-05-24 00:00:00	NOTE	Rhubarb rhubarb rhubard
725	76	2002-04-11 00:00:00	NOTE	Whatever
726	28	2002-03-01 00:00:00	NOTE	Rhubarb rhubarb rhubard
727	75	2001-10-05 00:00:00	NOTE	Blah blah blah blah blah
728	100	2002-03-09 00:00:00	NOTE	Rhubarb rhubarb rhubard
729	58	2001-10-31 00:00:00	NOTE	Blah blah blah blah blah
730	72	2002-05-13 00:00:00	NOTE	Yak yak yak
731	23	2002-06-15 00:00:00	NOTE	Blah blah blah blah blah
732	64	2001-10-26 00:00:00	NOTE	Whatever
733	14	2001-10-30 00:00:00	NOTE	Yak yak yak
734	36	2001-12-29 00:00:00	NOTE	Yak yak yak
735	25	2002-03-13 00:00:00	NOTE	Blah blah blah blah blah
736	90	2001-10-09 00:00:00	NOTE	Rhubarb rhubarb rhubard
737	97	2002-07-14 00:00:00	NOTE	Whatever
738	95	2002-08-29 00:00:00	NOTE	Blah blah blah blah blah
739	80	2002-03-18 00:00:00	NOTE	Rhubarb rhubarb rhubard
740	4	2001-10-28 00:00:00	NOTE	Whatever
741	73	2002-08-22 00:00:00	NOTE	Rhubarb rhubarb rhubard
742	93	2001-12-05 00:00:00	NOTE	Yak yak yak
743	26	2001-10-22 00:00:00	NOTE	Blah blah blah blah blah
744	41	2002-05-31 00:00:00	NOTE	Blah blah blah blah blah
745	28	2001-10-19 00:00:00	NOTE	Whatever
746	1	2002-02-02 00:00:00	NOTE	Rhubarb rhubarb rhubard
747	75	2002-05-11 00:00:00	NOTE	Blah blah blah blah blah
748	99	2002-07-26 00:00:00	NOTE	Yak yak yak
749	46	2002-02-18 00:00:00	NOTE	Blah blah blah blah blah
750	20	2001-09-14 00:00:00	NOTE	Whatever
751	10	2001-12-08 00:00:00	NOTE	Yak yak yak
752	15	2002-03-28 00:00:00	NOTE	Yak yak yak
753	56	2002-08-22 00:00:00	NOTE	Rhubarb rhubarb rhubard
754	89	2001-11-12 00:00:00	NOTE	Rhubarb rhubarb rhubard
755	23	2002-03-19 00:00:00	NOTE	Yak yak yak
756	6	2002-02-20 00:00:00	NOTE	Rhubarb rhubarb rhubard
757	23	2002-06-03 00:00:00	NOTE	Rhubarb rhubarb rhubard
758	53	2001-11-30 00:00:00	NOTE	Yak yak yak
759	72	2001-09-24 00:00:00	NOTE	Yak yak yak
760	64	2002-04-04 00:00:00	NOTE	Blah blah blah blah blah
761	74	2002-07-16 00:00:00	NOTE	Whatever
762	54	2002-03-02 00:00:00	NOTE	Blah blah blah blah blah
763	50	2002-09-08 00:00:00	NOTE	Blah blah blah blah blah
764	73	2001-11-08 00:00:00	NOTE	Whatever
765	13	2002-04-05 00:00:00	NOTE	Rhubarb rhubarb rhubard
766	90	2001-09-13 00:00:00	NOTE	Blah blah blah blah blah
767	34	2001-12-08 00:00:00	NOTE	Yak yak yak
768	61	2002-04-18 00:00:00	NOTE	Rhubarb rhubarb rhubard
769	91	2002-03-07 00:00:00	NOTE	Blah blah blah blah blah
770	62	2002-03-03 00:00:00	NOTE	Yak yak yak
771	59	2002-03-23 00:00:00	NOTE	Rhubarb rhubarb rhubard
772	1	2002-06-06 00:00:00	NOTE	Whatever
773	92	2002-07-16 00:00:00	NOTE	Whatever
774	89	2002-06-10 00:00:00	NOTE	Yak yak yak
775	71	2002-05-11 00:00:00	NOTE	Whatever
776	60	2002-04-22 00:00:00	NOTE	Blah blah blah blah blah
777	90	2001-10-16 00:00:00	NOTE	Yak yak yak
778	5	2002-07-13 00:00:00	NOTE	Yak yak yak
779	73	2002-03-20 00:00:00	NOTE	Whatever
780	53	2001-11-10 00:00:00	NOTE	Whatever
781	40	2002-08-08 00:00:00	NOTE	Blah blah blah blah blah
782	21	2002-01-26 00:00:00	NOTE	Whatever
783	61	2002-08-20 00:00:00	NOTE	Whatever
784	94	2002-06-04 00:00:00	NOTE	Blah blah blah blah blah
785	45	2001-11-01 00:00:00	NOTE	Blah blah blah blah blah
786	54	2002-06-10 00:00:00	NOTE	Rhubarb rhubarb rhubard
787	43	2002-06-26 00:00:00	NOTE	Rhubarb rhubarb rhubard
788	56	2001-10-05 00:00:00	NOTE	Yak yak yak
789	37	2002-02-13 00:00:00	NOTE	Rhubarb rhubarb rhubard
790	81	2001-11-28 00:00:00	NOTE	Blah blah blah blah blah
791	93	2002-04-27 00:00:00	NOTE	Blah blah blah blah blah
792	25	2002-07-08 00:00:00	NOTE	Whatever
793	46	2002-08-27 00:00:00	NOTE	Yak yak yak
794	100	2002-09-13 00:00:00	NOTE	Whatever
795	44	2001-12-05 00:00:00	NOTE	Yak yak yak
796	94	2001-11-30 00:00:00	NOTE	Blah blah blah blah blah
797	77	2001-12-09 00:00:00	NOTE	Rhubarb rhubarb rhubard
798	28	2001-09-19 00:00:00	NOTE	Blah blah blah blah blah
799	67	2002-02-26 00:00:00	NOTE	Blah blah blah blah blah
800	6	2002-07-25 00:00:00	NOTE	Yak yak yak
801	8	2002-03-20 00:00:00	NOTE	Rhubarb rhubarb rhubard
802	96	2002-04-14 00:00:00	NOTE	Blah blah blah blah blah
803	24	2001-09-23 00:00:00	NOTE	Whatever
804	94	2002-03-28 00:00:00	NOTE	Blah blah blah blah blah
805	31	2001-12-04 00:00:00	NOTE	Yak yak yak
806	1	2001-12-15 00:00:00	NOTE	Rhubarb rhubarb rhubard
807	57	2002-06-06 00:00:00	NOTE	Whatever
808	78	2001-12-17 00:00:00	NOTE	Yak yak yak
809	41	2002-03-26 00:00:00	NOTE	Yak yak yak
810	39	2002-02-22 00:00:00	NOTE	Whatever
811	60	2002-09-09 00:00:00	NOTE	Rhubarb rhubarb rhubard
812	70	2001-10-11 00:00:00	NOTE	Yak yak yak
813	85	2001-09-16 00:00:00	NOTE	Whatever
814	78	2002-01-09 00:00:00	NOTE	Whatever
815	20	2001-11-27 00:00:00	NOTE	Rhubarb rhubarb rhubard
816	24	2001-12-11 00:00:00	NOTE	Blah blah blah blah blah
817	3	2002-08-15 00:00:00	NOTE	Blah blah blah blah blah
818	11	2001-12-16 00:00:00	NOTE	Yak yak yak
819	40	2002-05-07 00:00:00	NOTE	Whatever
820	9	2002-03-23 00:00:00	NOTE	Rhubarb rhubarb rhubard
821	36	2002-01-18 00:00:00	NOTE	Yak yak yak
822	10	2002-05-16 00:00:00	NOTE	Whatever
823	48	2002-07-06 00:00:00	NOTE	Rhubarb rhubarb rhubard
824	82	2002-06-16 00:00:00	NOTE	Yak yak yak
825	35	2002-08-07 00:00:00	NOTE	Rhubarb rhubarb rhubard
826	3	2001-10-15 00:00:00	NOTE	Whatever
827	31	2002-04-02 00:00:00	NOTE	Rhubarb rhubarb rhubard
828	88	2002-04-01 00:00:00	NOTE	Yak yak yak
829	12	2002-07-10 00:00:00	NOTE	Blah blah blah blah blah
830	38	2002-03-11 00:00:00	NOTE	Blah blah blah blah blah
831	93	2002-03-09 00:00:00	NOTE	Yak yak yak
832	24	2002-05-12 00:00:00	NOTE	Whatever
833	23	2002-07-31 00:00:00	NOTE	Whatever
834	97	2002-06-10 00:00:00	NOTE	Whatever
835	8	2002-08-26 00:00:00	NOTE	Yak yak yak
836	19	2002-05-26 00:00:00	NOTE	Blah blah blah blah blah
837	68	2002-05-18 00:00:00	NOTE	Blah blah blah blah blah
838	34	2002-06-01 00:00:00	NOTE	Whatever
839	56	2001-10-25 00:00:00	NOTE	Blah blah blah blah blah
840	23	2002-06-26 00:00:00	NOTE	Rhubarb rhubarb rhubard
841	1	2002-07-27 00:00:00	NOTE	Rhubarb rhubarb rhubard
842	62	2002-07-25 00:00:00	NOTE	Blah blah blah blah blah
843	5	2002-03-23 00:00:00	NOTE	Rhubarb rhubarb rhubard
844	59	2002-05-17 00:00:00	NOTE	Rhubarb rhubarb rhubard
845	30	2002-06-14 00:00:00	NOTE	Blah blah blah blah blah
846	62	2002-07-03 00:00:00	NOTE	Blah blah blah blah blah
847	23	2001-12-12 00:00:00	NOTE	Rhubarb rhubarb rhubard
848	35	2001-11-27 00:00:00	NOTE	Whatever
849	48	2001-10-16 00:00:00	NOTE	Yak yak yak
850	12	2002-04-13 00:00:00	NOTE	Rhubarb rhubarb rhubard
851	86	2002-01-11 00:00:00	NOTE	Rhubarb rhubarb rhubard
852	55	2002-07-04 00:00:00	NOTE	Yak yak yak
853	91	2002-06-01 00:00:00	NOTE	Rhubarb rhubarb rhubard
854	43	2002-06-10 00:00:00	NOTE	Whatever
855	13	2002-04-04 00:00:00	NOTE	Yak yak yak
856	71	2002-01-25 00:00:00	NOTE	Blah blah blah blah blah
857	94	2002-01-06 00:00:00	NOTE	Whatever
858	45	2002-04-13 00:00:00	NOTE	Whatever
859	85	2001-12-09 00:00:00	NOTE	Yak yak yak
860	35	2001-10-02 00:00:00	NOTE	Whatever
861	51	2001-11-22 00:00:00	NOTE	Yak yak yak
862	43	2002-02-07 00:00:00	NOTE	Yak yak yak
863	58	2002-03-11 00:00:00	NOTE	Whatever
864	55	2002-06-30 00:00:00	NOTE	Yak yak yak
865	85	2002-04-20 00:00:00	NOTE	Yak yak yak
866	64	2002-02-02 00:00:00	NOTE	Whatever
867	48	2002-01-12 00:00:00	NOTE	Yak yak yak
868	17	2001-11-24 00:00:00	NOTE	Yak yak yak
869	12	2002-06-13 00:00:00	NOTE	Blah blah blah blah blah
870	60	2001-12-26 00:00:00	NOTE	Yak yak yak
871	42	2002-02-20 00:00:00	NOTE	Blah blah blah blah blah
872	31	2002-08-07 00:00:00	NOTE	Blah blah blah blah blah
873	18	2001-09-14 00:00:00	NOTE	Whatever
874	54	2002-03-26 00:00:00	NOTE	Rhubarb rhubarb rhubard
875	89	2002-04-12 00:00:00	NOTE	Yak yak yak
876	67	2002-09-04 00:00:00	NOTE	Rhubarb rhubarb rhubard
877	51	2002-01-19 00:00:00	NOTE	Yak yak yak
878	77	2001-12-28 00:00:00	NOTE	Whatever
879	52	2002-09-10 00:00:00	NOTE	Rhubarb rhubarb rhubard
880	13	2001-09-29 00:00:00	NOTE	Blah blah blah blah blah
881	73	2002-01-18 00:00:00	NOTE	Rhubarb rhubarb rhubard
882	15	2001-09-17 00:00:00	NOTE	Whatever
883	98	2002-07-31 00:00:00	NOTE	Rhubarb rhubarb rhubard
884	31	2002-04-08 00:00:00	NOTE	Blah blah blah blah blah
885	72	2002-02-26 00:00:00	NOTE	Rhubarb rhubarb rhubard
886	81	2001-09-18 00:00:00	NOTE	Rhubarb rhubarb rhubard
887	18	2002-02-09 00:00:00	NOTE	Blah blah blah blah blah
888	63	2001-09-17 00:00:00	NOTE	Rhubarb rhubarb rhubard
889	31	2001-11-05 00:00:00	NOTE	Whatever
890	53	2002-04-10 00:00:00	NOTE	Yak yak yak
891	86	2001-12-08 00:00:00	NOTE	Yak yak yak
892	12	2002-02-10 00:00:00	NOTE	Yak yak yak
893	62	2002-04-27 00:00:00	NOTE	Whatever
894	26	2002-05-01 00:00:00	NOTE	Blah blah blah blah blah
895	92	2001-12-29 00:00:00	NOTE	Yak yak yak
896	52	2001-12-29 00:00:00	NOTE	Rhubarb rhubarb rhubard
897	76	2002-02-01 00:00:00	NOTE	Rhubarb rhubarb rhubard
898	16	2002-06-10 00:00:00	NOTE	Blah blah blah blah blah
899	97	2001-11-18 00:00:00	NOTE	Blah blah blah blah blah
900	96	2002-03-09 00:00:00	NOTE	Whatever
901	59	2002-02-22 00:00:00	NOTE	Yak yak yak
902	78	2001-11-17 00:00:00	NOTE	Blah blah blah blah blah
903	13	2002-06-29 00:00:00	NOTE	Yak yak yak
904	25	2001-09-15 00:00:00	NOTE	Whatever
905	41	2001-12-09 00:00:00	NOTE	Blah blah blah blah blah
906	72	2002-05-08 00:00:00	NOTE	Rhubarb rhubarb rhubard
907	16	2002-08-30 00:00:00	NOTE	Whatever
908	8	2001-10-02 00:00:00	NOTE	Whatever
909	18	2002-02-09 00:00:00	NOTE	Whatever
910	69	2002-04-17 00:00:00	NOTE	Rhubarb rhubarb rhubard
911	73	2001-11-12 00:00:00	NOTE	Blah blah blah blah blah
912	20	2002-07-20 00:00:00	NOTE	Blah blah blah blah blah
913	50	2002-02-28 00:00:00	NOTE	Rhubarb rhubarb rhubard
914	42	2001-11-24 00:00:00	NOTE	Blah blah blah blah blah
915	97	2001-10-09 00:00:00	NOTE	Blah blah blah blah blah
916	2	2002-04-21 00:00:00	NOTE	Whatever
917	88	2002-01-16 00:00:00	NOTE	Rhubarb rhubarb rhubard
918	2	2002-03-13 00:00:00	NOTE	Rhubarb rhubarb rhubard
919	86	2002-04-03 00:00:00	NOTE	Yak yak yak
920	62	2002-03-13 00:00:00	NOTE	Whatever
921	65	2002-07-04 00:00:00	NOTE	Whatever
922	97	2002-08-26 00:00:00	NOTE	Blah blah blah blah blah
923	66	2002-06-09 00:00:00	NOTE	Whatever
924	2	2002-08-27 00:00:00	NOTE	Yak yak yak
925	56	2001-12-08 00:00:00	NOTE	Whatever
926	76	2001-12-29 00:00:00	NOTE	Yak yak yak
927	53	2001-09-15 00:00:00	NOTE	Rhubarb rhubarb rhubard
928	87	2002-06-10 00:00:00	NOTE	Rhubarb rhubarb rhubard
929	45	2002-05-28 00:00:00	NOTE	Blah blah blah blah blah
930	13	2002-05-13 00:00:00	NOTE	Rhubarb rhubarb rhubard
931	4	2002-06-30 00:00:00	NOTE	Yak yak yak
932	57	2002-05-09 00:00:00	NOTE	Rhubarb rhubarb rhubard
933	17	2002-01-29 00:00:00	NOTE	Yak yak yak
934	42	2002-04-19 00:00:00	NOTE	Rhubarb rhubarb rhubard
935	27	2002-03-28 00:00:00	NOTE	Whatever
936	66	2001-11-15 00:00:00	NOTE	Yak yak yak
937	59	2001-10-23 00:00:00	NOTE	Yak yak yak
938	39	2001-11-26 00:00:00	NOTE	Blah blah blah blah blah
939	79	2001-09-16 00:00:00	NOTE	Whatever
940	85	2002-03-13 00:00:00	NOTE	Blah blah blah blah blah
941	23	2001-10-12 00:00:00	NOTE	Whatever
942	49	2002-04-23 00:00:00	NOTE	Yak yak yak
943	63	2002-07-19 00:00:00	NOTE	Whatever
944	32	2002-04-06 00:00:00	NOTE	Blah blah blah blah blah
945	95	2002-05-10 00:00:00	NOTE	Rhubarb rhubarb rhubard
946	92	2002-09-04 00:00:00	NOTE	Blah blah blah blah blah
947	3	2002-03-22 00:00:00	NOTE	Blah blah blah blah blah
948	66	2002-04-25 00:00:00	NOTE	Blah blah blah blah blah
949	98	2002-04-15 00:00:00	NOTE	Yak yak yak
950	71	2002-02-19 00:00:00	NOTE	Rhubarb rhubarb rhubard
951	64	2002-06-13 00:00:00	NOTE	Yak yak yak
952	55	2002-08-15 00:00:00	NOTE	Whatever
953	42	2001-09-23 00:00:00	NOTE	Blah blah blah blah blah
954	6	2002-06-23 00:00:00	NOTE	Rhubarb rhubarb rhubard
955	90	2002-01-12 00:00:00	NOTE	Rhubarb rhubarb rhubard
956	77	2002-05-09 00:00:00	NOTE	Whatever
957	30	2002-01-10 00:00:00	NOTE	Blah blah blah blah blah
958	12	2002-07-21 00:00:00	NOTE	Rhubarb rhubarb rhubard
959	40	2002-08-20 00:00:00	NOTE	Blah blah blah blah blah
960	61	2001-11-25 00:00:00	NOTE	Rhubarb rhubarb rhubard
961	92	2002-07-28 00:00:00	NOTE	Yak yak yak
962	13	2002-01-17 00:00:00	NOTE	Blah blah blah blah blah
963	25	2001-10-02 00:00:00	NOTE	Rhubarb rhubarb rhubard
964	28	2002-05-12 00:00:00	NOTE	Yak yak yak
965	80	2001-10-31 00:00:00	NOTE	Whatever
966	100	2002-01-13 00:00:00	NOTE	Rhubarb rhubarb rhubard
967	11	2002-06-22 00:00:00	NOTE	Yak yak yak
968	52	2002-05-16 00:00:00	NOTE	Whatever
969	72	2002-04-10 00:00:00	NOTE	Rhubarb rhubarb rhubard
970	14	2002-04-13 00:00:00	NOTE	Whatever
971	42	2001-10-22 00:00:00	NOTE	Whatever
972	67	2002-07-16 00:00:00	NOTE	Blah blah blah blah blah
973	41	2002-07-16 00:00:00	NOTE	Whatever
974	50	2002-05-08 00:00:00	NOTE	Whatever
975	10	2001-10-16 00:00:00	NOTE	Blah blah blah blah blah
976	52	2002-03-21 00:00:00	NOTE	Whatever
977	53	2002-06-27 00:00:00	NOTE	Whatever
978	80	2002-05-13 00:00:00	NOTE	Yak yak yak
979	41	2002-03-30 00:00:00	NOTE	Blah blah blah blah blah
980	60	2002-06-22 00:00:00	NOTE	Whatever
981	22	2002-01-07 00:00:00	NOTE	Blah blah blah blah blah
982	38	2002-04-02 00:00:00	NOTE	Rhubarb rhubarb rhubard
983	93	2002-05-21 00:00:00	NOTE	Whatever
984	79	2002-06-07 00:00:00	NOTE	Whatever
985	47	2002-07-05 00:00:00	NOTE	Blah blah blah blah blah
986	25	2001-09-13 00:00:00	NOTE	Yak yak yak
987	20	2001-12-21 00:00:00	NOTE	Rhubarb rhubarb rhubard
988	1	2002-07-07 00:00:00	NOTE	Blah blah blah blah blah
989	20	2002-08-19 00:00:00	NOTE	Blah blah blah blah blah
990	19	2002-03-11 00:00:00	NOTE	Blah blah blah blah blah
991	50	2001-12-21 00:00:00	NOTE	Rhubarb rhubarb rhubard
992	48	2001-12-22 00:00:00	NOTE	Rhubarb rhubarb rhubard
993	35	2002-05-12 00:00:00	NOTE	Whatever
994	24	2001-10-30 00:00:00	NOTE	Whatever
995	4	2001-11-23 00:00:00	NOTE	Yak yak yak
996	65	2001-10-26 00:00:00	NOTE	Blah blah blah blah blah
997	71	2001-12-29 00:00:00	NOTE	Blah blah blah blah blah
998	89	2002-03-20 00:00:00	NOTE	Rhubarb rhubarb rhubard
999	87	2002-08-27 00:00:00	NOTE	Blah blah blah blah blah
1000	80	2002-03-01 00:00:00	NOTE	Rhubarb rhubarb rhubard
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: abir
--

COPY orders (ord_id, ord_company, ord_product, ord_qty, ord_placed, ord_delivered, ord_paid) FROM stdin;
1	46	MRBOG	18	2001-12-30	\N	\N
2	11	MRBOG	51	2002-03-19	2002-03-26	\N
3	61	DGBOG	63	2002-03-07	\N	\N
4	82	MBTHI	16	2002-08-31	2002-09-07	2002-09-14
5	55	MRBOG	35	2002-04-01	\N	\N
6	96	LRTHI	90	2002-04-08	2002-04-15	\N
7	57	SGTHI	92	2001-11-20	\N	\N
8	97	MRBOG	24	2002-03-26	2002-04-02	2002-04-09
9	47	MRWID	65	2001-10-29	\N	\N
10	68	SGTHI	23	2001-11-27	2001-12-04	\N
11	7	DGBOG	57	2002-08-24	\N	\N
12	61	SRWID	95	2002-07-15	2002-07-22	2002-07-29
13	77	DGBOG	23	2002-04-10	\N	\N
14	93	SRWID	31	2002-03-15	2002-03-22	\N
15	96	MBTHI	34	2001-11-10	\N	\N
16	11	SRWID	48	2002-02-23	2002-03-02	2002-03-09
17	43	MBBOG	4	2002-03-23	\N	\N
18	56	MBBOG	67	2002-07-03	2002-07-10	\N
19	95	MBBOG	80	2002-08-09	\N	\N
20	4	LBWID	94	2001-10-01	2001-10-08	2001-10-15
21	12	MRBOG	66	2002-08-13	\N	\N
22	61	MBTHI	74	2002-08-04	2002-08-11	\N
23	79	LBWID	94	2002-04-28	\N	\N
24	100	MBBOG	6	2001-11-01	2001-11-08	2001-11-15
25	57	MBBOG	27	2002-03-01	\N	\N
26	76	DGBOG	41	2001-10-21	2001-10-28	\N
27	50	SRGIZ	83	2001-12-06	\N	\N
28	40	DGBOG	17	2002-03-24	2002-03-31	2002-04-07
29	60	MRBOG	85	2002-06-25	\N	\N
30	17	MRBOG	1	2002-01-16	2002-01-23	\N
31	68	SRWID	3	2001-11-05	\N	\N
32	82	MBBOG	94	2002-08-08	2002-08-15	2002-08-22
33	71	SRWID	13	2002-06-04	\N	\N
34	72	SGTHI	85	2001-10-18	2001-10-25	\N
35	54	LBWID	85	2002-08-04	\N	\N
36	57	SRGIZ	81	2002-02-25	2002-03-04	2002-03-11
37	17	MBTHI	71	2002-06-24	\N	\N
38	21	LBWID	71	2002-08-25	2002-09-01	\N
39	28	LBWID	58	2002-01-10	\N	\N
40	57	MBBOG	97	2002-01-19	2002-01-26	2002-02-02
41	13	SGTHI	30	2002-05-11	\N	\N
42	95	LBWID	1	2001-11-07	2001-11-14	\N
43	74	MRBOG	30	2002-05-16	\N	\N
44	80	MRBOG	43	2002-06-01	2002-06-08	2002-06-15
45	18	LRTHI	22	2002-01-30	\N	\N
46	90	MBBOG	50	2001-12-11	2001-12-18	\N
47	60	MRBOG	93	2002-07-05	\N	\N
48	76	MRBOG	46	2001-11-02	2001-11-09	2001-11-16
49	27	SRWID	49	2002-03-13	\N	\N
50	25	LBWID	80	2002-07-21	2002-07-28	\N
51	54	SGTHI	44	2002-04-21	\N	\N
52	85	LBWID	45	2001-10-17	2001-10-24	2001-10-31
53	4	MBBOG	7	2001-12-06	\N	\N
54	6	MBTHI	2	2001-09-29	2001-10-06	\N
55	7	MRWID	69	2001-11-26	\N	\N
56	60	DGBOG	7	2002-05-30	2002-06-06	2002-06-13
57	94	MBBOG	29	2002-06-09	\N	\N
58	33	MBBOG	30	2002-09-01	2002-09-08	\N
59	5	LRTHI	9	2002-03-30	\N	\N
60	97	MRWID	14	2002-05-30	2002-06-06	2002-06-13
61	59	SRGIZ	34	2002-06-05	\N	\N
62	76	SRGIZ	13	2002-05-02	2002-05-09	\N
63	94	SGTHI	10	2002-03-14	\N	\N
64	41	SRWID	67	2002-04-13	2002-04-20	2002-04-27
65	43	LBWID	33	2001-10-19	\N	\N
66	99	MBBOG	59	2001-09-19	2001-09-26	\N
67	53	MRWID	33	2002-03-10	\N	\N
68	23	SRGIZ	92	2001-11-30	2001-12-07	2001-12-14
69	54	MBBOG	62	2002-02-26	\N	\N
70	92	SRGIZ	99	2002-08-01	2002-08-08	\N
71	47	MRWID	60	2002-01-30	\N	\N
72	53	LBWID	56	2002-04-14	2002-04-21	2002-04-28
73	4	LBWID	100	2002-03-25	\N	\N
74	70	SRGIZ	58	2001-09-15	2001-09-22	\N
75	94	LBWID	47	2001-10-03	\N	\N
76	74	LBWID	16	2001-12-11	2001-12-18	2001-12-25
77	71	LRTHI	13	2002-08-20	\N	\N
78	32	DGBOG	26	2002-05-24	2002-05-31	\N
79	40	MBTHI	86	2002-09-10	\N	\N
80	45	MBBOG	58	2002-05-07	2002-05-14	2002-05-21
81	52	LBWID	46	2002-07-01	\N	\N
82	83	LBWID	38	2002-06-17	2002-06-24	\N
83	99	LRTHI	86	2002-05-11	\N	\N
84	23	MBBOG	17	2002-05-02	2002-05-09	2002-05-16
85	36	MBBOG	21	2001-11-06	\N	\N
86	74	MBTHI	21	2002-01-24	2002-01-31	\N
87	29	LRTHI	95	2002-05-12	\N	\N
88	47	MBBOG	60	2002-04-03	2002-04-10	2002-04-17
89	100	LRTHI	38	2001-11-02	\N	\N
90	12	SRGIZ	64	2002-02-07	2002-02-14	\N
91	31	MBBOG	4	2002-07-29	\N	\N
92	50	SRWID	89	2002-07-26	2002-08-02	2002-08-09
93	23	MBBOG	83	2002-02-21	\N	\N
94	41	MRBOG	3	2002-01-03	2002-01-10	\N
95	7	MBTHI	16	2001-09-28	\N	\N
96	52	SGTHI	97	2001-12-01	2001-12-08	2001-12-15
97	72	MRWID	82	2002-03-03	\N	\N
98	94	LRTHI	49	2002-03-02	2002-03-09	\N
99	8	LBWID	73	2002-03-21	\N	\N
100	18	LRTHI	68	2001-12-27	2002-01-03	2002-01-10
101	76	SRWID	57	2001-11-19	\N	\N
102	65	MRBOG	90	2002-05-09	2002-05-16	\N
103	48	LRTHI	73	2001-11-30	\N	\N
104	60	LRTHI	27	2002-08-31	2002-09-07	2002-09-14
105	35	MBTHI	85	2002-05-16	\N	\N
106	71	LBWID	42	2001-10-24	2001-10-31	\N
107	82	LBWID	12	2002-07-29	\N	\N
108	44	MBBOG	68	2002-04-15	2002-04-22	2002-04-29
109	96	SRGIZ	48	2002-06-26	\N	\N
110	77	MBBOG	38	2001-12-09	2001-12-16	\N
111	71	DGBOG	36	2001-12-02	\N	\N
112	25	MBTHI	5	2002-01-10	2002-01-17	2002-01-24
113	10	SGTHI	38	2002-02-24	\N	\N
114	14	SRWID	73	2002-09-10	2002-09-17	\N
115	64	MRBOG	2	2002-05-11	\N	\N
116	100	MBTHI	49	2002-09-12	2002-09-19	2002-09-26
117	48	LRTHI	49	2002-03-20	\N	\N
118	19	SRWID	52	2002-03-02	2002-03-09	\N
119	93	SGTHI	63	2002-03-27	\N	\N
120	79	LRTHI	89	2002-06-30	2002-07-07	2002-07-14
121	33	LRTHI	71	2001-12-05	\N	\N
122	68	LRTHI	98	2001-12-15	2001-12-22	\N
123	55	MRBOG	35	2001-11-04	\N	\N
124	2	DGBOG	32	2002-06-27	2002-07-04	2002-07-11
125	34	SGTHI	72	2002-05-05	\N	\N
126	88	MBBOG	27	2002-04-03	2002-04-10	\N
127	9	MBBOG	14	2002-09-07	\N	\N
128	50	LRTHI	38	2001-11-06	2001-11-13	2001-11-20
129	5	LRTHI	24	2002-05-06	\N	\N
130	64	LRTHI	95	2001-11-04	2001-11-11	\N
131	41	LBWID	44	2002-09-06	\N	\N
132	34	MBBOG	40	2002-03-09	2002-03-16	2002-03-23
133	85	SGTHI	24	2002-01-24	\N	\N
134	83	LBWID	65	2002-05-06	2002-05-13	\N
135	52	LBWID	62	2002-04-26	\N	\N
136	54	SRWID	53	2002-06-03	2002-06-10	2002-06-17
137	85	DGBOG	94	2001-10-21	\N	\N
138	68	MRBOG	65	2002-06-15	2002-06-22	\N
139	82	SRGIZ	64	2001-12-09	\N	\N
140	64	LRTHI	97	2002-01-24	2002-01-31	2002-02-07
141	22	SGTHI	85	2001-10-26	\N	\N
142	9	MRBOG	19	2002-01-05	2002-01-12	\N
143	78	MRWID	70	2002-09-09	\N	\N
144	92	SRWID	99	2001-11-26	2001-12-03	2001-12-10
145	82	SGTHI	99	2002-07-30	\N	\N
146	92	MBTHI	82	2002-02-12	2002-02-19	\N
147	60	LBWID	84	2001-10-14	\N	\N
148	87	LBWID	43	2002-05-15	2002-05-22	2002-05-29
149	27	MRBOG	22	2002-04-26	\N	\N
150	67	SRGIZ	12	2002-08-24	2002-08-31	\N
151	44	SRGIZ	75	2002-02-14	\N	\N
152	9	MRWID	78	2002-02-26	2002-03-05	2002-03-12
153	74	MBBOG	15	2001-12-29	\N	\N
154	33	MRBOG	48	2001-11-23	2001-11-30	\N
155	37	MRBOG	25	2002-05-31	\N	\N
156	64	SGTHI	18	2001-10-29	2001-11-05	2001-11-12
157	94	SGTHI	10	2001-12-29	\N	\N
158	2	LBWID	89	2002-03-13	2002-03-20	\N
159	1	MBBOG	23	2002-05-16	\N	\N
160	68	LRTHI	81	2002-07-02	2002-07-09	2002-07-16
161	39	MRBOG	30	2002-03-10	\N	\N
162	90	SGTHI	94	2001-09-19	2001-09-26	\N
163	58	MRBOG	100	2002-08-10	\N	\N
164	88	LBWID	53	2001-11-13	2001-11-20	2001-11-27
165	83	MRBOG	90	2002-03-11	\N	\N
166	46	MRWID	36	2001-10-25	2001-11-01	\N
167	79	MBTHI	25	2002-04-06	\N	\N
168	81	MBBOG	83	2002-01-17	2002-01-24	2002-01-31
169	16	LRTHI	78	2001-11-27	\N	\N
170	99	MRWID	91	2002-08-23	2002-08-30	\N
171	72	MBBOG	19	2002-07-21	\N	\N
172	46	SGTHI	30	2002-02-23	2002-03-02	2002-03-09
173	57	MRWID	23	2001-09-17	\N	\N
174	11	SGTHI	39	2001-11-17	2001-11-24	\N
175	92	SRWID	59	2001-10-03	\N	\N
176	53	LRTHI	30	2002-06-25	2002-07-02	2002-07-09
177	59	DGBOG	79	2001-11-22	\N	\N
178	42	MRWID	9	2001-10-07	2001-10-14	\N
179	94	LRTHI	61	2002-04-18	\N	\N
180	11	LBWID	55	2001-10-12	2001-10-19	2001-10-26
181	22	LRTHI	98	2002-02-27	\N	\N
182	80	SGTHI	5	2001-11-15	2001-11-22	\N
183	34	SRWID	86	2001-12-14	\N	\N
184	89	MBTHI	66	2001-11-27	2001-12-04	2001-12-11
185	41	SGTHI	65	2002-05-04	\N	\N
186	86	MBBOG	75	2002-03-21	2002-03-28	\N
187	83	LBWID	91	2002-05-28	\N	\N
188	17	SGTHI	99	2001-11-11	2001-11-18	2001-11-25
189	47	LRTHI	24	2002-08-12	\N	\N
190	51	SRGIZ	24	2002-09-03	2002-09-10	\N
191	96	LBWID	25	2002-07-18	\N	\N
192	6	DGBOG	39	2002-02-24	2002-03-03	2002-03-10
193	40	LBWID	14	2001-11-19	\N	\N
194	87	LRTHI	87	2001-10-30	2001-11-06	\N
195	70	LRTHI	54	2002-05-06	\N	\N
196	82	MRBOG	47	2001-09-20	2001-09-27	2001-10-04
197	92	MRWID	80	2002-02-09	\N	\N
198	70	DGBOG	97	2002-09-09	2002-09-16	\N
199	66	MRWID	36	2002-03-16	\N	\N
200	18	SRGIZ	65	2002-02-05	2002-02-12	2002-02-19
201	82	MBTHI	63	2001-09-17	\N	\N
202	25	MBBOG	30	2001-11-26	2001-12-03	\N
203	92	SRGIZ	9	2002-01-06	\N	\N
204	8	LRTHI	15	2002-06-05	2002-06-12	2002-06-19
205	8	MRBOG	49	2002-06-08	\N	\N
206	23	DGBOG	99	2002-05-27	2002-06-03	\N
207	62	MBBOG	55	2002-06-03	\N	\N
208	20	SGTHI	60	2002-07-06	2002-07-13	2002-07-20
209	59	SRGIZ	42	2002-03-07	\N	\N
210	12	LBWID	42	2002-08-18	2002-08-25	\N
211	83	SRGIZ	37	2001-12-28	\N	\N
212	17	MBTHI	85	2002-01-29	2002-02-05	2002-02-12
213	57	MBTHI	5	2001-10-03	\N	\N
214	23	LRTHI	14	2001-10-09	2001-10-16	\N
215	39	MBTHI	46	2002-04-10	\N	\N
216	39	LRTHI	31	2001-11-15	2001-11-22	2001-11-29
217	5	MBBOG	67	2002-07-19	\N	\N
218	16	MBBOG	83	2002-08-14	2002-08-21	\N
219	65	MBBOG	89	2001-12-16	\N	\N
220	79	LRTHI	94	2002-04-21	2002-04-28	2002-05-05
221	93	SRWID	95	2002-07-16	\N	\N
222	45	MBTHI	96	2002-01-10	2002-01-17	\N
223	34	DGBOG	6	2002-08-20	\N	\N
224	99	SGTHI	44	2001-09-18	2001-09-25	2001-10-02
225	54	MRBOG	73	2002-03-26	\N	\N
226	72	SRGIZ	54	2002-01-24	2002-01-31	\N
227	2	MBBOG	13	2001-11-01	\N	\N
228	73	LRTHI	53	2002-07-20	2002-07-27	2002-08-03
229	67	MBBOG	62	2002-04-24	\N	\N
230	59	MRBOG	16	2002-05-01	2002-05-08	\N
231	83	MRBOG	82	2002-05-08	\N	\N
232	43	LBWID	35	2001-12-17	2001-12-24	2001-12-31
233	49	SGTHI	99	2002-03-08	\N	\N
234	5	MRBOG	24	2002-01-16	2002-01-23	\N
235	49	SRGIZ	23	2002-01-30	\N	\N
236	34	MRBOG	15	2002-08-12	2002-08-19	2002-08-26
237	95	MRBOG	74	2001-09-19	\N	\N
238	16	MBBOG	23	2001-11-01	2001-11-08	\N
239	73	LBWID	37	2001-10-25	\N	\N
240	65	SRWID	10	2001-10-10	2001-10-17	2001-10-24
241	37	SRGIZ	5	2001-10-09	\N	\N
242	32	MRWID	99	2002-06-07	2002-06-14	\N
243	67	SRWID	34	2001-09-21	\N	\N
244	38	LBWID	66	2001-11-30	2001-12-07	2001-12-14
245	47	SRWID	83	2002-05-27	\N	\N
246	29	SGTHI	89	2002-08-04	2002-08-11	\N
247	75	SRWID	40	2002-07-10	\N	\N
248	10	SRGIZ	89	2002-05-27	2002-06-03	2002-06-10
249	6	MBTHI	58	2001-10-10	\N	\N
250	90	DGBOG	3	2001-12-21	2001-12-28	\N
251	33	SRWID	51	2002-07-10	\N	\N
252	70	DGBOG	79	2002-01-16	2002-01-23	2002-01-30
253	100	MRBOG	97	2002-03-19	\N	\N
254	4	SRWID	85	2001-11-13	2001-11-20	\N
255	100	SRGIZ	98	2002-01-16	\N	\N
256	78	SRGIZ	32	2002-07-13	2002-07-20	2002-07-27
257	25	SRWID	33	2001-12-01	\N	\N
258	32	MRWID	3	2001-12-07	2001-12-14	\N
259	14	SRGIZ	24	2001-11-23	\N	\N
260	35	MRWID	83	2002-01-19	2002-01-26	2002-02-02
261	13	LBWID	82	2002-03-22	\N	\N
262	68	MRBOG	25	2002-05-01	2002-05-08	\N
263	46	MBBOG	5	2001-12-12	\N	\N
264	96	MRWID	8	2002-08-21	2002-08-28	2002-09-04
265	11	SRWID	94	2002-06-30	\N	\N
266	53	SGTHI	43	2001-12-11	2001-12-18	\N
267	39	MBBOG	46	2001-12-18	\N	\N
268	46	LBWID	93	2001-12-28	2002-01-04	2002-01-11
269	66	DGBOG	73	2002-01-13	\N	\N
270	52	LRTHI	42	2002-08-08	2002-08-15	\N
271	64	SRGIZ	50	2002-03-04	\N	\N
272	94	LRTHI	55	2001-11-10	2001-11-17	2001-11-24
273	4	SRWID	86	2002-07-12	\N	\N
274	84	LRTHI	24	2002-05-31	2002-06-07	\N
275	29	SGTHI	32	2002-05-09	\N	\N
276	58	SRGIZ	60	2002-03-23	2002-03-30	2002-04-06
277	16	MBBOG	22	2001-12-17	\N	\N
278	65	MRBOG	41	2001-09-13	2001-09-20	\N
279	13	MRBOG	29	2002-04-27	\N	\N
280	49	SGTHI	78	2001-11-06	2001-11-13	2001-11-20
281	70	LRTHI	5	2002-01-12	\N	\N
282	14	MRWID	89	2002-02-10	2002-02-17	\N
283	32	SRWID	29	2002-02-19	\N	\N
284	79	DGBOG	79	2001-12-19	2001-12-26	2002-01-02
285	25	SRGIZ	43	2002-06-20	\N	\N
286	22	MRWID	76	2001-11-15	2001-11-22	\N
287	39	LRTHI	15	2002-05-30	\N	\N
288	38	LBWID	36	2002-02-21	2002-02-28	2002-03-07
289	11	DGBOG	85	2001-10-20	\N	\N
290	86	MRBOG	59	2002-05-10	2002-05-17	\N
291	16	DGBOG	10	2002-07-03	\N	\N
292	28	SRGIZ	18	2002-08-06	2002-08-13	2002-08-20
293	2	MBTHI	8	2002-06-19	\N	\N
294	67	MBBOG	10	2002-04-12	2002-04-19	\N
295	35	MBTHI	43	2002-07-23	\N	\N
296	49	MRBOG	68	2002-07-14	2002-07-21	2002-07-28
297	4	DGBOG	59	2002-04-23	\N	\N
298	12	SRGIZ	72	2002-05-06	2002-05-13	\N
299	61	MRWID	5	2002-08-04	\N	\N
300	66	MBBOG	7	2002-03-25	2002-04-01	2002-04-08
301	13	LRTHI	31	2001-11-22	\N	\N
302	50	DGBOG	95	2002-01-27	2002-02-03	\N
303	39	MBBOG	42	2002-02-13	\N	\N
304	9	SGTHI	11	2001-12-16	2001-12-23	2001-12-30
305	44	MRWID	34	2002-02-16	\N	\N
306	67	LBWID	73	2002-02-11	2002-02-18	\N
307	8	LBWID	9	2002-01-15	\N	\N
308	78	LRTHI	43	2002-01-04	2002-01-11	2002-01-18
309	10	LRTHI	3	2002-02-23	\N	\N
310	97	MRBOG	30	2002-05-15	2002-05-22	\N
311	96	SRWID	88	2001-09-30	\N	\N
312	69	LRTHI	52	2002-05-10	2002-05-17	2002-05-24
313	22	DGBOG	45	2002-06-18	\N	\N
314	6	DGBOG	5	2002-08-14	2002-08-21	\N
315	18	MBBOG	30	2001-09-13	\N	\N
316	29	SRGIZ	57	2001-09-16	2001-09-23	2001-09-30
317	25	MBTHI	24	2001-10-20	\N	\N
318	36	MBBOG	54	2002-07-25	2002-08-01	\N
319	68	MBTHI	2	2001-11-29	\N	\N
320	4	SRGIZ	79	2002-01-26	2002-02-02	2002-02-09
321	98	MBTHI	26	2002-03-13	\N	\N
322	52	MRBOG	56	2002-06-07	2002-06-14	\N
323	81	SGTHI	13	2002-01-28	\N	\N
324	62	DGBOG	2	2002-01-05	2002-01-12	2002-01-19
325	85	SGTHI	71	2002-02-27	\N	\N
326	10	SRGIZ	4	2002-07-24	2002-07-31	\N
327	10	SRWID	71	2002-05-06	\N	\N
328	70	SRWID	62	2002-03-24	2002-03-31	2002-04-07
329	19	DGBOG	46	2002-01-24	\N	\N
330	12	SRGIZ	2	2002-08-12	2002-08-19	\N
331	31	SRWID	1	2001-12-01	\N	\N
332	83	SGTHI	99	2002-02-19	2002-02-26	2002-03-05
333	90	MRBOG	77	2002-02-07	\N	\N
334	53	MRBOG	9	2002-05-12	2002-05-19	\N
335	85	SRGIZ	10	2001-12-13	\N	\N
336	74	LRTHI	27	2002-08-16	2002-08-23	2002-08-30
337	26	SRWID	79	2002-05-05	\N	\N
338	59	SRGIZ	6	2002-02-26	2002-03-05	\N
339	15	SRWID	83	2002-07-12	\N	\N
340	83	LBWID	97	2002-02-14	2002-02-21	2002-02-28
341	16	MRWID	41	2001-10-19	\N	\N
342	58	MRBOG	57	2002-07-14	2002-07-21	\N
343	54	LBWID	50	2002-08-15	\N	\N
344	9	SRGIZ	69	2002-08-21	2002-08-28	2002-09-04
345	1	DGBOG	32	2002-08-14	\N	\N
346	52	DGBOG	18	2002-08-06	2002-08-13	\N
347	72	SRGIZ	65	2002-04-11	\N	\N
348	40	SRGIZ	6	2002-06-15	2002-06-22	2002-06-29
349	77	SRWID	44	2002-08-30	\N	\N
350	88	LBWID	89	2002-01-26	2002-02-02	\N
351	99	SRGIZ	69	2002-07-14	\N	\N
352	96	MRWID	60	2002-08-10	2002-08-17	2002-08-24
353	19	SRWID	100	2002-02-24	\N	\N
354	13	MBBOG	29	2002-03-30	2002-04-06	\N
355	62	LRTHI	37	2001-10-02	\N	\N
356	61	MRBOG	31	2002-05-14	2002-05-21	2002-05-28
357	10	MBTHI	3	2002-03-09	\N	\N
358	97	LRTHI	73	2002-02-12	2002-02-19	\N
359	24	SGTHI	40	2002-05-10	\N	\N
360	87	LRTHI	84	2002-04-03	2002-04-10	2002-04-17
361	26	LRTHI	90	2002-04-05	\N	\N
362	41	SRGIZ	21	2002-07-13	2002-07-20	\N
363	100	SRGIZ	60	2002-03-04	\N	\N
364	18	SRGIZ	85	2002-06-17	2002-06-24	2002-07-01
365	25	MBTHI	29	2002-01-27	\N	\N
366	95	MBTHI	97	2002-01-28	2002-02-04	\N
367	88	LRTHI	38	2001-11-28	\N	\N
368	80	DGBOG	76	2002-07-29	2002-08-05	2002-08-12
369	22	MBTHI	67	2002-04-24	\N	\N
370	90	LRTHI	77	2002-01-04	2002-01-11	\N
371	50	MRBOG	50	2002-06-04	\N	\N
372	6	LRTHI	5	2002-01-14	2002-01-21	2002-01-28
373	74	SRGIZ	22	2002-03-02	\N	\N
374	8	SGTHI	54	2002-08-05	2002-08-12	\N
375	18	LRTHI	46	2001-10-12	\N	\N
376	3	DGBOG	86	2001-10-02	2001-10-09	2001-10-16
377	82	MBTHI	69	2001-10-02	\N	\N
378	83	SGTHI	86	2002-06-15	2002-06-22	\N
379	19	DGBOG	81	2002-05-07	\N	\N
380	98	MBBOG	38	2001-09-15	2001-09-22	2001-09-29
381	91	MBBOG	68	2001-09-22	\N	\N
382	92	MBTHI	34	2001-12-10	2001-12-17	\N
383	46	SRWID	31	2002-05-09	\N	\N
384	94	MRWID	48	2002-08-03	2002-08-10	2002-08-17
385	66	DGBOG	42	2001-09-21	\N	\N
386	84	SGTHI	1	2002-08-12	2002-08-19	\N
387	8	MBTHI	82	2002-09-03	\N	\N
388	33	MRWID	42	2001-09-26	2001-10-03	2001-10-10
389	39	MBBOG	80	2002-06-27	\N	\N
390	45	LBWID	11	2002-04-02	2002-04-09	\N
391	40	MBBOG	20	2001-10-16	\N	\N
392	55	LRTHI	73	2001-11-25	2001-12-02	2001-12-09
393	80	LRTHI	51	2001-09-19	\N	\N
394	8	DGBOG	7	2002-01-30	2002-02-06	\N
395	69	MBBOG	64	2002-03-02	\N	\N
396	88	MRWID	46	2002-08-29	2002-09-05	2002-09-12
397	36	MRWID	33	2002-01-27	\N	\N
398	64	MBTHI	47	2002-02-17	2002-02-24	\N
399	48	SRGIZ	35	2002-06-24	\N	\N
400	14	LRTHI	45	2002-06-17	2002-06-24	2002-07-01
401	24	MBTHI	4	2001-11-03	\N	\N
402	99	MRBOG	29	2001-10-20	2001-10-27	\N
403	15	SGTHI	28	2002-06-20	\N	\N
404	93	LRTHI	33	2002-08-21	2002-08-28	2002-09-04
405	94	SRGIZ	46	2002-03-13	\N	\N
406	8	MRWID	75	2002-03-10	2002-03-17	\N
407	36	SRWID	43	2002-05-16	\N	\N
408	45	MBTHI	44	2001-11-25	2001-12-02	2001-12-09
409	82	MBBOG	53	2002-02-04	\N	\N
410	28	MRWID	50	2002-09-09	2002-09-16	\N
411	39	SGTHI	7	2002-02-11	\N	\N
412	21	SRGIZ	77	2002-01-29	2002-02-05	2002-02-12
413	24	MBBOG	60	2002-03-08	\N	\N
414	2	LRTHI	8	2001-11-26	2001-12-03	\N
415	48	MRWID	55	2001-10-26	\N	\N
416	5	MRWID	70	2002-03-06	2002-03-13	2002-03-20
417	5	MBTHI	13	2002-04-11	\N	\N
418	72	SRWID	77	2001-11-26	2001-12-03	\N
419	79	DGBOG	93	2002-04-04	\N	\N
420	31	SRGIZ	7	2002-01-04	2002-01-11	2002-01-18
421	59	MBBOG	62	2002-04-29	\N	\N
422	46	LRTHI	31	2002-05-20	2002-05-27	\N
423	48	LRTHI	37	2002-04-22	\N	\N
424	24	MRBOG	97	2001-12-21	2001-12-28	2002-01-04
425	42	DGBOG	49	2001-11-21	\N	\N
426	12	SRWID	14	2002-03-23	2002-03-30	\N
427	3	MRBOG	98	2002-07-25	\N	\N
428	76	LRTHI	21	2002-09-09	2002-09-16	2002-09-23
429	51	MBBOG	5	2002-07-12	\N	\N
430	68	MRWID	10	2002-07-07	2002-07-14	\N
431	95	LRTHI	83	2002-08-24	\N	\N
432	19	SGTHI	25	2002-08-24	2002-08-31	2002-09-07
433	56	SGTHI	93	2002-08-31	\N	\N
434	7	LRTHI	78	2002-01-27	2002-02-03	\N
435	33	LBWID	95	2001-11-01	\N	\N
436	70	MBTHI	29	2001-12-31	2002-01-07	2002-01-14
437	72	MRBOG	67	2001-10-18	\N	\N
438	78	SRGIZ	86	2001-12-23	2001-12-30	\N
439	94	SGTHI	89	2002-02-12	\N	\N
440	54	SRGIZ	62	2002-03-10	2002-03-17	2002-03-24
441	84	SRWID	17	2002-02-17	\N	\N
442	93	MRWID	27	2002-09-02	2002-09-09	\N
443	85	SGTHI	92	2001-10-11	\N	\N
444	23	MRWID	49	2002-01-25	2002-02-01	2002-02-08
445	99	SRGIZ	22	2002-01-07	\N	\N
446	74	MBBOG	92	2002-08-23	2002-08-30	\N
447	79	MRWID	94	2002-01-14	\N	\N
448	26	SRGIZ	4	2002-08-22	2002-08-29	2002-09-05
449	98	MRWID	44	2001-10-01	\N	\N
450	49	SRWID	34	2001-10-14	2001-10-21	\N
451	63	SGTHI	93	2002-06-30	\N	\N
452	21	DGBOG	22	2002-08-26	2002-09-02	2002-09-09
453	4	MRWID	34	2002-08-02	\N	\N
454	40	LRTHI	51	2001-11-07	2001-11-14	\N
455	78	MRWID	18	2002-04-10	\N	\N
456	100	DGBOG	50	2002-07-27	2002-08-03	2002-08-10
457	95	SGTHI	13	2002-02-13	\N	\N
458	100	DGBOG	65	2002-09-03	2002-09-10	\N
459	48	SGTHI	88	2002-03-01	\N	\N
460	93	DGBOG	95	2001-10-14	2001-10-21	2001-10-28
461	17	SGTHI	69	2002-04-20	\N	\N
462	1	LBWID	92	2002-01-25	2002-02-01	\N
463	2	SRWID	68	2002-03-15	\N	\N
464	64	LRTHI	5	2002-01-03	2002-01-10	2002-01-17
465	90	MRWID	78	2001-09-29	\N	\N
466	77	SGTHI	6	2002-07-29	2002-08-05	\N
467	58	SRWID	32	2002-05-25	\N	\N
468	11	SRGIZ	11	2002-03-05	2002-03-12	2002-03-19
469	5	LBWID	36	2002-02-20	\N	\N
470	65	MRBOG	56	2002-06-02	2002-06-09	\N
471	22	MRBOG	49	2002-08-13	\N	\N
472	41	SRGIZ	30	2002-06-01	2002-06-08	2002-06-15
473	49	MRBOG	68	2001-11-19	\N	\N
474	13	MBTHI	96	2002-05-28	2002-06-04	\N
475	2	MBTHI	49	2001-10-19	\N	\N
476	76	MRBOG	69	2001-10-31	2001-11-07	2001-11-14
477	20	DGBOG	36	2002-04-17	\N	\N
478	31	SGTHI	17	2002-08-08	2002-08-15	\N
479	68	LRTHI	32	2002-01-18	\N	\N
480	15	DGBOG	71	2002-02-21	2002-02-28	2002-03-07
481	10	LBWID	77	2001-12-09	\N	\N
482	15	SRGIZ	10	2002-01-10	2002-01-17	\N
483	88	MBTHI	27	2002-03-21	\N	\N
484	47	SGTHI	97	2002-06-26	2002-07-03	2002-07-10
485	64	LRTHI	44	2002-01-16	\N	\N
486	76	LRTHI	88	2002-09-08	2002-09-15	\N
487	19	MBBOG	28	2002-01-26	\N	\N
488	14	SGTHI	36	2001-11-21	2001-11-28	2001-12-05
489	55	SRWID	14	2001-12-06	\N	\N
490	42	MRWID	45	2002-09-07	2002-09-14	\N
491	47	SGTHI	41	2002-03-06	\N	\N
492	43	MBTHI	88	2002-03-27	2002-04-03	2002-04-10
493	22	DGBOG	100	2001-12-19	\N	\N
494	10	SGTHI	47	2002-04-10	2002-04-17	\N
495	6	MRBOG	30	2002-01-03	\N	\N
496	9	LRTHI	57	2002-09-09	2002-09-16	2002-09-23
497	66	LBWID	83	2002-07-16	\N	\N
498	82	MBBOG	56	2002-01-13	2002-01-20	\N
499	100	DGBOG	60	2002-01-06	\N	\N
500	97	SRWID	53	2001-12-17	2001-12-24	2001-12-31
501	7	LRTHI	37	2001-12-05	\N	\N
502	13	MRWID	49	2002-07-23	2002-07-30	\N
503	18	MRBOG	49	2002-08-07	\N	\N
504	73	MRBOG	93	2001-11-11	2001-11-18	2001-11-25
505	30	LRTHI	28	2002-03-14	\N	\N
506	31	MBBOG	93	2002-05-05	2002-05-12	\N
507	35	SRWID	92	2002-03-19	\N	\N
508	85	LRTHI	37	2001-12-26	2002-01-02	2002-01-09
509	86	MRBOG	5	2002-05-30	\N	\N
510	34	MRWID	56	2001-10-02	2001-10-09	\N
511	13	LBWID	21	2002-02-09	\N	\N
512	50	LRTHI	20	2002-07-06	2002-07-13	2002-07-20
513	31	SRWID	4	2001-10-13	\N	\N
514	58	MBTHI	97	2002-04-10	2002-04-17	\N
515	44	SGTHI	5	2002-05-21	\N	\N
516	98	LBWID	47	2002-06-26	2002-07-03	2002-07-10
517	6	MRBOG	48	2002-08-25	\N	\N
518	80	SRGIZ	49	2002-05-24	2002-05-31	\N
519	30	MRWID	14	2002-05-16	\N	\N
520	85	MBBOG	66	2001-12-29	2002-01-05	2002-01-12
521	93	MBBOG	10	2002-04-24	\N	\N
522	91	MRWID	88	2001-11-02	2001-11-09	\N
523	56	MRWID	87	2002-07-07	\N	\N
524	92	DGBOG	50	2002-03-02	2002-03-09	2002-03-16
525	5	MBBOG	65	2002-02-04	\N	\N
526	59	MRBOG	64	2002-01-12	2002-01-19	\N
527	20	MBBOG	96	2002-04-15	\N	\N
528	68	MRWID	32	2001-11-25	2001-12-02	2001-12-09
529	3	SGTHI	53	2002-04-13	\N	\N
530	74	SRWID	15	2001-12-15	2001-12-22	\N
531	29	SRWID	84	2001-10-28	\N	\N
532	89	MBTHI	84	2002-09-11	2002-09-18	2002-09-25
533	26	SGTHI	29	2002-09-07	\N	\N
534	20	MRWID	12	2001-10-21	2001-10-28	\N
535	59	MRBOG	15	2002-03-28	\N	\N
536	39	MBTHI	46	2002-01-24	2002-01-31	2002-02-07
537	91	LBWID	76	2002-01-10	\N	\N
538	52	MRWID	97	2002-02-19	2002-02-26	\N
539	52	MBBOG	78	2001-11-18	\N	\N
540	44	SGTHI	25	2002-05-14	2002-05-21	2002-05-28
541	7	MBBOG	94	2002-06-06	\N	\N
542	41	DGBOG	13	2002-05-14	2002-05-21	\N
543	93	MBBOG	26	2001-12-21	\N	\N
544	99	MBTHI	23	2002-01-13	2002-01-20	2002-01-27
545	89	MBTHI	7	2002-08-21	\N	\N
546	30	LRTHI	27	2001-10-27	2001-11-03	\N
547	92	SRGIZ	39	2002-05-15	\N	\N
548	71	MRBOG	83	2002-07-16	2002-07-23	2002-07-30
549	87	SRWID	46	2001-10-25	\N	\N
550	17	MBBOG	19	2001-09-23	2001-09-30	\N
551	60	LBWID	41	2002-05-30	\N	\N
552	89	LRTHI	45	2002-08-01	2002-08-08	2002-08-15
553	45	LBWID	85	2001-12-27	\N	\N
554	48	LRTHI	69	2001-10-25	2001-11-01	\N
555	57	MRBOG	21	2002-01-24	\N	\N
556	33	MBTHI	50	2002-04-29	2002-05-06	2002-05-13
557	78	LBWID	60	2002-07-15	\N	\N
558	95	LBWID	61	2002-06-11	2002-06-18	\N
559	47	MBTHI	27	2001-11-24	\N	\N
560	80	SGTHI	46	2002-09-11	2002-09-18	2002-09-25
561	17	SRGIZ	94	2002-04-12	\N	\N
562	42	MBBOG	12	2002-05-20	2002-05-27	\N
563	2	MBBOG	34	2002-06-30	\N	\N
564	88	DGBOG	70	2002-01-10	2002-01-17	2002-01-24
565	56	LRTHI	91	2002-01-10	\N	\N
566	13	MRBOG	67	2001-09-17	2001-09-24	\N
567	20	LRTHI	13	2002-05-30	\N	\N
568	17	MRBOG	27	2002-08-05	2002-08-12	2002-08-19
569	22	SRWID	86	2002-09-10	\N	\N
570	17	LBWID	27	2002-06-11	2002-06-18	\N
571	55	DGBOG	47	2001-10-15	\N	\N
572	8	SRWID	69	2001-10-30	2001-11-06	2001-11-13
573	21	LRTHI	67	2002-04-24	\N	\N
574	80	MBTHI	14	2001-10-26	2001-11-01	\N
575	91	MBBOG	61	2002-03-05	\N	\N
576	84	SRGIZ	65	2002-03-25	2002-04-01	2002-04-08
577	67	MBTHI	3	2002-07-28	\N	\N
578	4	MBBOG	70	2002-05-31	2002-06-07	\N
579	84	MBBOG	83	2002-03-24	\N	\N
580	38	MRWID	3	2002-04-04	2002-04-11	2002-04-18
581	68	DGBOG	28	2002-09-08	\N	\N
582	63	MBBOG	55	2002-06-26	2002-07-03	\N
583	63	SGTHI	38	2002-04-08	\N	\N
584	22	DGBOG	61	2001-10-17	2001-10-24	2001-10-31
585	31	SGTHI	90	2001-09-18	\N	\N
586	33	LBWID	93	2002-03-08	2002-03-15	\N
587	75	DGBOG	41	2001-12-24	\N	\N
588	47	SGTHI	64	2001-11-12	2001-11-19	2001-11-26
589	33	MBTHI	55	2002-09-12	\N	\N
590	14	SRGIZ	71	2002-08-03	2002-08-10	\N
591	100	MRWID	52	2002-08-14	\N	\N
592	67	DGBOG	74	2001-10-02	2001-10-09	2001-10-16
593	35	SRWID	16	2002-03-05	\N	\N
594	84	MRWID	3	2002-09-11	2002-09-18	\N
595	70	SRGIZ	1	2002-07-16	\N	\N
596	5	SGTHI	13	2001-09-14	2001-09-21	2001-09-28
597	57	SRWID	57	2001-12-13	\N	\N
598	6	SRGIZ	1	2001-10-04	2001-10-11	\N
599	85	MBTHI	93	2001-12-23	\N	\N
600	37	LBWID	100	2001-11-05	2001-11-12	2001-11-19
601	51	MBBOG	70	2002-03-11	\N	\N
602	62	LBWID	26	2002-09-06	2002-09-13	\N
603	98	SGTHI	64	2002-04-26	\N	\N
604	54	LBWID	61	2002-01-07	2002-01-14	2002-01-21
605	9	MRWID	34	2002-03-24	\N	\N
606	7	SGTHI	1	2002-05-05	2002-05-12	\N
607	4	DGBOG	33	2002-04-24	\N	\N
608	47	LBWID	35	2002-08-16	2002-08-23	2002-08-30
609	15	MBBOG	77	2002-08-19	\N	\N
610	43	LRTHI	19	2002-01-03	2002-01-10	\N
611	75	LRTHI	78	2001-12-25	\N	\N
612	14	SRWID	81	2001-09-22	2001-09-29	2001-10-06
613	34	LBWID	8	2002-06-06	\N	\N
614	65	MBBOG	74	2002-04-11	2002-04-18	\N
615	9	DGBOG	34	2002-03-02	\N	\N
616	67	MBBOG	81	2001-12-22	2001-12-29	2002-01-05
617	71	MBTHI	84	2002-07-18	\N	\N
618	44	SRGIZ	90	2002-03-02	2002-03-09	\N
619	97	MRBOG	88	2001-12-13	\N	\N
620	75	DGBOG	69	2002-02-13	2002-02-20	2002-02-27
621	68	MBTHI	33	2001-10-28	\N	\N
622	26	LRTHI	39	2002-04-25	2002-05-02	\N
623	14	MRWID	15	2002-06-07	\N	\N
624	6	SRWID	42	2002-02-24	2002-03-03	2002-03-10
625	12	SRWID	69	2002-03-28	\N	\N
626	72	MRWID	65	2002-05-19	2002-05-26	\N
627	97	SGTHI	83	2002-07-29	\N	\N
628	22	MBBOG	33	2002-05-08	2002-05-15	2002-05-22
629	67	MBBOG	58	2002-02-10	\N	\N
630	70	SRGIZ	60	2002-02-18	2002-02-25	\N
631	67	LRTHI	26	2002-01-29	\N	\N
632	51	MBTHI	55	2001-10-22	2001-10-29	2001-11-05
633	66	DGBOG	20	2002-06-18	\N	\N
634	91	DGBOG	54	2001-11-01	2001-11-08	\N
635	100	SRGIZ	60	2002-07-15	\N	\N
636	51	MBBOG	36	2002-02-23	2002-03-02	2002-03-09
637	9	MRBOG	85	2001-10-28	\N	\N
638	77	DGBOG	16	2001-11-01	2001-11-08	\N
639	60	MBTHI	82	2002-04-27	\N	\N
640	17	SRWID	15	2002-07-19	2002-07-26	2002-08-02
641	72	MRWID	31	2002-02-17	\N	\N
642	66	LRTHI	81	2002-07-26	2002-08-02	\N
643	42	MRWID	88	2001-12-03	\N	\N
644	18	DGBOG	60	2002-04-19	2002-04-26	2002-05-03
645	7	MBBOG	72	2002-07-07	\N	\N
646	8	SRWID	45	2002-04-25	2002-05-02	\N
647	7	LRTHI	3	2001-09-25	\N	\N
648	58	SRWID	37	2002-06-17	2002-06-24	2002-07-01
649	96	LBWID	74	2002-02-14	\N	\N
650	27	SGTHI	2	2002-06-12	2002-06-19	\N
651	81	MRBOG	91	2002-06-27	\N	\N
652	80	MRBOG	33	2002-05-19	2002-05-26	2002-06-02
653	92	SRWID	29	2002-04-14	\N	\N
654	21	LBWID	6	2002-01-02	2002-01-09	\N
655	64	SRGIZ	12	2001-10-20	\N	\N
656	94	MRBOG	11	2002-02-27	2002-03-06	2002-03-13
657	46	SRGIZ	89	2002-08-25	\N	\N
658	13	SRWID	84	2001-10-24	2001-10-31	\N
659	76	DGBOG	22	2002-08-13	\N	\N
660	63	SRWID	67	2002-04-03	2002-04-10	2002-04-17
661	20	MBTHI	67	2002-02-10	\N	\N
662	96	LRTHI	33	2002-07-07	2002-07-14	\N
663	22	SGTHI	46	2002-05-28	\N	\N
664	93	MBTHI	90	2001-11-10	2001-11-17	2001-11-24
665	24	LRTHI	45	2002-09-03	\N	\N
666	34	LBWID	82	2002-03-21	2002-03-28	\N
667	66	LRTHI	69	2002-06-23	\N	\N
668	22	MRBOG	65	2001-10-16	2001-10-23	2001-10-30
669	35	SRWID	36	2002-07-06	\N	\N
670	6	SGTHI	100	2002-08-17	2002-08-24	\N
671	33	LRTHI	20	2001-10-04	\N	\N
672	72	SGTHI	71	2001-11-28	2001-12-05	2001-12-12
673	74	DGBOG	20	2001-12-05	\N	\N
674	13	MRWID	70	2001-10-30	2001-11-06	\N
675	99	MBBOG	44	2001-11-09	\N	\N
676	42	LRTHI	41	2002-05-21	2002-05-28	2002-06-04
677	60	MBBOG	11	2001-12-28	\N	\N
678	82	SGTHI	78	2002-03-10	2002-03-17	\N
679	13	SRWID	98	2002-04-17	\N	\N
680	47	SRWID	19	2002-05-10	2002-05-17	2002-05-24
681	69	MBTHI	57	2001-12-16	\N	\N
682	41	SRGIZ	73	2001-12-04	2001-12-11	\N
683	77	SGTHI	2	2002-03-16	\N	\N
684	13	SRWID	4	2002-09-11	2002-09-18	2002-09-25
685	49	LBWID	71	2001-11-07	\N	\N
686	34	LRTHI	6	2002-05-18	2002-05-25	\N
687	79	DGBOG	31	2001-12-14	\N	\N
688	8	MRBOG	75	2002-01-06	2002-01-13	2002-01-20
689	94	SRGIZ	35	2001-10-07	\N	\N
690	20	MRBOG	49	2002-01-17	2002-01-24	\N
691	45	DGBOG	47	2002-05-07	\N	\N
692	54	MBTHI	53	2002-02-19	2002-02-26	2002-03-05
693	59	MBBOG	33	2001-10-09	\N	\N
694	65	SRWID	49	2001-11-07	2001-11-14	\N
695	64	MRBOG	90	2002-06-25	\N	\N
696	50	SGTHI	7	2002-07-15	2002-07-22	2002-07-29
697	72	LBWID	12	2002-07-01	\N	\N
698	19	MBBOG	77	2002-04-09	2002-04-16	\N
699	94	LBWID	74	2002-05-29	\N	\N
700	14	SRWID	46	2002-08-27	2002-09-03	2002-09-10
701	89	LBWID	66	2001-09-27	\N	\N
702	41	MBTHI	75	2002-04-05	2002-04-12	\N
703	62	SRGIZ	72	2002-02-03	\N	\N
704	8	MRWID	44	2001-12-19	2001-12-26	2002-01-02
705	77	LRTHI	91	2001-09-17	\N	\N
706	10	LRTHI	97	2002-02-07	2002-02-14	\N
707	11	LRTHI	83	2002-06-01	\N	\N
708	15	DGBOG	74	2002-03-24	2002-03-31	2002-04-07
709	38	DGBOG	68	2001-10-09	\N	\N
710	48	SRWID	16	2002-08-25	2002-09-01	\N
711	53	DGBOG	1	2002-02-19	\N	\N
712	69	DGBOG	63	2002-04-30	2002-05-07	2002-05-14
713	98	MBTHI	58	2001-09-17	\N	\N
714	21	MRWID	42	2002-07-07	2002-07-14	\N
715	41	SRWID	41	2002-02-08	\N	\N
716	79	DGBOG	1	2002-08-17	2002-08-24	2002-08-31
717	31	SRWID	26	2001-12-23	\N	\N
718	12	MRBOG	50	2002-04-03	2002-04-10	\N
719	60	MRBOG	95	2002-02-28	\N	\N
720	79	LBWID	47	2001-09-16	2001-09-23	2001-09-30
721	88	MRWID	29	2002-06-05	\N	\N
722	74	MRBOG	39	2002-08-03	2002-08-10	\N
723	2	SRWID	14	2002-05-30	\N	\N
724	93	MBBOG	24	2001-12-11	2001-12-18	2001-12-25
725	56	SGTHI	25	2002-06-02	\N	\N
726	8	SRGIZ	64	2002-02-22	2002-03-01	\N
727	82	DGBOG	40	2001-12-12	\N	\N
728	21	MRBOG	1	2002-04-29	2002-05-06	2002-05-13
729	58	MRBOG	89	2002-05-25	\N	\N
730	32	LRTHI	98	2002-04-29	2002-05-06	\N
731	100	SRGIZ	41	2002-02-17	\N	\N
732	56	MBTHI	94	2002-05-12	2002-05-19	2002-05-26
733	78	MRBOG	59	2002-04-15	\N	\N
734	20	SRWID	40	2002-04-11	2002-04-18	\N
735	62	MRWID	19	2001-12-22	\N	\N
736	4	LRTHI	44	2002-02-15	2002-02-22	2002-03-01
737	68	MRBOG	30	2002-04-13	\N	\N
738	36	LBWID	58	2002-01-15	2002-01-22	\N
739	10	SRGIZ	89	2002-04-28	\N	\N
740	69	MRBOG	46	2002-09-01	2002-09-08	2002-09-15
741	67	LRTHI	76	2001-11-30	\N	\N
742	100	MBBOG	27	2002-05-23	2002-05-30	\N
743	33	LBWID	55	2001-10-27	\N	\N
744	10	LRTHI	45	2002-05-18	2002-05-25	2002-06-01
745	54	DGBOG	71	2002-06-19	\N	\N
746	49	MRBOG	33	2001-12-01	2001-12-08	\N
747	50	MBTHI	35	2001-11-10	\N	\N
748	3	SRGIZ	6	2002-01-20	2002-01-27	2002-02-03
749	90	MBBOG	31	2002-01-31	\N	\N
750	80	MRBOG	22	2002-05-04	2002-05-11	\N
751	91	LBWID	3	2002-01-07	\N	\N
752	50	MBBOG	51	2001-10-01	2001-10-08	2001-10-15
753	49	MBBOG	2	2002-03-19	\N	\N
754	93	MRBOG	18	2002-03-07	2002-03-14	\N
755	17	DGBOG	44	2002-09-06	\N	\N
756	14	SRGIZ	99	2002-08-19	2002-08-26	2002-09-02
757	22	LRTHI	74	2002-02-27	\N	\N
758	75	MBBOG	53	2002-03-24	2002-03-31	\N
759	53	LRTHI	62	2001-11-02	\N	\N
760	92	MRWID	51	2002-06-06	2002-06-13	2002-06-20
761	51	SGTHI	86	2001-11-27	\N	\N
762	88	MRWID	82	2002-05-26	2002-06-02	\N
763	28	MBTHI	68	2002-04-02	\N	\N
764	35	SRWID	30	2002-03-28	2002-04-04	2002-04-11
765	32	SRWID	44	2002-07-15	\N	\N
766	43	SRWID	63	2001-12-29	2002-01-05	\N
767	43	DGBOG	37	2002-07-07	\N	\N
768	87	SRWID	32	2001-09-17	2001-09-24	2001-10-01
769	82	MRWID	94	2001-10-29	\N	\N
770	87	MBTHI	28	2002-06-01	2002-06-08	\N
771	14	DGBOG	32	2002-09-06	\N	\N
772	5	SGTHI	79	2001-12-16	2001-12-23	2001-12-30
773	75	SGTHI	97	2001-11-26	\N	\N
774	35	MBBOG	90	2001-11-01	2001-11-08	\N
775	57	LBWID	8	2002-06-08	\N	\N
776	67	SRWID	69	2002-08-12	2002-08-19	2002-08-26
777	80	DGBOG	5	2002-01-09	\N	\N
778	14	SGTHI	46	2002-05-29	2002-06-05	\N
779	18	MBBOG	59	2002-01-29	\N	\N
780	95	LBWID	55	2001-12-09	2001-12-16	2001-12-23
781	59	MRWID	42	2001-11-01	\N	\N
782	3	SRWID	69	2002-01-04	2002-01-11	\N
783	60	MRWID	67	2001-09-26	\N	\N
784	47	MBTHI	13	2001-12-20	2001-12-27	2002-01-03
785	3	SGTHI	28	2001-09-28	\N	\N
786	93	MRWID	19	2002-07-30	2002-08-06	\N
787	55	SGTHI	69	2002-07-24	\N	\N
788	53	LRTHI	70	2001-12-06	2001-12-13	2001-12-20
789	29	SRWID	12	2002-03-04	\N	\N
790	100	MRBOG	100	2002-07-18	2002-07-25	\N
791	62	MRWID	49	2001-11-13	\N	\N
792	92	SRWID	11	2002-07-26	2002-08-02	2002-08-09
793	54	MRBOG	91	2001-11-28	\N	\N
794	93	SRWID	36	2001-12-20	2001-12-27	\N
795	66	MRWID	17	2002-06-18	\N	\N
796	51	DGBOG	76	2002-01-30	2002-02-06	2002-02-13
797	15	DGBOG	38	2001-10-02	\N	\N
798	35	SRGIZ	64	2002-04-19	2002-04-26	\N
799	23	MBTHI	36	2002-08-02	\N	\N
800	97	DGBOG	21	2001-10-01	2001-10-08	2001-10-15
801	15	MBTHI	60	2002-03-16	\N	\N
802	43	SRGIZ	51	2001-11-30	2001-12-07	\N
803	35	MRWID	13	2002-04-01	\N	\N
804	60	LBWID	12	2002-07-07	2002-07-14	2002-07-21
805	3	SRGIZ	66	2001-12-05	\N	\N
806	15	MRBOG	93	2001-11-24	2001-12-01	\N
807	42	LBWID	57	2001-11-21	\N	\N
808	20	SGTHI	61	2002-01-17	2002-01-24	2002-01-31
809	17	SRGIZ	17	2002-03-05	\N	\N
810	79	MBBOG	44	2002-08-13	2002-08-20	\N
811	13	LBWID	75	2002-08-10	\N	\N
812	15	LRTHI	26	2002-02-13	2002-02-20	2002-02-27
813	65	SRGIZ	70	2002-06-04	\N	\N
814	55	DGBOG	86	2002-02-04	2002-02-11	\N
815	71	LBWID	56	2002-05-29	\N	\N
816	41	LBWID	51	2002-04-15	2002-04-22	2002-04-29
817	99	MBTHI	68	2001-12-07	\N	\N
818	60	MRBOG	42	2002-05-04	2002-05-11	\N
819	86	DGBOG	66	2002-03-28	\N	\N
820	11	SRGIZ	98	2002-02-20	2002-02-27	2002-03-06
821	19	MRWID	9	2001-12-26	\N	\N
822	67	SRGIZ	90	2001-12-11	2001-12-18	\N
823	12	MRWID	58	2001-09-17	\N	\N
824	66	MRBOG	98	2001-09-28	2001-10-05	2001-10-12
825	19	SRWID	16	2001-12-03	\N	\N
826	10	SRWID	32	2001-10-03	2001-10-10	\N
827	63	LBWID	60	2001-10-29	\N	\N
828	91	DGBOG	39	2001-12-16	2001-12-23	2001-12-30
829	45	SRGIZ	83	2002-05-18	\N	\N
830	10	MRWID	14	2002-05-27	2002-06-03	\N
831	46	MBTHI	3	2002-01-28	\N	\N
832	52	SGTHI	58	2001-10-02	2001-10-09	2001-10-16
833	47	MRWID	60	2002-03-25	\N	\N
834	33	SGTHI	28	2001-11-29	2001-12-06	\N
835	5	MRBOG	99	2001-09-21	\N	\N
836	70	LBWID	97	2001-09-17	2001-09-24	2001-10-01
837	24	DGBOG	30	2002-03-04	\N	\N
838	36	SRGIZ	15	2001-10-18	2001-10-25	\N
839	34	MBTHI	83	2002-03-11	\N	\N
840	94	MBBOG	53	2002-05-16	2002-05-23	2002-05-30
841	10	LBWID	56	2001-12-25	\N	\N
842	49	LRTHI	51	2002-04-19	2002-04-26	\N
843	68	DGBOG	75	2001-10-17	\N	\N
844	42	SGTHI	31	2002-01-31	2002-02-07	2002-02-14
845	45	MBBOG	26	2001-11-06	\N	\N
846	85	MBBOG	15	2002-08-27	2002-09-03	\N
847	61	LRTHI	36	2002-04-19	\N	\N
848	18	SRWID	68	2002-06-30	2002-07-07	2002-07-14
849	23	MBBOG	11	2002-04-26	\N	\N
850	7	MBBOG	40	2002-08-06	2002-08-13	\N
851	2	SGTHI	3	2001-12-26	\N	\N
852	24	LRTHI	99	2001-11-26	2001-12-03	2001-12-10
853	25	LRTHI	23	2001-10-01	\N	\N
854	73	LRTHI	98	2002-06-11	2002-06-18	\N
855	47	MRBOG	54	2002-04-13	\N	\N
856	36	LBWID	86	2002-01-08	2002-01-15	2002-01-22
857	65	SRWID	35	2002-05-19	\N	\N
858	27	MRWID	89	2002-07-04	2002-07-11	\N
859	44	LBWID	19	2002-01-21	\N	\N
860	89	MBTHI	10	2001-12-22	2001-12-29	2002-01-05
861	7	SGTHI	89	2002-04-19	\N	\N
862	41	MRWID	22	2002-08-28	2002-09-04	\N
863	96	MRBOG	42	2002-03-12	\N	\N
864	20	LBWID	21	2002-06-28	2002-07-05	2002-07-12
865	48	SRGIZ	24	2001-12-14	\N	\N
866	1	SRWID	12	2002-03-30	2002-04-06	\N
867	81	SRWID	68	2002-01-10	\N	\N
868	35	SGTHI	88	2002-08-30	2002-09-06	2002-09-13
869	60	MRBOG	86	2002-01-29	\N	\N
870	92	SRWID	22	2001-10-20	2001-10-27	\N
871	24	MBTHI	92	2001-09-22	\N	\N
872	25	LBWID	83	2001-09-26	2001-10-03	2001-10-10
873	29	LBWID	6	2002-01-26	\N	\N
874	35	SRWID	34	2002-02-17	2002-02-24	\N
875	5	LBWID	21	2001-10-15	\N	\N
876	33	MBTHI	8	2001-09-29	2001-10-06	2001-10-13
877	60	MRBOG	54	2002-03-17	\N	\N
878	79	SGTHI	31	2001-10-04	2001-10-11	\N
879	15	MRBOG	9	2002-02-13	\N	\N
880	37	SRGIZ	37	2002-01-18	2002-01-25	2002-02-01
881	11	MRWID	13	2002-04-13	\N	\N
882	50	MRWID	11	2001-11-05	2001-11-12	\N
883	33	MRWID	79	2002-06-11	\N	\N
884	26	DGBOG	37	2001-12-31	2002-01-07	2002-01-14
885	84	LBWID	30	2002-07-12	\N	\N
886	98	LBWID	79	2002-01-08	2002-01-15	\N
887	58	SGTHI	49	2002-01-04	\N	\N
888	68	MBTHI	94	2002-05-03	2002-05-10	2002-05-17
889	92	LRTHI	24	2001-11-29	\N	\N
890	19	SRGIZ	71	2001-10-09	2001-10-16	\N
891	27	MRWID	6	2001-10-20	\N	\N
892	97	DGBOG	46	2002-01-20	2002-01-27	2002-02-03
893	69	MRWID	74	2002-02-15	\N	\N
894	22	LBWID	25	2002-04-20	2002-04-27	\N
895	14	LRTHI	15	2001-09-25	\N	\N
896	73	MBTHI	4	2001-10-14	2001-10-21	2001-10-28
897	2	LRTHI	19	2001-12-07	\N	\N
898	71	MRBOG	94	2002-01-04	2002-01-11	\N
899	68	SRWID	48	2002-07-31	\N	\N
900	89	SRGIZ	31	2001-12-31	2002-01-07	2002-01-14
901	92	SRWID	27	2002-08-25	\N	\N
902	37	LRTHI	59	2002-01-15	2002-01-22	\N
903	63	SRWID	62	2002-07-20	\N	\N
904	27	MRWID	77	2002-07-13	2002-07-20	2002-07-27
905	84	DGBOG	21	2001-11-22	\N	\N
906	19	LBWID	100	2002-06-28	2002-07-05	\N
907	40	MBTHI	84	2001-10-21	\N	\N
908	98	LRTHI	9	2002-03-29	2002-04-05	2002-04-12
909	15	DGBOG	79	2001-12-15	\N	\N
910	30	SRWID	30	2002-04-10	2002-04-17	\N
911	84	MRWID	55	2002-04-28	\N	\N
912	6	LBWID	97	2001-10-30	2001-11-06	2001-11-13
913	70	SGTHI	40	2002-05-20	\N	\N
914	63	MRBOG	88	2001-09-22	2001-09-29	\N
915	63	MRWID	61	2001-11-21	\N	\N
916	16	MBBOG	14	2002-02-09	2002-02-16	2002-02-23
917	52	MBBOG	73	2002-07-31	\N	\N
918	68	LRTHI	61	2002-05-24	2002-05-31	\N
919	9	LRTHI	42	2002-02-20	\N	\N
920	39	SGTHI	80	2002-03-28	2002-04-04	2002-04-11
921	98	LBWID	3	2002-08-13	\N	\N
922	17	MRBOG	77	2002-09-09	2002-09-16	\N
923	36	SGTHI	62	2001-11-30	\N	\N
924	45	MBTHI	66	2001-09-25	2001-10-02	2001-10-09
925	99	SRWID	5	2002-06-29	\N	\N
926	35	MBTHI	80	2002-04-08	2002-04-15	\N
927	12	MRWID	81	2002-05-15	\N	\N
928	65	MBTHI	14	2002-04-15	2002-04-22	2002-04-29
929	15	MRBOG	94	2002-07-15	\N	\N
930	14	MBBOG	97	2002-05-02	2002-05-09	\N
931	34	MRBOG	57	2002-08-03	\N	\N
932	61	SRWID	57	2002-08-27	2002-09-03	2002-09-10
933	80	SRGIZ	80	2001-09-19	\N	\N
934	60	MBTHI	34	2002-04-07	2002-04-14	\N
935	77	SRGIZ	77	2002-08-27	\N	\N
936	54	LRTHI	44	2002-03-05	2002-03-12	2002-03-19
937	38	LRTHI	72	2002-01-07	\N	\N
938	22	MBBOG	85	2002-03-22	2002-03-29	\N
939	9	SRWID	86	2002-05-30	\N	\N
940	56	MBTHI	94	2002-09-12	2002-09-19	2002-09-26
941	70	SRGIZ	47	2002-03-20	\N	\N
942	1	MRBOG	26	2002-08-22	2002-08-29	\N
943	96	DGBOG	74	2002-05-16	\N	\N
944	37	MBTHI	43	2001-12-12	2001-12-19	2001-12-26
945	90	MBBOG	5	2002-08-10	\N	\N
946	52	MRBOG	31	2001-10-17	2001-10-24	\N
947	44	MBBOG	27	2002-07-11	\N	\N
948	21	LBWID	60	2002-08-11	2002-08-18	2002-08-25
949	23	SGTHI	96	2002-08-18	\N	\N
950	20	MBTHI	34	2001-10-19	2001-10-26	\N
951	44	MRWID	63	2001-12-28	\N	\N
952	100	MRBOG	28	2002-09-11	2002-09-18	2002-09-25
953	91	MRBOG	77	2002-05-10	\N	\N
954	72	MRBOG	26	2001-10-06	2001-10-13	\N
955	18	MRBOG	100	2001-10-01	\N	\N
956	9	MRWID	42	2001-12-06	2001-12-13	2001-12-20
957	78	MBTHI	39	2002-04-28	\N	\N
958	14	MRWID	54	2001-12-14	2001-12-21	\N
959	90	MBBOG	38	2001-12-02	\N	\N
960	89	SGTHI	55	2002-04-01	2002-04-08	2002-04-15
961	39	MBTHI	14	2002-03-14	\N	\N
962	9	SRWID	64	2002-02-26	2002-03-05	\N
963	21	LRTHI	44	2002-04-27	\N	\N
964	44	DGBOG	69	2002-08-20	2002-08-27	2002-09-03
965	79	MBTHI	43	2002-03-23	\N	\N
966	40	MRWID	16	2002-08-24	2002-08-31	\N
967	85	SRWID	68	2002-04-06	\N	\N
968	72	LBWID	65	2001-11-17	2001-11-24	2001-12-01
969	26	MBTHI	83	2002-06-04	\N	\N
970	67	SRWID	42	2002-06-08	2002-06-15	\N
971	76	MBBOG	40	2001-10-24	\N	\N
972	7	DGBOG	16	2002-01-07	2002-01-14	2002-01-21
973	57	MBTHI	59	2002-01-11	\N	\N
974	90	MBBOG	38	2002-08-27	2002-09-03	\N
975	75	SRWID	23	2002-01-07	\N	\N
976	21	SGTHI	14	2002-07-01	2002-07-08	2002-07-15
977	58	LBWID	12	2002-09-01	\N	\N
978	17	LRTHI	15	2002-04-25	2002-05-02	\N
979	14	MRWID	9	2001-10-03	\N	\N
980	64	LRTHI	25	2002-05-06	2002-05-13	2002-05-20
981	39	SGTHI	89	2002-02-28	\N	\N
982	70	MRWID	42	2001-10-12	2001-10-19	\N
983	8	SRGIZ	8	2002-04-01	\N	\N
984	45	SRGIZ	40	2001-11-14	2001-11-21	2001-11-28
985	12	SRWID	75	2002-01-13	\N	\N
986	20	SRWID	54	2002-08-28	2002-09-04	\N
987	60	MBTHI	45	2002-06-07	\N	\N
988	78	MRBOG	85	2001-09-24	2001-10-01	2001-10-08
989	20	SRWID	60	2002-02-08	\N	\N
990	14	MBBOG	13	2002-01-01	2002-01-08	\N
991	52	MRBOG	64	2002-08-25	\N	\N
992	45	SGTHI	23	2002-04-27	2002-05-04	2002-05-11
993	80	MRWID	4	2001-09-21	\N	\N
994	18	MRWID	52	2002-01-03	2002-01-10	\N
995	65	DGBOG	32	2002-05-24	\N	\N
996	58	SGTHI	35	2001-10-27	2001-11-03	2001-11-10
997	51	MBBOG	34	2002-07-07	\N	\N
998	18	LRTHI	22	2002-07-17	2002-07-24	\N
999	10	SRGIZ	59	2002-02-04	\N	\N
1000	18	SGTHI	87	2002-06-15	2002-06-22	2002-06-29
\.

--vacuum diary;





