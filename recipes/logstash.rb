
apt_repository 'logstash' do
  uri "https://packages.elastic.co/logstash/#{node['logstash']['version_to_install']}/debian"
  distribution ''
  components ['stable', 'main']
end

package 'logstash'