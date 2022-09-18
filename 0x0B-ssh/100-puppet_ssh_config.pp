define accounts_global::account () {

  account { $name:
    ensure => present,
  }
  $mytext = "Host 34.75.72.161
     PasswordAuthentication no
     IdentityFile ~/.ssh/school"

  file { "/home/${name}/.ssh/config" :
    require => Account[$name],
    owner   => $name,
    group   => $name,
    mode    => '0600',
    ensure  => file,
    path    => '/home/${name}/.ssh/config',
    content => $mytext,
  }
}
