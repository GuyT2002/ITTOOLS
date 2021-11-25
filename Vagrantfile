ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
    config.vm.define "http_server_first" do |http_server_first|
      http_server_first.vm.box = "centos/7"
      http_server_first.vm.network "private_network", ip: "10.0.7.101", virtualbox__intnet: true
  end
  config.vm.define "http_server_second" do |http_server_second|
    http_server_second.vm.box = "centos/7"
      http_server_second.vm.network "private_network", ip: "10.0.7.102", virtualbox__intnet: true
  end
  config.vm.define "http_client_new" do |http_client_new| 
    http_client_new.vm.box = "centos/7"
      http_client_new.vm.network "private_network", ip: "10.0.7.103", virtualbox__intnet: true
  end
  config.vm.define "http_haproxy" do |http_haproxy| 
    http_haproxy.vm.box = "centos/7"
      http_haproxy.vm.network "private_network", ip: "10.0.7.200", virtualbox__intnet: true
  end
end
