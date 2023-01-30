class logrotate::params {
  $package_ensure               = 'present'
  $package_name                 = 'logrotate'
  $rotate_period                = 'daily'
  $rotate                       = 10
  $create                       = true
  $compress                     = false
  $delaycompress                = true
  $config_dir                   = '/etc/logrotate.d'
  $missingok                    = true
  $notifempty                   = true
  $dateext                      = false
  $sharedscripts                = true
  $postrotate                   = true
  $create_chmod                 = 640
  $dateformat                   = '-%Y%m%d'

  $endscript_post               = undef
  $endscript_pre                = undef
  $maxage                       = undef
  $minsize                      = undef
  $size                         = undef
  $start                        = undef
  $olddir                       = undef
  $mail                         = undef
  $create_user                  = undef
  $create_group                 = undef
  $compresscmd                  = undef
  $uncompresscmd                = undef
  $compressext                  = undef
  $compressoptions              = undef
  $copy                         = undef
  $copytruncate                 = undef
  $nocopytruncate               = undef
  $extension                    = undef
  $ifempty                      = undef
  $nocompress                   = undef
  $nocopy                       = undef
  $nocreate                     = undef
  $nodelaycompress              = undef
  $nomail                       = undef
  $nomissingok                  = undef
  $noolddir                     = undef
  $nosharedscripts              = undef
  $prerotate                    = undef

  $script_post                  = []
  $script_pre                   = []
  $log_dir                      = []
  $pools                        = {}

  $default_tmp                  = {}
  # $default_tmp = {
  #   '/var/log/wtmp' => [
  #     'missingok',
  #     'monthly',
  #     'create 0644 root utmp',
  #     'rotate 1',
  #   ],
  #   '/var/log/btmp' => [
  #     'missingok',
  #     'monthly',
  #     'create 0644 root utmp',
  #     'rotate 1',
  #   ],
  # }

}
