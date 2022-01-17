data "template_file" "userdata_win" {
  template = <<EOF
<script>
echo "" > _INIT_STARTED_
net user ${var.INSTANCE_USERNAME} /add /y
net user ${var.INSTANCE_USERNAME} ${var.INSTANCE_PASSWORD}
net localgroup administrators ${var.INSTANCE_USERNAME} /add
</script>
<persist>false</persist>
EOF
}
 
 
resource "aws_instance" "win-server" {
  ami           = var.WIN_AMIS
  instance_type = "t2.micro"
  key_name      = var.KEYNAME
  user_data = data.template_file.userdata_win.rendered
  vpc_security_group_ids=["${aws_security_group.allow-all.id}"]
 
  tags = {
    Name = "Windows_Server"
  }
 
}
 
output "ip" {
 
value="${aws_instance.win-server.public_ip}"
 
}
