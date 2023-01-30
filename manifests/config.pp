class logrotate::config {

  assert_private("Class \"${name}\" is private")

  file { '/etc/logrotate.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => Package[$logrotate::package_name],
    content => epp("${module_name}/logrotate.conf.epp", {
      rotate_period                    => $::logrotate::rotate_period,
      rotate                           => $::logrotate::rotate,
      create                           => $::logrotate::create,
      compress                         => $::logrotate::compress,
      config_dir                       => $::logrotate::config_dir,
      default_tmp                      => $::logrotate::default_tmp,
    }),
  }

  create_resources(::logrotate::pool, $logrotate::pools)

}
