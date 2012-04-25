class perdition::service
{
  case $perdition::mode  {
      'stand-alone': { class{'perdition::service::standalone':;} }
      'xinetd'     : { class{'perdition::service::xinetd':;} }
      default      : { fail('Not supported mode') }
    }
}
