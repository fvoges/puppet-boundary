# Class: boundary
#
#
class boundary (
  Boolean              $manage_repo,
  String               $repo_url,
  String               $repo_name,
  String               $repo_description,
  String               $repo_gpg_key,
  String               $repo_gpg_key_url,
  String               $repo_gpg_key_server,
  String               $package_name,
  String               $package_version,
  Stdlib::Absolutepath $config_path,
  Optional[String]     $package_provider = undef,
) {
  if $manage_repo {
    contain boundary::repo

    Class['boundary::repo']
      -> Class['boundary::install']
  }

  contain boundary::install
  contain boundary::config
  contain boundary::service

  Class['boundary::install']
    -> Class['boundary::config']
    ~> Class['boundary::service']
}
