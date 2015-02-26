# TODO: remove when we can use a proper box
service { 'puppet':
  ensure => stopped,
  enable => false,
}

service { 'chef-client':
  ensure => stopped,
  enable => false,
}

#class { 'mymodule':
#  param => true,
#}
