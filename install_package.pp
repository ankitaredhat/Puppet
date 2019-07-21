package { 'installed ftp':
    name=>ftp,
    ensure=>'latest'
}

file { 'create directory':
    path=>'/tmp/device',
    ensure=>'dir',

}

service { 'Start ftp':
      name=>'vsftpd',
      ensure=>'running'

}
