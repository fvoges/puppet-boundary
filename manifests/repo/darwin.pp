# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include boundary::repo
class boundary::repo::darwin {
  $repo_name     = $boundary::repo_name
  $repo_provider = $boundary::repo_provider

  package { $repo_name:
    ensure   => present,
    provider => 'tap',
  }
}
