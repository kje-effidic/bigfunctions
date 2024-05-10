{% if bigfunction.type == 'procedure' %}call{% elif bigfunction.type == 'table_function' %}select * from{% else %}select{% endif %} {{ dataset }}.{{ bigfunction.name }}({% for argument in example.arguments %}{{ argument | replace('{BIGFUNCTIONS_DATASET}', dataset) | replace('\n', '\n  ') }}{% if not loop.last %}, {% endif %}{% endfor %}){% if bigfunction.type == 'procedure' %};{% elif 'output' in bigfunction and bigfunction.type != 'table_function' %} as {{ bigfunction.output.name }}{% endif %}
{% if bigfunction.type == 'procedure' and bigfunction.template %}select html from bigfunction_result;{% endif %}
{%- if bigfunction.type == 'procedure' and example.output %}select * from bigfunction_result;{% endif %}