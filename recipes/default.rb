#
# Cookbook Name:: elastic
# Recipe:: default
#
# Installs elasticsearch from the official repository, acccording to
# https://www.elastic.co/guide/en/elasticsearch/reference/current/setup-repositories.html
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# Install java
package 'openjdk-8-jre'

# add elasticsearch repository to apt sources
apt_repository 'elastic' do
  uri "http://packages.elastic.co/elasticsearch/#{node['elastic']['version_to_install']}/debian"
  components ['stable', 'main']
  distribution ''
  key 'https://packages.elastic.co/GPG-KEY-elasticsearch'
end

# Install elastic search
package 'elasticsearch'

# Set it as a service to start automatically
service "elasticsearch" do
  action :enable
end

# Start it
service "elasticsearch" do
  action :start
end




# curator recipe itself checks if it is enabled in attributes

# include_recipe 'elastic::curator'

# webfront ? 
