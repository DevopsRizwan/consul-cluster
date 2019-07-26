pipeline {
    agent any

    stages {
        stage('Terraform Script') {
            steps {
                sh 'cd  terraform_play_for_consul_ha;terraform init;terraform apply -auto-approve' 30
                sh 'sleep 30'
            }
        }
        
        stage('Ansible') {
            steps {
                sh 'export ANSIBLE_HOST_KEY_CHECKING=False' 
                sh ' ansible-playbook -vvv ansible_play_for_consul_ha/create-file.yml -e WORKSPACE=${WORKSPACE}'
                //sh 'sleep 10'
                //sh 'echo ${STATE_FILE}'
                sh 'chmod 400 terraform_play_for_consul_ha/master.pem'
                sh 'ansible-playbook -vvv ansible_play_for_consul_ha/consul-configure.yml -e WORKSPACE=${WORKSPACE}'
                //sh 'echo rizwan'
                //sh 'chmod + x check.sh'
                //sh 'sh check.sh'
            }
        }

    }
}
