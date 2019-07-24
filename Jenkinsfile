pipeline {
    agent any

    stages {
        stage('Terraform Script') {
            steps {
                sh ' terraform terraform_play_for_consul_ha/main.tf'
            }
        }
        
        stage('Ansible') {
            steps {
                sh ' terraform ansible_play_for_consul_ha/create_file.yml'
            }
        }

    }
}
