class logrotate::install {

  assert_private("Class \"${name}\" is private")

  package { $logrotate::package_name:
    ensure   => $logrotate::package_ensure,
  }

}
