execute 'newaliases' do
	action :nothing
end

template '/etc/aliases' do
	source 'aliases.erb'
	variables( :aliases => [ ['root' , node['mail_alias']] ] )
	notifies :run, "execute[newaliases]"
end
