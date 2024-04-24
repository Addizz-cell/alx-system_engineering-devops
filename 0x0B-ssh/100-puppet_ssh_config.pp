# Define the SSH client configuration file path
$ssh_config_file = '/home/ubuntu/.ssh/config'

# Ensure SSH client configuration file exists
file { $ssh_config_file:
  ensure => file,
  owner  => 'ubuntu',
  group  => 'ubuntu',
  mode   => '0600',
}

# Disable password authentication
file_line { 'Turn off passwd auth':
  path   => $ssh_config_file,
  line   => 'PasswordAuthentication no',
  match  => '^#?PasswordAuthentication',
}

# Specify the private key file
file_line { 'Declare identity file':
  path   => $ssh_config_file,
  line   => 'IdentityFile ~/.ssh/school',
  match  => '^#?IdentityFile',
}
