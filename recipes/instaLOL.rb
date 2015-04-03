include_recipe 'apt'

package 'apache2' do
  action :install
end

service 'apache2' do
  supports :status => true, :restart => true, :reload => true
  action [ :start, :enable ]
end

