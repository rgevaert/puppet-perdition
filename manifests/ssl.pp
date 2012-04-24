define perdition::ssl($cert_source,$key_source, $ensure = 'present')
{
  file {
    "/etc/perdition/${name}.pem":
      ensure => $ensure,
      owner  => 'root',
      group  => 'root',
      mode   => '0444',
      notify => Class['perdition'],
      source => $cert_source;
    "/etc/perdition/${name}.key":
      ensure => $ensure,
      owner  => 'nobody',
      group  => 'root',
      mode   => '0400',
      notify => Class['perdition'],
      source => $key_source;
  }
}
