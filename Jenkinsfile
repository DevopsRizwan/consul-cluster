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
                sh ' ansible-playbook ansible_play_for_consul_ha/create_file.yml'
            }
        }

    }
}
