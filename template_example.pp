##################### EMBEDDED RUBY FILE (ERB) example  ###################

# This include file donloaded mptd module using command
# puppet install puppetlabs-motd
# mkdir /data
# cat /data/motd.erb

# <%@operatingsystem %> <%=operatingsystemrelease %> <%=architecture %>

#FQDN		 : <%=@fqdn %>
#KERNEL		 : <%=@kernel %>

file { '/etc/motd':
    content => template('/data/motd.erb'),
    ensure => file,
}

