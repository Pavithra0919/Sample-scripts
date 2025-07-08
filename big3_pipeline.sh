pipeline {
    agent any

    parameters {
        string(name: 'A', defaultValue: '10', description: 'Enter first number')
        string(name: 'B', defaultValue: '20', description: 'Enter second number')
        string(name: 'C', defaultValue: '30', description: 'Enter third number')
    }

    stages {
        stage('Run big3.sh') {
            steps {
                sh './big3.sh $A $B $C'
            }
        }
    }
}

