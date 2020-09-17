define gv 

pipeline{
    agent any
    parameters{
        choice(name: 'VERSION', choices: ['1.10.0','1.20.0'], description: 'Version choices for dev')
        booleanParam(name: 'executeTest', defaultValue: true, description: 'check to run test')
    }
    stages{
        stage("init") 
        {
            steps{
                script{
                    gv = load "script-groovy.groovy"
                }
            }

        }
       stage("build"){
           steps{
                 script{
               gv.buildApp()
           }
           }   
       }
       stage("test"){
           when{
               expression{
                   params.executeTest
               }
           steps{
               script{
               gv.testApp()
                     }           
                }
                }
       }
       stage("deploy"){
           steps{
           script{
               gv.deployApp()
           }
           }
       }

    }

}
