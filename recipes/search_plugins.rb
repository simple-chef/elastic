
simple_chef_tools_safebash "elastic_plugin kopf" do
  code "/usr/share/elasticsearch/bin/plugin install lmenezes/elasticsearch-kopf/2.0"
end

simple_chef_tools_safebash "elastic_plugin icu" do
  code "/usr/share/elasticsearch/bin/plugin install analysis-icu"
end
