#
# Cookbook Name:: php-phalcon
# Recipe:: default
#
# Copyright 2014, kinzal
default['php-phalcon']['packages']      = %w[git gcc make php-devel]
default['php-phalcon']['git_url'] = 'git://github.com/phalcon/cphalcon.git'
default['php-phalcon']['git_ref'] = 'master'
default['php-phalcon']['conf_dir'] = '/etc/php.d'