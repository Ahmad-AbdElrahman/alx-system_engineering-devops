# Install a package using Puppet

package { 'python3':
  ensure => installed,
}

package { 'python3-pip':
  ensure  => installed,
  require => Package['python3'],
}

package { 'flask':
  ensure  => '2.1.0',
  before  => Exec['pip3 install flask']
  require => Package['python3-pip'],
}
