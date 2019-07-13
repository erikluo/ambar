sudo su

sysctl -w vm.max_map_count=262144
sysctl -w net.ipv4.ip_local_port_range="15000 61000"
sysctl -w net.ipv4.tcp_fin_timeout=30
sysctl -w net.core.somaxconn=1024
sysctl -w net.core.netdev_max_backlog=2000
sysctl -w net.ipv4.tcp_max_syn_backlog=2048
sysctl -w vm.overcommit_memory=1

exit

sudo docker-compose -f docker-compose.yml.my  up
