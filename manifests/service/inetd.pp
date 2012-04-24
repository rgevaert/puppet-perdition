class perdition::service::inetd
{
  service {
    'perdition':
      ensure => stopped;
  }
}
