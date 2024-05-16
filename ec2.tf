resource "aws_instance" "expense" {
    for_each = var.instance_name
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-0e1230c1ee15adfb4"]
    instance_type = each.value

    tags = merge(
        var.common_tags,
        {
            Name = "${each.key}"
            Module = "${each.key}"
            Environment = var.environment       
        }
        
    )
}