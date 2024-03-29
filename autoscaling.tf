# Launch Configuration
resource "aws_launch_configuration" "terramino" {
  name_prefix     = "learn-terraform-aws-asg-"
  image_id        = "ami-0c101f26f147fa7fd" 
  instance_type   = "t2.micro"
  user_data       = file("user-data.sh")
  security_groups = [aws_security_group.terramino_instance.id]

  lifecycle {
    create_before_destroy = true
  }
}

# Auto Scaling Group
resource "aws_autoscaling_group" "terramino" {
    min_size             = 1
    max_size             = 3
    desired_capacity     = 2
    launch_configuration = aws_launch_configuration.terramino.name
    vpc_zone_identifier = ["subnet-0366538b7cb31950d", "subnet-085c4f3f23ea327d9"] #Replace with your subnet id
}

