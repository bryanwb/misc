%w{ "iptables" "ip6tables" "bluetooth" "hplip" "isdn" "kudzu" "cups" 
"setroubleshoot" "avahi-daemon" }.each do |svc|
  service svc do
    action [:disable, :stop]
  end
end
