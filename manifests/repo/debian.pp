# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include boundary::repo
class boundary::repo::debian {
  $repo_description    = $boundary::repo_description
  $repo_gpg_key        = $boundary::repo_gpg_key
  $repo_gpg_key_server = $boundary::repo_gpg_key_server
  $repo_name           = $boundary::repo_name
  $repo_url            = $boundary::repo_url

  apt::source { $repo_name:
    comment  => $repo_description,
    location => $repo_url,
    repos    => 'main ',
    pin      => '-10',
    key      => {
      'id'     => $repo_gpg_key,
      'server' => $repo_gpg_key_server,
    },
    include  => {
      'src' => false,
      'deb' => true,
    },
  }
}
