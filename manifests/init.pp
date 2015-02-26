# == Class: skeleton
#
# EXPLAIN ME
#
class skeleton(
  $param = $::skeleton::params::param,
) inherits ::skeleton::params {

  validate_bool($param)

  class { '::skeleton::private':
  } ->
  Class['skeleton']

}
