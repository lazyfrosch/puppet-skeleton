# == Class: skeleton::params
#
# Default parameters
#
class skeleton::params {

  #$otherparam = true

  if $::osfamily == 'Debian' {

    $param = true

  }
  else {
    fail("Sorry, your osfamily ${::osfamily} is not supported yet.")
  }

}
