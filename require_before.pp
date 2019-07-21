package { 'httpd':
    ensure=>'latest',
    before=>'Service[httpd]',

}

service { 'httpd':
    ensure=>'running',
}

package { 'install xinetd':
    name=>'xinetd',
    ensure=>'latest',

}

service { 'xinetd':
    ensure=>'running',
    require=>'Package[install xinetd]',
}
