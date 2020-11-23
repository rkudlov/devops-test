# == Class: deny_ssh_auth_with_passwords::service
class deny_ssh_auth_with_passwords::service inherits deny_ssh_auth_with_passwords  {
  service { 'sshd':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require => Package['openssh-server'],
  }
}