pipeline {
   agent any
   environment{
     GIT_BRANCH = "Jenkins"
   }

   stages {
          stage('SCM') {
          steps {
              echo 'Check out scripts from GitHub'
              git 'https://github.com/kruti149/DevOps.git'
          }
      }
      stage('Build') {
         when{
            expression {
              env.GIT_BRANCH == 'Jenkins'
            }
         }
            steps {
               echo " Starting build in {$BRANCH_NAME}" 
            bat 'build.bat'
         }
      }
      stage('Unit') {
          steps {
              bat 'testing.bat'
          }
      }
      stage('Deploy') {
          steps {
          echo 'Start Deploy...' 
             bat 'deploy.bat'
          }
      }
      }
   
   post {
       always {
           echo 'This will always run'
       }
       success {
           echo 'This will run if success'
       }
       failure {
           echo 'This will run if fails'
       }
       unstable {
           echo 'This will run if it is marked unstable'
       }
       changed {
           echo 'This will run if state changed'
       }
   }
}
