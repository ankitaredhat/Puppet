###### Exanple of If - Else condition in Puppet #######

if $osfamily == "Debian" or "RedHat" {

file { 'Use case of Facter':
   path => '/etc/motd',
   content => "This is your server $::osfamily family \nIP Address is $::ipaddress \nMAC address is $::macaddress \n"

}
}
else
{

notify { "Family doesn't match":

}
}
