pipeline {
    agent any
 
    stages {
        stage('Run SQl Script') {
            steps {
                step (
                    [
                        $class: 'SQLPlusRunnerBuilder',
                        credentialsId:'oracle',
                        customOracleHome: '/opt/oracle',
                        customTNSAdmin: '/opt/oracle/instantclient_19_8/network/admin/tnsnames.ora',
                        instance:'nag-oracledb',
                        scriptType:'file',
                        script: 'db-ci-demo/db-ci.sql',
                        scriptContent: ''
                    ]
                )
            }
        }
    }
}
