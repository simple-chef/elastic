
# todo : if set :)

apt_repository 'curator' do
  uri "http://packages.elastic.co/curator/#{node['curator']['version_to_install']}/debian"
  distribution ''
  components ['stable', 'main']
end

package 'elasticsearch-curator'