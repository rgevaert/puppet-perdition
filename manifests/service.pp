class perdition::service
{
  case $perdition::mode  {
      'stand-alone': { class{'perdition::service::standalone':;} }
      'inetd'      : { class{'perdition::service::inetd':;} }
      default      : { fail('Not supported mode') }
    }
}
