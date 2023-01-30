class logrotate (
  Enum['present', 'latest', 'absent'] $package_ensure                = $::logrotate::params::package_ensure,
  String $package_name                                               = $::logrotate::params::package_name,
  Enum['daily','weekly','monthly','yearly'] $rotate_period           = $::logrotate::params::rotate_period,
  Integer $rotate                                                    = $::logrotate::params::rotate,
  Integer $create_chmod                                              = $::logrotate::params::create_chmod,
  String $config_dir                                                 = $::logrotate::params::config_dir,
  String $dateformat                                                 = $::logrotate::params::dateformat,
  Boolean $create                                                    = $::logrotate::params::create,
  Boolean $compress                                                  = $::logrotate::params::compress,
  Boolean $missingok                                                 = $::logrotate::params::missingok,
  Boolean $delaycompress                                             = $::logrotate::params::delaycompress,
  Boolean $notifempty                                                = $::logrotate::params::notifempty,
  Boolean $dateext                                                   = $::logrotate::params::dateext,
  Boolean $sharedscripts                                             = $::logrotate::params::sharedscripts,
  Boolean $postrotate                                                = $::logrotate::params::postrotate,

  Optional[Integer] $start                                           = $::logrotate::params::start,
  Optional[Integer] $compressoptions                                 = $::logrotate::params::compressoptions,
  Optional[Boolean] $endscript_post                                  = $::logrotate::params::endscript_post,
  Optional[Boolean] $endscript_pre                                   = $::logrotate::params::endscript_pre,
  Optional[Boolean] $copy                                            = $::logrotate::params::copy,
  Optional[Boolean] $copytruncate                                    = $::logrotate::params::copytruncate,
  Optional[Boolean] $nocopytruncate                                  = $::logrotate::params::nocopytruncate,
  Optional[Boolean] $ifempty                                         = $::logrotate::params::ifempty,
  Optional[Boolean] $nocompress                                      = $::logrotate::params::nocompress,
  Optional[Boolean] $nocopy                                          = $::logrotate::params::nocopy,
  Optional[Boolean] $nocreate                                        = $::logrotate::params::nocreate,
  Optional[Boolean] $nodelaycompress                                 = $::logrotate::params::nodelaycompress,
  Optional[Boolean] $nomail                                          = $::logrotate::params::nomail,
  Optional[Boolean] $nomissingok                                     = $::logrotate::params::nomissingok,
  Optional[Boolean] $noolddir                                        = $::logrotate::params::noolddir,
  Optional[Boolean] $nosharedscripts                                 = $::logrotate::params::nosharedscripts,
  Optional[Boolean] $prerotate                                       = $::logrotate::params::prerotate,
  Optional[String] $compresscmd                                      = $::logrotate::params::compresscmd,
  Optional[String] $uncompresscmd                                    = $::logrotate::params::uncompresscmd,
  Optional[String] $compressext                                      = $::logrotate::params::compressext,
  Optional[String] $extension                                        = $::logrotate::params::extension,
  Optional[String] $maxage                                           = $::logrotate::params::maxage,
  Optional[String] $minsize                                          = $::logrotate::params::minsize,
  Optional[String] $size                                             = $::logrotate::params::size,
  Optional[String] $olddir                                           = $::logrotate::params::olddir,
  Optional[String] $mail                                             = $::logrotate::params::mail,
  Optional[String] $create_user                                      = $::logrotate::params::create_user,
  Optional[String] $create_group                                     = $::logrotate::params::create_group,

  Tuple $script_post                                                 = $::logrotate::params::script_post,
  Tuple $script_pre                                                  = $::logrotate::params::script_pre,
  Array $log_dir                                                     = $::logrotate::params::log_dir,
  Hash $pools                                                        = $::logrotate::params::pools,
  Hash $default_tmp                                                  = $::logrotate::params::default_tmp,

) inherits logrotate::params {

  contain 'logrotate::install'
  contain 'logrotate::config'

  Class['logrotate::install'] ->
  Class['logrotate::config']

}

class logrotate (
  Enum['present', 'latest', 'absent'] $package_ensure                = $::logrotate::params::package_ensure,
  String $package_name                                               = $::logrotate::params::package_name,
  Enum['daily','weekly','monthly','yearly'] $rotate_period           = $::logrotate::params::rotate_period,
  Integer $rotate                                                    = $::logrotate::params::rotate,
  Integer $create_chmod                                              = $::logrotate::params::create_chmod,
  String $config_dir                                                 = $::logrotate::params::config_dir,
  String $dateformat                                                 = $::logrotate::params::dateformat,
  Boolean $create                                                    = $::logrotate::params::create,
  Boolean $compress                                                  = $::logrotate::params::compress,
  Boolean $missingok                                                 = $::logrotate::params::missingok,
  Boolean $delaycompress                                             = $::logrotate::params::delaycompress,
  Boolean $notifempty                                                = $::logrotate::params::notifempty,
  Boolean $dateext                                                   = $::logrotate::params::dateext,
  Boolean $sharedscripts                                             = $::logrotate::params::sharedscripts,
  Boolean $postrotate                                                = $::logrotate::params::postrotate,

  Optional[Integer] $start                                           = $::logrotate::params::start,
  Optional[Integer] $compressoptions                                 = $::logrotate::params::compressoptions,
  Optional[Boolean] $endscript_post                                  = $::logrotate::params::endscript_post,
  Optional[Boolean] $endscript_pre                                   = $::logrotate::params::endscript_pre,
  Optional[Boolean] $copy                                            = $::logrotate::params::copy,
  Optional[Boolean] $copytruncate                                    = $::logrotate::params::copytruncate,
  Optional[Boolean] $nocopytruncate                                  = $::logrotate::params::nocopytruncate,
  Optional[Boolean] $ifempty                                         = $::logrotate::params::ifempty,
  Optional[Boolean] $nocompress                                      = $::logrotate::params::nocompress,
  Optional[Boolean] $nocopy                                          = $::logrotate::params::nocopy,
  Optional[Boolean] $nocreate                                        = $::logrotate::params::nocreate,
  Optional[Boolean] $nodelaycompress                                 = $::logrotate::params::nodelaycompress,
  Optional[Boolean] $nomail                                          = $::logrotate::params::nomail,
  Optional[Boolean] $nomissingok                                     = $::logrotate::params::nomissingok,
  Optional[Boolean] $noolddir                                        = $::logrotate::params::noolddir,
  Optional[Boolean] $nosharedscripts                                 = $::logrotate::params::nosharedscripts,
  Optional[Boolean] $prerotate                                       = $::logrotate::params::prerotate,
  Optional[String] $compresscmd                                      = $::logrotate::params::compresscmd,
  Optional[String] $uncompresscmd                                    = $::logrotate::params::uncompresscmd,
  Optional[String] $compressext                                      = $::logrotate::params::compressext,
  Optional[String] $extension                                        = $::logrotate::params::extension,
  Optional[String] $maxage                                           = $::logrotate::params::maxage,
  Optional[String] $minsize                                          = $::logrotate::params::minsize,
  Optional[String] $size                                             = $::logrotate::params::size,
  Optional[String] $olddir                                           = $::logrotate::params::olddir,
  Optional[String] $mail                                             = $::logrotate::params::mail,
  Optional[String] $create_user                                      = $::logrotate::params::create_user,
  Optional[String] $create_group                                     = $::logrotate::params::create_group,

  Tuple $script_post                                                 = $::logrotate::params::script_post,
  Tuple $script_pre                                                  = $::logrotate::params::script_pre,
  Array $log_dir                                                     = $::logrotate::params::log_dir,
  Hash $pools                                                        = $::logrotate::params::pools,
  Hash $default_tmp                                                  = $::logrotate::params::default_tmp,

) inherits logrotate::params {

  contain 'logrotate::install'
  contain 'logrotate::config'

  Class['logrotate::install'] ->
  Class['logrotate::config']

}

