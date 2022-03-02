#
# CloudWatch Agent for Windows
# example download https://s3.amazonaws.com/amazoncloudwatch-agent/windows/amd64/latest/amazon-cloudwatch-agent.msi
#

amazon-cloudwatch-agent:
  'latest':
    full_name: amazon-cloudwatch-agent
    installer: 'https://s3.amazonaws.com/amazoncloudwatch-agent/windows/amd64/latest/amazon-cloudwatch-agent.msi'
    uninstaller: 'https://s3.amazonaws.com/amazoncloudwatch-agent/windows/amd64/latest/amazon-cloudwatch-agent.msi'
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False