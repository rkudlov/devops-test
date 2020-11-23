class create_trial_with_ssh_keys {
  user { 'trial':
    ensure => present,
    comment => 'trial user',
    home => '/home/trial',
    managehome => true
  }

  file { '/home/trial/':
    ensure => 'directory',
    owner  => 'trial',
    group  => 'trial',
    mode   => '0750'
  }

  file { '/home/trial/.ssh':
    ensure => 'directory',
    owner  => 'trial',
    group  => 'trial',
    mode   => '0750'
  }

  exec { "ssh_keygen":
    command => '/usr/bin/ssh-keygen -t rsa -f id_rsa',
    user    => 'trial',
    cwd     => '/home/trial/.ssh',
    creates => '/home/trial/.ssh/id_rsa'
  }
}