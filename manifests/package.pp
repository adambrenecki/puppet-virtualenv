define virtualenv::package (
  $env,
  $package = $title,
){
  $env_ = Virtualenv::Env[$env]
  $path = getparam($env_, 'path')

  exec {"ve-${env}-install-${package}":
    command => "${path}/bin/pip install ${package}",
    require => $env_,
    user => getparam($env_, 'user'),
    group => getparam($env_, 'group'),
  }
}
