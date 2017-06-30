class motd(
  $content = undef,
) {

  file { '/etc/motd':
    ensure  => file,
    backup  => false,
    content => template('motd/motd.erb'),
  }
}
