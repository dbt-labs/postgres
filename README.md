# Postgres data models and utilities

[dbt](https://www.getdbt.com) models for Postgres databases


## Macros
#### index ([source](macros/sql/index.sql))
This macro creates an index on a given column.

Usage:
```
{{
config({
    "post-hook": [
      "{{ index(this, 'id')}};",
    ],
    })
}}
...
