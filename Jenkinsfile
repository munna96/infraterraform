pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url:'https://github.com/munna96/infraterraform.git']]])
             }
        }
        
        stage ("terraform init") {
            steps {
                sh ('terraform init -no-color -reconfigure') 
            }
        }
        stage ("terraform plan") {
            steps {
                sh ('terraform plan -no-color') 
            }
        }
                
        stage ("terraform Action") {
            steps {
                echo "Terraform action is --> ${params.action}"
                sh ("terraform ${params.action} --auto-approve -no-color")
           }
        }
    }
}
