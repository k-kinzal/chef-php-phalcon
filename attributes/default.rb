default['php-phalcon']['git_url'] = 'git://github.com/phalcon/cphalcon.git'
default['php-phalcon']['git_ref'] = 'master'

case platform_family
when "rhel", "fedora"

    default['php-phalcon']['packages'] = ['git', 'php-devel', 'pcre-devel', 'gcc', 'make']
    default['php-phalcon']['conf_dirs'] = ['/etc/php.d']
    default['php-phalcon']['conf_file'] = 'phalcon.ini'

when "debian"

    default['php-phalcon']['packages'] = ['git', 'php5-dev', 'libpcre3-dev', 'gcc', 'make', 'php5-mysql']
    default['php-phalcon']['conf_dirs'] = ['/etc/php5/mods-available']
    default['php-phalcon']['conf_file'] = '30-phalcon.ini'

end

default['php-phalcon']['devtools'] = true