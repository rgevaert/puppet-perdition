class perdition::install
{
  package {
    $perdition::package:
      ensure => $perdition::package_ensure;
  }

  if($perdition::modules != '')
  {
    package {
      $perdition::modules:
        ensure => $perdition::package_ensure;
    }
  }
}
