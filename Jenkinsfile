//define gv 

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
                   def gv = load("script.groovy")
                }
            }

        }
       stage("build"){
           steps{
                 script{
               //def gv = load("script.groovy")      
               gv.buildApp()
                 }
           }   
       }
       stage("test"){
           when{
               expression{
                   params.executeTest
               }
           }
           steps{
               script{
                   //def gv = load("script.groovy")
               gv.testApp()
                     }           
                }
                
       }
       stage("deploy"){
           steps{
           script{
               //def gv = load("script.groovy")
               gv.deployApp()
           }
           }
       }

    }

}
