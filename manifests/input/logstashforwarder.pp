define logstash::input::logstashforwarder(
  $source_cert = undef,
  $source_key = undef,
  $dest_cert = undef,
  $dest_key = undef,
){

  file { $dest_cert:
    source => $source_cert,
  }

  file { $dest_key:
    source => $source_key,
  }
}