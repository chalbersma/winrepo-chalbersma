#
# awscliv2 for Windows
# example download https://s3.amazonaws.com/packages.treasuredata.com/4/windows/td-agent-4.0.0-x64.msi
# https://awscli.amazonaws.com/AWSCLIV2.msi
#
#

awscliv2:
  '2':
    full_name: awscliv2
    installer: 'https://awscli.amazonaws.com/AWSCLIV2.msi'
    uninstaller: 'https://awscli.amazonaws.com/AWSCLIV2.msi'
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False
