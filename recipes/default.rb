#
# Cookbook Name:: elastic
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'openjdk-8-jre'

# Install elastic search
apt_repository 'elastic' do
  uri "http://packages.elastic.co/elasticsearch/#{node['elastic']['version_to_install']}/debian"
  components ['stable', 'main']
  distribution ''
  key 'https://packages.elastic.co/GPG-KEY-elasticsearch'
end
package 'elasticsearch'

# security ! disable connections from outside by default


# run it
service "elasticsearch" do
  action :enable
end

service "elasticsearch" do
  action :start
end




# curator recipe itself checks if it is enabled in attributes

# include_recipe 'elastic::curator'

# plugins - according to settings :)



# webfront ? 
