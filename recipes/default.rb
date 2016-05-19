#
# Cookbook Name:: elastic
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# Install elastic search
apt_repository 'elastic' do
  uri "http://packages.elastic.co/elasticsearch/#{node['elastic']['version_to_install']}/debian"
  components ['stable', 'main']
  key 'https://packages.elastic.co/GPG-KEY-elasticsearch'
end
package 'elasticsearch'

# security ! disable connections from outside by default


# run it
simple-chef-tools_safebash "run elasticsearch" do
  code <<-EOH
    /bin/systemctl daemon-reload
    /bin/systemctl enable elasticsearch.service
    /bin/systemctl start elasticsearch.service
  EOH
end



# curator recipe itself checks if it is enabled in attributes

include_recipe 'elastic::curator'

# plugins - according to settings :)



# webfront ? 
