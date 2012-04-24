# Class: perdition
#
# This module manages perdition
#
# Parameters:
#  mode: stand-aline or inetd
#  package
#  package_ensure
#  modules
#  default_file
#  default_file_content
#  config_file
#  config_file_content
#  service_ensure
#
# Actions:
#
# Requires: Debian or Ubuntu
#
# Sample Usage:
#
#
# [Remember: No empty lines between comments and class definition]
class perdition (
  $mode                = $perdition::params::mode,
  $package             = $perdition::params::package,
  $package_ensure      = $perdition::params::package_ensure,
  $modules             = $perdition::params::modules,
  $default_file        = $perdition::params::default_file,
  $default_file_source = $perdition::params::default_file_source,
  $config_file         = $perdition::params::config_file,
  $config_file_source  = $perdition::params::config_file_source,
  $service_ensure      = $perdition::params::service_ensure
) inherits perdition::params {

  class{'install':;} ~>
    class{'config':;} ~>
    class{'service':;}

}
