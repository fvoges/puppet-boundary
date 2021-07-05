# @summary OS family repo management
#
# For supported OS families, this class will include the family specific class
#
class boundary::repo {
  assert_private()

  $family = fact('os.family')

  case $family {
    'Darwin', 'Debian', 'RedHat': {
      contain "boundary::repo::${family}"
    }
    default: {
      fail("This module doesn't know how to manage repos for ${family}.")
    }
  }
}
