exec { 'install ruby':
  command => '/usr/bin/apt-get install -y python3'
}


package { 'python3':
  ensure => 'installed',
  before => Exec['install python3']
}

package { 'flask':
  ensure  => 'installed',
  before  => Exec['pip3 install flask'],
  require => Package['python3-pip3']
}