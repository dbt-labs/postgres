-- Macros to add indexes:

-- macros/indexes.sql
{% macro index(this, column) %}

create index if not exists "{{ this.name }}__index_on_{{ column }}" on {{ this }} ("{{ column }}")

{% endmacro %}

{% macro unique_index(this, column) %}

create unique index if not exists "{{ this.name }}__index_on_{{ column }}" on {{ this }} ("{{ column }}")

{% endmacro %}
