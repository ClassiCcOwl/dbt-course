{% macro learn_variables() %}
    {% set your_name = "John" %}
    {{ log(
        "Hello, " ~ your_name ~ "! Welcome to dbt.",
        info = True
    ) }}
    {{ log(
        "Hello dbt" ~ var(
            "user_name",
            "NO USERNAME SET!!!"
        ) ~ "! Welcome to dbt.",
        info = True
    ) }}
{% endmacro %}
