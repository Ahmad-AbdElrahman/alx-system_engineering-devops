# Install a package using Puppet

package { 'python3':
  ensure => installed,
}

package { 'python3-pip':
  ensure  => installed,
  require => Package['python3'],
}

exec { 'install flask':
  command => '/usr/bin/pip3 install flask -v 2.1.0'
}


package { 'flask':
  ensure  => '2.1.0',
  before  => Exec['install flask']
  require => Package['python3-pip'],
}
