pipeline {
    agent any

    stages {
        stage('Provision the Terraform Script') {
            steps {
                sh 'mv  ../../${WORKSPACE}/master.pem ${WORKSPACE}'
                sh 'cd  terraform_play_for_consul_ha;terraform init;terraform apply -auto-approve'
                sh 'sleep 30'
            }
        }
        
        stage('Ansible - Install and configure Consul') {
            steps {
                sh 'export ANSIBLE_HOST_KEY_CHECKING=False' 
                sh 'ansible-playbook -vvv ansible_play_for_consul_ha/create-file.yml -e WORKSPACE=${WORKSPACE}'
                sh 'chmod 400 ${SSH_KEYDIR}'
                sh 'ansible-playbook -vvv ansible_play_for_consul_ha/consul-configure.yml -e WORKSPACE=${WORKSPACE}'
            }
        }

    }
}
