# atributos
default['yum']['microsoft']['repositoryid'] = 'microsoft'
case node['platform']
when 'centos'
  default['yum']['microsoft']['baseurl'] = "https://packages.microsoft.com/#{node['platform']}/#{node['platform_version'].to_i}/prod/"
  default['yum']['microsoft']['description'] = "Pacotes Microsoft para #{node['platform']} #{node['platform_version'].to_i}"
  # case "#{node['platform_version'].to_i}"
  # when '6'
  #  default['yum']['microsoft']['mirrorlist'] = "https://packages.microsoft.com/#{node['platform']}/#{node['platform_version'].to_i}/prod/"
  # when '7'
  #  default['yum']['microsoft']['mirrorlist'] = "https://packages.microsoft.com/#{node['platform']}/#{node['platform_version'].to_i}/prod/"
  # end
when 'rhel'
    default['yum']['microsoft']['description'] = "Pacotes Microsfot para #{node['platform']} #{node['platform_version'].to_s}"
    default['yum']['microsoft']['baseurl'] = "https://packages.microsoft.com/#{node['platform']}/#{node['platform_version'].to_s}/prod/"
    # case "#{node['platform_version'].to_s}"
    # when '6'
    #   default['yum']['microsoft']['mirrorlist'] = "https://packages.microsoft.com/#{node['platform']}/#{node['platform_version'].to_i}/prod/"
    # when '7'
    #   default['yum']['microsoft']['mirrorlist'] = "https://packages.microsoft.com/#{node['platform']}/#{node['platform_version'].to_i}/prod/"
    # end
# else
#   default['yum']['microsoft']['mirrorlist'] = "http://mirrors.fedoraproject.org/mirrorlist?repo=microsoft-#{node['platform_version'].to_i}&arch=$basearch"
#   default['yum']['microsoft']['gpgkey'] = "https://download.fedoraproject.org/pub/microsoft/RPM-GPG-KEY-microsoft-#{node['platform_version'].to_i}"
end
default['yum']['microsoft']['gpgkey'] = 'https://packages.microsoft.com/keys/microsoft.asc'

