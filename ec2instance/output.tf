output "public" {
 value = aws_instance.dev.public_ip
  }

  output "private" {
 value = aws_instance.dev.private_ip
  }
  