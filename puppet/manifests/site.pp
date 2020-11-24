node default {
  include deny_ssh_auth_with_passwords
  include create_trial_with_ssh_keys
  include copy_public_keys_trial
}