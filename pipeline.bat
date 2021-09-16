pipeline {
    agent none
    stages {
        stage ('compile') {
            steps {
                echo "compiled Successfully !";
            }
        }

        stage ('JUnit') {
            steps {
                echo "JUnit Passed Successfully !";
            }
        }

        stage ('Quality-Gate') {
            steps {
                echo "SonarQube Quality Gate Passed Successfully !";
                /*sh exit ("1");*/
            }
        }

        stage ('Deploy') {
            steps {
                echo "Deploy Passed !";
            }
        }
    }

    post {
        always {
            echo 'This will always run'
        }
        success {
            echo 'This will run only if successful'
        }
        failure {
            echo 'This will run only if failed'
        }
        unstable {
            echo 'This will run only if the run was marked as unstable'
        }
        changed {
            echo 'This will run only if the state of the Pipeline has changed'
        }
    }
}