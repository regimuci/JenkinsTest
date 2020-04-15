pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                echo 'Checkout-ing project'
                git 'https://github.com/regimuci/JenkinsTest.git'
                echo 'Checkout Success!'
            }
        }

        stage('Build Artifact') {
            steps {
                echo 'Building artifact...'
                bat "mvn clean install"
                echo 'Success'
            }
        }

        //stage('Run Jar') {
        //    steps {
        //        bat 'java -jar target/JenkinsTest-0.0.1-SNAPSHOT.jar'
        //    }
        //}

        stage('Create Docker Image') {
            steps {
                bat 'docker build -t demo_image .'
            }
        }

        stage('Run Container') {
            steps {
                bat 'docker run -d -p 8081:8080 --name demoServer demo_image'
            }
        }
    }
}
