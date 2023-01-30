pf = "admin_esraa"
rg = "us-east-2" 
vpc-cidr-block = "10.0.0.0/16"
vpc-name = "vpc_esraa" 
subnet-cidr-block = ["10.0.0.0/24","10.0.1.0/24"]
public-subnet-name = ["Public Subnet" ,"Private Subnet"]
map = [true,false]
#private-cidr-block = 
#private-subnet-name = 
int-gw = "igw"
route_cidr_block = "0.0.0.0/0"
route-name = "Route Table for Internet Gateway"
allowed   = "HTTP and SSH"
prtcl = "tcp"
egress-port = 0
ingress-ssh = 22
ingress-apache = 80
ami-id = "ami-0a606d8395a538502"
inst-type = "t2.micro"
public-ip = true
nt = "NAT"
private-route = "private-route"
name_ins_private = "private"
name_ins_pub = "Kanye"


 