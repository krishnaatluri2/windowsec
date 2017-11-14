
# Cookbook Name:: windowsec
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

windows_package 'awsssmagentinstall' do
  source 'https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/windows_amd64/AmazonSSMAgentSetup.exe'
  installer_type :custom
  options '/quiet'
  not_if('awsssmagent_already_installed')
end

windows_package 'AWSAgentInstall' do
  source 'https://d1wk0tztpsntt1.cloudfront.net/windows/installer/latest/AWSAgentInstall.exe'
  installer_type :custom
  options '/quiet'
  not_if('AWSAgent_already_installed')
end

cookbook_file 'C:\Program Files\Amazon\SSM\Plugins\awsCloudWatch\AWS.EC2.Windows.CloudWatch.json' do
  source 'AWS.EC2.Windows.CloudWatch.json'
end

windows_service 'AmazonSSMAgent' do
  action :configure_startup
  startup_type :automatic
end


#node.run_state['datadog']['api_key'] = node['windowsec']['datadog']['api_key']
#node.run_state['datadog']['application_key'] = node['windowsec']['datadog']['application_key']
#include_recipe 'datadog::dd-agent'
#
# service 'datadog-agent' do
#   action :restart
# end
