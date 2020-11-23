class deny_ssh_auth_with_passwords {
    include deny_ssh_auth_with_passwords::install
    include deny_ssh_auth_with_passwords::config
    include deny_ssh_auth_with_passwords::service
}