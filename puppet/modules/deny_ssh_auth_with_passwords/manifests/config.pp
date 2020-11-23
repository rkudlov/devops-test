# == Class: deny_ssh_auth_with_passwords::config
class deny_ssh_auth_with_passwords::config inherits deny_ssh_auth_with_passwords {
  file { '/etc/ssh/sshd_config':
    notify  => Service['sshd'],
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('deny_ssh_auth_with_passwords/sshd.conf.erb'),
  }
}