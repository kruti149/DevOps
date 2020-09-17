def buildApp()
{
    echo 'groovy func to build the application'
}

def testApp()
{
    echo 'func to test the application'
}

def deployAp()
{
    echo 'func to deploy the application'
    echo "deploying verison ${params.VERSION}"
}

return this
