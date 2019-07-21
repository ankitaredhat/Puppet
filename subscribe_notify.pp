class web {
    package { 'httpd':
      ensure => present,
    }
    file { "/var/www/website":  # Creating Document Root
      ensure => "directory",
      owner  => "apache",
      group  => "apache",
      mode   => 750,
    }
 file { '/var/www/website/index.html': # Creating Index file
     ensure  => file,
     content => "HTML Is Managed By Puppet",
     mode    => '0644',
   } 
    file { '/etc/httpd/conf.d/web.conf': # Path to the file on client machine 
      ensure => file,
      mode   => '0600',
      source => 'puppet:///modules/apache/web.conf', # Path to the custom file on puppet server
      notify => 'Service[httpd]',
    } 
    service { 'httpd':
      ensure => runnning,
      restart=>'/usr/sbin/httpd',
      enable => true,
    }
}
