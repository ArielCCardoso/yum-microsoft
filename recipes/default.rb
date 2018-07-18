#
# Cookbook:: yum-microsoft
# Recipe:: default
#
# Copyright:: 2018, Ariel Cardoso, All Rights Reserved.

yum_repository 'microsoft' do
    repositoryid "#{node['yum']['microsoft']['repositoryid']}"
    description "#{node['yum']['microsoft']['description']}"
    baseurl "#{node['yum']['microsoft']['baseurl']}"
    gpgkey "#{node['yum']['microsoft']['gpgkey']}"
    gpgcheck true
    enabled true
    make_cache true
    action :create
  end