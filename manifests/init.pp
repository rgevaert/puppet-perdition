# Class: perdition
#
# This module manages perdition
#
# Parameters:
#  mode: stand-aline or xinetd
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
#  To set up perdition in daemon mode:
#  include perdition
#
class perdition (
  $mode                = $perdition::params::mode,
  $package             = $perdition::params::package,
  $package_ensure      = $perdition::params::package_ensure,
  $modules             = $perdition::params::modules,
  $default_file        = $perdition::params::default_file,
  $config_file         = $perdition::params::config_file,
  $config_file_source  = $perdition::params::config_file_source,
  $service_ensure      = $perdition::params::service_ensure
) inherits perdition::params {

  $default_file_source = $mode ? {
    'stand-alone' => $perdition::params::default_file_source_stand_alone,
    'xinetd'      => $perdition::params::default_file_source_xinetd,
    default       => fail("unsuppored mode ${mode}"),
  }


  class{'perdition::install':;} ~>
    class{'perdition::config':;} ~>
    class{'perdition::service':;}

}
