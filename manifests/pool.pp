define logrotate::pool (
  $rotate_period                  = undef,
  $su                             = undef,
  $missingok                      = undef,
  $rotate                         = undef,
  $compress                       = undef,
  $delaycompress                  = undef,
  $notifempty                     = undef,
  $dateext                        = undef,
  $dateformat                     = '-%Y%m%d',
  $maxage                         = undef,
  $minsize                        = undef,
  $create                         = undef,
  $sharedscripts                  = undef,
  $postrotate                     = undef,
  $start                          = undef,
  $size                           = undef,
  $olddir                         = undef,
  $mail                           = undef,
  $create_chmod                   = undef,
  $create_user                    = undef,
  $create_group                   = undef,
  $script_post                    = [ ],
  $script_pre                     = [ ],
  $compresscmd                    = undef,
  $uncompresscmd                  = undef,
  $compressext                    = undef,
  $compressoptions                = undef,
  $copy                           = undef,
  $copytruncate                   = undef,
  $nocopytruncate                 = undef,
  $extension                      = undef,
  $ifempty                        = undef,
  $nocompress                     = undef,
  $nocopy                         = undef,
  $nocreate                       = undef,
  $nodelaycompress                = undef,
  $nomail                         = undef,
  $nomissingok                    = undef,
  $noolddir                       = undef,
  $nosharedscripts                = undef,
  $prerotate                      = undef,
  $endscript_post                 = undef,
  $endscript_pre                  = undef,
  $log_dir                        = [ ],
  $pool                           = $title,

) {

  file { "${$::logrotate::config_dir}/${pool}":
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => Package[$logrotate::package_name],
    content => epp("${module_name}/logrotate.d.epp", {
      log_dir         => $log_dir,
      rotate_period   => $rotate_period,
      su              => $su,
      missingok       => $missingok,
      rotate          => $rotate,
      compress        => $compress,
      delaycompress   => $delaycompress,
      notifempty      => $notifempty,
      dateext         => $dateext,
      dateformat      => $dateformat,
      maxage          => $maxage,
      minsize         => $minsize,
      create          => $create,
      sharedscripts   => $sharedscripts,
      postrotate      => $postrotate,
      endscript_post  => $endscript_post,
      endscript_pre   => $endscript_pre,
      start           => $start,
      size            => $size,
      olddir          => $olddir,
      mail            => $mail,
      create_chmod    => $create_chmod,
      create_user     => $create_user,
      create_group    => $create_group,
      script_post     => $script_post,
      script_pre      => $script_pre,
      compresscmd     => $compresscmd,
      uncompresscmd   => $uncompresscmd,
      compressext     => $compressext,
      compressoptions => $compressoptions,
      copy            => $copy,
      copytruncate    => $copytruncate,
      nocopytruncate  => $nocopytruncate,
      extension       => $extension,
      ifempty         => $ifempty,
      nocompress      => $nocompress,
      nocopy          => $nocopy,
      nocreate        => $nocreate,
      nodelaycompress => $nodelaycompress,
      nomail          => $nomail,
      nomissingok     => $nomissingok,
      noolddir        => $noolddir,
      nosharedscripts => $nosharedscripts,
      prerotate       => $prerotate,
    }),
  }

}
