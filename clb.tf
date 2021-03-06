# Create a new load balancer
# resource "aws_elb" "my-elb" {
#   name            = "my-terraform-elb"
#   subnets         = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]
#   security_groups = [aws_security_group.my_sg.id]

#   listener {
#     instance_port     = 80
#     instance_protocol = "http"
#     lb_port           = 80
#     lb_protocol       = "http"
#   }
#   health_check {
#     healthy_threshold   = 2
#     unhealthy_threshold = 2
#     timeout             = 3
#     target              = "HTTP:80/"
#     interval            = 30
#   }
#   instances                   = [aws_instance.web_server01-demo.id, aws_instance.web_server02.id]
#   cross_zone_load_balancing   = true
#   idle_timeout                = 400
#   connection_draining         = true
#   connection_draining_timeout = 400

#   tags = {
#     Name = "my-terraform-elb"
#   }
# }