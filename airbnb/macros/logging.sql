{% macro learn_log() %}
    {{ log(
        'Learn Log: This is a custom macro for logging messages in dbt.'
    ) }}
    {{ log(
        'Learn Log: This is a custom macro for logging info messages in dbt.',
        info = True
    ) }}
{% endmacro %}
