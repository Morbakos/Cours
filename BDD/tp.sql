1) EXPLAIN SELECT dy_company, date(dy_timestamp) FROM diary;

-- +----------------------------------------------------------+
-- |                        QUERY PLAN                        |
-- +----------------------------------------------------------+
-- | Seq Scan on diary  (cost=0.00..21.50 rows=1000 width=12) |
-- +----------------------------------------------------------+

2) -- 9 (nbre de blocs) + 1000 (nbre de tuples) * 0.01 (CPU_TUPLE_COST)

-- obtenir CPU_TUPLE_COST = SHOW CPU_TUPLE_COST;

-- obtenir relowner = SELECT * FROM pg_user WHERE usename = '11709412';


SELECT reltuples,relpages
FROM pg_class
WHERE relname='diary' and relowner = '325500';
+-----------+----------+
| reltuples | relpages |
+-----------+----------+
|      1000 |        9 |
+-----------+----------+

3)EXPLAIN SELECT dy_company, date(dy_timestamp) FROM diary WHERE dy_id >= 900;
+----------------------------------------------------------------------------+
|                                 QUERY PLAN                                 |
+----------------------------------------------------------------------------+
| Index Scan using diary_pkey on diary  (cost=0.00..10.25 rows=100 width=12) |
|   Index Cond: (dy_id >= 900)                                               |
+----------------------------------------------------------------------------+

+---------------------------------------------------------+
|                       QUERY PLAN                        |
+---------------------------------------------------------+
| Seq Scan on diary  (cost=0.00..19.60 rows=240 width=12) |
|   Filter: (dy_id >= 900)                                |
+---------------------------------------------------------+

EXPLAIN SELECT dy_company, date(dy_timestamp)
FROM diary
WHERE dy_id >= 10;
+---------------------------------------------------------+
|                       QUERY PLAN                        |
+---------------------------------------------------------+
| Seq Scan on diary  (cost=0.00..23.98 rows=990 width=12) |
|   Filter: (dy_id >= 10)                                 |
+---------------------------------------------------------+


4) SELECT most_common_vals FROM pg_stats WHERE tablename='diary';
{12,31,43,71,6,23,53,91,97,2,4,11,15,52,9,14,20,22,45,55,81,3,35,51,56,58,65,74,92,100,10,13,28,36,59,62,67,68,72,79,93,94,98,1,18,19,24,27,41,42,48,73,80,85,86,87,90,5,29,30,34,40,50,54,82,16,17,25,33,38,39,44,46,57,61,64,66,76,99,60,63,69,77,78,88,89,96,37,47,49,75,8,26,32,70,83,95,7,21,84}

5) Index non utilisé = 19.60
Index utilisé = 10.25
!= 9ms

7)
+--------------------------------------------------------------------------------------------------------------------------+
|                                                        QUERY PLAN                                                        |
+--------------------------------------------------------------------------------------------------------------------------+
| Nested Loop  (cost=0.00..190511.75 rows=15200000 width=173) (actual time=0.034..400.807 rows=380000 loops=1)             |
|   ->  Nested Loop  (cost=0.00..496.75 rows=38000 width=27) (actual time=0.028..35.245 rows=38000 loops=1)                |
|         ->  Seq Scan on orders  (cost=0.00..19.50 rows=380 width=4) (actual time=0.017..0.365 rows=380 loops=1)          |
|               Filter: (ord_qty > 60)                                                                                     |
|               Rows Removed by Filter: 620                                                                                |
|         ->  Materialize  (cost=0.00..2.50 rows=100 width=23) (actual time=0.000..0.031 rows=100 loops=380)               |
|               ->  Seq Scan on companies  (cost=0.00..2.00 rows=100 width=23) (actual time=0.006..0.048 rows=100 loops=1) |
|   ->  Materialize  (cost=0.00..16.00 rows=400 width=146) (actual time=0.000..0.003 rows=10 loops=38000)                  |
|         ->  Seq Scan on products  (cost=0.00..14.00 rows=400 width=146) (actual time=0.003..0.008 rows=10 loops=1)       |
| Total runtime: 484.169 ms                                                                                                |
+--------------------------------------------------------------------------------------------------------------------------+

+--------------------------------------------------------------------------------------------------------------------------+
|                                                        QUERY PLAN                                                        |
+--------------------------------------------------------------------------------------------------------------------------+
| Hash Join  (cost=22.25..52.20 rows=380 width=173) (actual time=0.238..1.288 rows=380 loops=1)                            |
|   Hash Cond: ((orders.ord_product)::text = (products.pr_code)::text)                                                     |
|   ->  Hash Join  (cost=3.25..27.98 rows=380 width=33) (actual time=0.183..0.867 rows=380 loops=1)                        |
|         Hash Cond: (orders.ord_company = companies.co_id)                                                                |
|         ->  Seq Scan on orders  (cost=0.00..19.50 rows=380 width=14) (actual time=0.044..0.426 rows=380 loops=1)         |
|               Filter: (ord_qty > 60)                                                                                     |
|               Rows Removed by Filter: 620                                                                                |
|         ->  Hash  (cost=2.00..2.00 rows=100 width=27) (actual time=0.106..0.106 rows=100 loops=1)                        |
|               Buckets: 1024  Batches: 1  Memory Usage: 5kB                                                               |
|               ->  Seq Scan on companies  (cost=0.00..2.00 rows=100 width=27) (actual time=0.009..0.053 rows=100 loops=1) |
|   ->  Hash  (cost=14.00..14.00 rows=400 width=174) (actual time=0.028..0.028 rows=10 loops=1)                            |
|         Buckets: 1024  Batches: 1  Memory Usage: 1kB                                                                     |
|         ->  Seq Scan on products  (cost=0.00..14.00 rows=400 width=174) (actual time=0.016..0.018 rows=10 loops=1)       |
| Total runtime: 1.406 ms                                                                                                  |
+--------------------------------------------------------------------------------------------------------------------------+
