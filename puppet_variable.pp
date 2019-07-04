$web_path = '/etc/httpd/conf.d/web.conf'
$dir = '/var/tmp/data'

package { 'httpd':

  ensure => 'latest',
  notify => Service['httpd']
}

file { "$web_path":
   ensure => file,
   owner => 'apache',
   group => 'apache',
   mode => '0644',
   source => 'puppet:///modules/apache/web.conf',
   notify => Service['httpd'],

}

service { 'httpd':
 ensure => 'running',
}

file { "$dir":
  ensure => 'file',

} 
