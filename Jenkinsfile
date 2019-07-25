pipeline {
    agent any

    stages {
        stage('Terraform Script') {
            steps {
                sh 'cd  terraform_play_for_consul_ha;terraform init;terraform apply -auto-approve'
            }
        }
        
        stage('Ansible') {
            steps {
                sh ' ansible-playbook -vvv ansible_play_for_consul_ha/create-file.yml'
                sh 'sleep 10'
                sh 'ansible-playbook -vvv ansible_play_for_consul_ha/consul-configure.yml
            }
        }

    }
}
