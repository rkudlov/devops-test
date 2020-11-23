# == Class: deny_ssh_auth_with_passwords::install
class deny_ssh_auth_with_passwords::install inherits deny_ssh_auth_with_passwords  {
    exec { 'apt-update':
      command => '/usr/bin/apt-get update'
    }

    package { 'openssh-server':
      require => Exec['apt-update'],
      ensure => installed,
    }
}
