class web {

package { 'installed httpd':
    name=>'httpd',
    ensure=>'latest'
}

service { 'Start httpd':
      name=>'httpd',
      ensure=>'running'

}

}

node 'ip-172-31-13-79.us-east-2.compute.internal' {

include 'web'

} 
