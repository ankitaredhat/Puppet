############### MODULES IN PUPPET ##############

#### Steps to be taken before #######


#cd cd /etc/puppet/modules/apache
#mkdir manifests templates files

---------------------------------------
#cat /etc/puppet/modules/apache/templates/index.html.erb 
#welcome to <%=@ipaddress %>
---------------------------------------

# cat /etc/puppet/modules/apache/files/web.conf 
#This is the Module example of puppet
---------------------------------------

#cat /etc/puppet/manifests/site.pp 
#include apache

---------------------------------------
# vim /etc/puppet/modules/apache/manifests/init.pp 



class apache {

package { 'httpd':
     ensure => 'latest',
     before => 'Service[httpd]',

}

service { 'httpd':
     ensure => 'running',

}

file { '/var/www/html/index.html':
      ensure => 'file',
      content => template('apache/index.html.erb'),

}

file { '/etc/httpd/conf.d/web.conf':
     source => 'puppet:///modules/apache/web.conf',
     mode => '0644',
}

   
} 
