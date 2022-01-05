pipeline {
    agent any
 
    stages {
        stage('Run SQl Script') {
            steps {
                step (
                    [
                        $class: 'SQLPlusRunnerBuilder',
                        credentialsId:'RDS Oracle DB',
                        customOracleHome: '/opt/oracle/instantclient_19_8',
                        customTNSAdmin: '/opt/oracle/instantclient_19_8/network/admin',
                        instance:'nag-oracledb',
                        scriptType:'file',
                        script: 'db-ci.sql',
                        scriptContent: ''
                    ]
                )
            }
        }
    }
}
