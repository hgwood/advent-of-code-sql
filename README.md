# Advent of Code SQL

My solutions to Advent of Code, written in SQL.

## How to run

Run the database then run the solver for the day and part you want on the input you want.

```
docker compose up -d
sh run.sh 2022/day_1/part_1.psql 2022/day_1/example.txt
```

## How it works

The code is meant to be run on Postgres 16+. Solutions are written using only
SQL (no PLpg/SQL). `run.sh` runs `run.psql` using `psql` (the Postgres client
CLI). `run.psql` creates a schema named `tmp` then sets the search path to it so
that all objects created after that are placed in this schema. Then it runs
`import.psql` which import the input file into the `input` table. Then it runs
the solver (a `.psql` file). Finally, it drops the `tmp` schema, which drops all
objects created by the solver.

## Philosophy

I mostly use SQL as a purely functional language here. Once the input is loaded
into the `input` table, I try to only use `select` to compute stuff from it,
along with `create table as` to store results for further computations. I try
not to use stateful tables (2022 day 5 is the only exception).
