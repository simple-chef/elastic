
apt_repository 'logstash' do
  uri "https://packages.elastic.co/logstash/#{node['logstash']['version_to_install']}/debian"
  distribution ''
  components ['stable', 'main']
  key 'https://packages.elastic.co/GPG-KEY-elasticsearch'
end

package 'logstash'

# TODO: check if its needed ...
# service "logstash" do
#   action :enable
# end
#
# service "logstash" do
#   action :start
# end
