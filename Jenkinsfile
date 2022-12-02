pipeline {
    agent any
    tools{
        maven "maven3.8.6"
    }
    stages{
        stage("checkout"){
            steps{
                git branch:"development",credentialsId:"sss",url:"https://github.com/srinath-17/maven-standalone-application.git"
            }
        }
        stage("package"){
            steps{
                sh "mvn clean package"
            }
        }
    }
}
