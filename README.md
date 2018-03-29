# Postgres data models and utilities

[dbt](https://www.getdbt.com) models for Postgres databases


## Macros

#### index ([source](macros/optimizers/index.sql))
This macro creates an index on a given column.

Usage:
```
{{
config({
    "post-hook": [
      "{{ postgres.index(this, 'id')}}",
    ],
    })
}}
```
