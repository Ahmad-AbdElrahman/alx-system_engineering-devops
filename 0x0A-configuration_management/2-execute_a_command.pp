# Kills a process named 'killmenow' using Puppet

exec { 'killmenow':
  path => '/usr/bin/pkill killmenow'
}