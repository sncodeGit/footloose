footloose create --config %testName.yaml
footloose --config %testName.yaml ssh root@node0 -- yum install -y docker iptables
footloose --config %testName.yaml ssh root@node0 systemctl start docker
footloose --config %testName.yaml ssh root@node0 docker pull busybox
%out footloose --config %testName.yaml ssh root@node0 docker run busybox echo success
footloose delete --config %testName.yaml
