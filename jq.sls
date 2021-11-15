#
# jq package
# https://github.com/stedolan/jq/releases/download/jq-1.6/jq-win64.exe
#

{% set base_url = "https://github.com/stedolan/jq/releases/download/" %}

{% set VERS = [ "1.3", "1.4", "1.5", "1.6"] %}
#


jq:
{% for VER in VERS%}
  '{{ VER }}':
    full_name: 'jq {{ VER }}'
    installer: '{{ base_url }}jq-{{ VER }}/jq-win64.exe'
    uninstaller: '{{ base_url }}jq-{{ VER }}/jq-win64.exe'
    install_flage: '/S'
    uninstall_flags: '/S'
    msiexec: False
    reboot: False
{% endfor %}
