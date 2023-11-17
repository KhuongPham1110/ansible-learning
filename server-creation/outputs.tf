output "instance_id" {
  value = {
    instance_id = [for v in aws_instance.example : v.id]
  }
}

output "public_ip" {
  value = {
    public_ip = [for i in aws_instance.example : i.public_ip]
  }
}

output "security_groups" {
  value = {
    vpc_security_group_ids = [for i in aws_instance.example : i.vpc_security_group_ids]
  }
}
