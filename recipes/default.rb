#
# Cookbook:: yum-microsoft
# Recipe:: default
#
# Copyright:: 2018, Ariel Cardoso, All Rights Reserved.

MAKE_CACHE = "#{node['yum']['microsoft']['make_cache'].to_s}"

yum_repository 'microsoft' do
    repositoryid "#{node['yum']['microsoft']['repositoryid']}"
    description "#{node['yum']['microsoft']['description']}"
    baseurl "#{node['yum']['microsoft']['baseurl']}"
    gpgkey "#{node['yum']['microsoft']['gpgkey']}"
    #failovermethod "#{node['yum']['microsoft']['failovermethod']}"
    #gpgcheck "#{node['yum']['microsoft']['gpgcheck']}"
    #enabled "#{node['yum']['microsoft']['enabled']}"
    #managed "#{node['yum']['microsoft']['managed']}"
    #make_cache MAKE_CACHE
    gpgcheck true
    enabled true
    make_cache true
    action :create
  end