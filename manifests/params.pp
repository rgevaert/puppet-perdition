class perdition::params
{
  $mode = 'stand-alone'

  $package        =  $::operatingsystem ?  {
    /(?i:Debian|Ubuntu)/ => 'perdition',
    default              => fail("${::operatingsystem} not supported"),
  }

  $package_ensure = installed
  $service_ensure = running

  $modules        = ''

  $default_file =  $::operatingsystem ? {
    /(?i:Debian|Ubuntu)/ => '/etc/default/perdition',
    default              => fail("${::operatingsystem} not supported"),
  }

  $config_file = '/etc/perdition/perdition.conf'

  $default_file_source = $mode ? {
    'stand-alone' => 'puppet:///modules/perdition/default.daemon',
    'inetd'       => 'puppet:///modules/perdition/default.xinetd'
  }

  $config_file_source  = 'puppet:///modules/perdition/perdition.conf'
}
