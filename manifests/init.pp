class virtualenv {
  package {['python-virtualenv', 'build-essential']:
    ensure => present,
  }
}
