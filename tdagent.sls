#
# td-agent a fluentd Package
# example download https://s3.amazonaws.com/packages.treasuredata.com/4/windows/td-agent-4.0.0-x64.msi
#
{% set base_url = 'https://s3.amazonaws.com/packages.treasuredata.com/4/windows/' %}

{% set VERS = [ "4.1.1", "4.2.0", "4.3.0" ] %}
#

tdagent:
{% for VER in VERS%}
  '{{ VER }}':
    full_name: 'Td-agent v{{ VER }}'
    installer: '{{ base_url }}td-agent-{{ VER }}-x64.msi'
    uninstaller: '{{ base_url }}td-agent-{{ VER }}-x64.msi'
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False
{% endfor %}
