class perdition::params
{
  $mode = 'stand-alone'

  $package        =  $::operatingsystem ? {
    /(?i:Debian|Ubuntu)/ => 'perdition',
    default              => fail("${::operatingsystem} not supported"),
  }

  $package_ensure = 'installed'
  $service_ensure = 'running'

  $modules        = ''

  $default_file =  $::operatingsystem ? {
    /(?i:Debian|Ubuntu)/ => '/etc/default/perdition',
    default              => fail("${::operatingsystem} not supported"),
  }

  $config_file        = '/etc/perdition/perdition.conf'
  $config_file_source = 'puppet:///modules/perdition/perdition.conf'

  $default_file_source_stand_alone  = 'puppet:///modules/perdition/default.daemon'
  $default_file_source_xinetd       = 'puppet:///modules/perdition/default.xinetd'

}
