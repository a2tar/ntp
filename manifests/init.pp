# Class: ntp
#
# This module manages ntp
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
# include ntp

class ntp {
  package { "ntp" :
    ensure => present,
  }
  service{ "ntp" :
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => Package["ntp"],
  }
}