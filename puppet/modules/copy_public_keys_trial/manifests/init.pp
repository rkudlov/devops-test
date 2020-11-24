class copy_public_keys_trial {

    if $::trial_public_key {
        @@ssh_authorized_key{$::fqdn:
          ensure  => 'present',
          type    => 'ssh-rsa',
          options => ['no-port-forwarding', 'no-X11-forwarding', 'no-agent-forwarding' ],
          user    => 'trial',
          key     => $::trial_public_key,
        }
    }

    Ssh_Authorized_Key <<| |>>
}