class perdition::service::standalone
{
  service {
    'perdition':
      ensure    => $perdition::service_ensure,
      hasstatus => false;
  }
}
