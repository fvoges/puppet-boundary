# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include boundary::repo
class boundary::repo::redhat {
  $repo_description    = $boundary::repo_description
  $repo_gpg_key_url    = $boundary::repo_gpg_key_url
  $repo_name           = $boundary::repo_name
  $repo_url            = $boundary::repo_url

  yumrepo { $repo_name:
    ensure   => 'present',
    name     => $repo_name,
    descr    => $repo_description,
    baseurl  => $repo_url,
    gpgkey   => $repo_gpg_key_url,
    enabled  => '1',
    gpgcheck => '1',
  }

}
