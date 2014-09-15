name             'php-phalcon'
maintainer       'kinzal'
maintainer_email 'kinzal@logn.in'
license          'MIT License'
description      'Installs/Configures php-phalcon'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'

supports "centos"
supports "rhel"

supports "ubuntu"
supports "debian"

depends "git"
depends "build-essential"
depends "php"