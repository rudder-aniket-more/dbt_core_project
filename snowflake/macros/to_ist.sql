{% macro to_ist(column_name) %}
    -- Macro to convert any timestamp column to Indian Standard Time (IST).
    -- Snowflake's CONVERT_TIMEZONE function is used.
    
    CONVERT_TIMEZONE('UTC', 'Asia/Kolkata', {{ column_name }})

{% endmacro %}
