{% macro index(this, column) %}

create index if not exists "{{ this.name }}__index_on_{{ column }}" on {{ this.schema }}.{{ this }} ("{{ column }}")

{% endmacro %}
