class perdition::service::xinetd
{
  exec {
    'killperditiondaemon':
      path     => '/usr/bin',
      command  => 'pkill -f "[p]erdition.*: daemon"',
      onlyif   => 'pgrep -f "[p]erdition.*daemon"';
  }
}
