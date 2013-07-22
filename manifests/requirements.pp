define virtualenv::requirements (
  $env,
  $file = $title,
){
  $env_ = Virtualenv::Env[$env]
  $path = getparam($env_, 'path')

  exec {"ve-${env}-req-${title}":
    command => "${path}/bin/pip install -r ${file}",
    require => $env_,
    user => getparam($env_, 'user'),
    group => getparam($env_, 'group'),
  }
}
