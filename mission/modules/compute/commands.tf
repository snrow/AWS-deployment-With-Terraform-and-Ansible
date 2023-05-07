resource "null_resource" "IP_configure" {

    provisioner "local-exec" {

        command = <<-EOT
            #!/bin/bash

            cat > /home/ubuntu/task/mission/ansible/inventory.yml <<EOF
            Accounting:
                children:
                    db_servers:
                        hosts:
                            DB:
                                ansible_host: ${aws_instance.db.public_ip}
                    lb_servers:
                        hosts:
                            LB:
                                ansible_host: ${aws_instance.lb.public_ip}
                    web_servers:
                        hosts:
                            WEB:
                                ansible_host: ${aws_instance.web.public_ip}
                vars:
                    ansible_ssh_private_key_file: /home/ubuntu/task/mission/eliran-task-key.pem
                    ansible_ssh_common_args: -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null
                    ansible_user: ubuntu
                    app_name: Test
                    db_port: 27017
                    db_servers:
                    - 192.168.0.13
                    lb_port: 80
                    web_server_port: 8080
                    web_servers:
                    - 192.168.0.12
            EOF
        EOT
    
    }

    depends_on = [
        aws_instance.web,
        aws_instance.lb,
        aws_instance.db,
    ]
}

resource "null_resource" "key_chmod" {

    provisioner "local-exec" {

        command = "chmod 400 /home/ubuntu/task/mission/eliran-task-key.pem"

    }
}

resource "null_resource" "ansible_exc" {

    provisioner "local-exec" {

        command = "ansible-playbook -i /home/ubuntu/task/mission/ansible/inventory.yml /home/ubuntu/task/mission/ansible/playbook.yml --key-file /home/ubuntu/task/mission/eliran-task-key.pem"

    }

    depends_on = [ null_resource.IP_configure]
}

esource "null_resource" "user_console" {

    provisioner "local-exec" {

        command = "echo  URL---> http://${aws_instance.lb.public_ip}/Test/"

    }

    depends_on = [ null_resource.ansible_exc]
}

