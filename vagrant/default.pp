# TODO: remove when we can use a proper Vagrant box
service { 'puppet':
  ensure => stopped,
  enable => false,
}

service { 'chef-client':
  ensure => stopped,
  enable => false,
}

#class { 'yourmodule':
#  param => true,
#}
