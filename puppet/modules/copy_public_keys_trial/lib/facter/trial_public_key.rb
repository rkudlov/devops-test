Facter.add('trial_public_key') do
  setcode '/bin/cat /home/trial/.ssh/id_rsa.pub | cut -d" " -f2'
end
