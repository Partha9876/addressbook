pipeline {
    agent any

    Parameters{
        string(name: 'ENV', defaultValue: 'compile', description:'env to compile ')
    }
    stages {
         stage('compile') {
             steps {
                 script{
                      echo 'Hello World'
                      echo "compile in env: ${params.Env}"
                }     
            } 
        }    
         stage('unittest') {
             steps {
                 script{
                      echo 'Unittest-Hello'
                }
            }
        }    
        stage('package') {
            steps {
                script{
                     echo 'pacakge -hello' 
                }
            }
        }
    }
}
