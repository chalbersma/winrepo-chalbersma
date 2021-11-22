#
# Npgsql is the open source .NET data provider for PostgreSQL. It allows you to connect and interact with PostgreSQL server using .NET.
# https://github.com/npgsql/npgsql
# example download https://github.com/npgsql/npgsql/releases/download/v4.0.12/Npgsql-4.0.12.msi
#
# Npgsql stopped releaseing .msi installers with version 5.x and above but 4.x is still receiving updates.
# https://github.com/npgsql/npgsql/issues/3431
#
{% set base_url = 'https://github.com/npgsql/npgsql/releases/download/v' %}

{% set VERS = [ "4.1.8", "4.0.12" ] %}
# Using VERS as there is a 5.x and 6.x line that maybe we can do someday.
#

npgsql4:
{% for VER in VERS%}
  '{{ VER }}':
    full_name: 'Npgsql v{{ VER }}'
    installer: '{{ base_url }}{{ VER }}/Npgsql-{{ VER }}.msi'
    uninstaller: '{{ base_url }}{{ VER }}/Npgsql-{{ VER }}.msi'
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False
{% endfor %}
