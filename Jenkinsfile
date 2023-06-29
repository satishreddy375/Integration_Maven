node{
    
    
    def mavenHome = tool name: "Maven_3.9.2"
    
    stage("git checkout"){
        git branch: 'development', credentialsId: 'Git_creds', url: 'https://github.com/p2pro-DevOps/maven-web-application.git'
    }
    
    /*stage("maven-package"){
        sh "${mavenHome}/bin/mvn clean package"
    }
    */
    stage("sonar"){
        sh "${mavenHome}/bin/mvn sonar:sonar"
    }
    stage("nexus"){
        sh "${mavenHome}/bin/mvn clean deploy"
    }
    
    stage("deploy to tomcat"){
        
        sshagent(['bc73d323-6a2f-44dd-a657-5daac8567697']) {
    
    sh "scp -o StrictHostKeyChecking=no target/maven-web-application.war ec2-user@3.144.94.189:/opt/apache-tomcat-9.0.76/webapps/"
    
    
}
        
    }
    
    
}
