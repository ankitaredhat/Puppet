###### Exanple of FACTER Resource in Puppet #######

file { 'Use case of Facter':
   path => '/etc/motd',
   content => "This is your server $::osfamily family \nIP Address is $::ipaddress \nMAC address is $::macaddress \n"

}
