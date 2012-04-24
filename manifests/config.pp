class perdition::config
{
  file {
    $perdition::default_file:
      ensure  => present,
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      source  => $perdition::default_file_source;
    $perdition::config_file:
      ensure  => present,
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      source  => $perdition::config_file_source;
  }
}
