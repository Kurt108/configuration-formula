{% from "configuration/map.jinja" import configuration with context %}


{{ configuration.src_conf_1 }}-to-{{ configuration.dst_conf_1 }}:
  file.managed:
    - name: {{ configuration.base_dst }}/{{ configuration.dst_conf_1 }}
    - source: salt://{{ configuration.base_src }}/{{ configuration.src_conf_1 }}
    - template: jinja
    - user: {{ configuration.user }}
    - group: {{ configuration.user }}
    - makedirs: True
    - context:
        configuration: {{ configuration }}

{{ configuration.src_conf_2 }}-to-{{ configuration.dst_conf_2 }}:
  file.managed:
    - name: {{ configuration.base_dst }}/{{ configuration.dst_conf_2}}
    - source: salt://{{ configuration.base_src }}/{{ configuration.src_conf_2 }}
    - template: jinja
    - user: {{ configuration.user }}
    - group: {{ configuration.user }}
    - makedirs: True
    - context:
        configuration: {{ configuration }}