define virtualenv::env (
  $path = $title,
  $python = '/usr/bin/python2.7',
  $user = nil,
  $group = nil,
  $packages = [],
  $reqfiles = [],
){
  exec {"virtualenv-create-${name}":
    command => "/usr/bin/virtualenv --python='${python}' '${path}'",
    creates => $path,
    user => $user,
    group => $group,
  }
}
