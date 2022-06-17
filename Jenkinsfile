pipeline{
agent any

tools{
maven 'maven3.6.2'
}

triggers{
pollSCM('* * * * *')
//githubPush()
//cron('* * * * *')
}

options{
buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '3', daysToKeepStr: '', numToKeepStr: '3'))
timestamps()
}


stages{
stage('gettingthelatestcode'){
steps{
git branch: 'development', credentialsId: '4348c6e5-c9d3-4ec3-a357-4f8dbafac36a', url: 'https://github.com/p2pro-DevOps/maven-web-application.git'
}
}
stage('build'){
steps{
sh "mvn clean package"
}
}
/*
stage('sonarUubereport'){
steps{
sh "mvn clean sonar:sonar"
}
}
stage(nexus){
steps{
sh "mvn clean deploy"
}
}
*/
stage('Deployintotomcat'){
steps{
sshagent(['6aa350b8-ba7c-401e-be77-5c06382da230']){
  sh "scp -o StrictHostKeyChecking=no target/maven-web-application.war ec2-user@13.126.8.121:/opt/apache-tomcat-9.0.63/webapps/"
}
}
}
}
post{
success{
emailext body: '''Build over.... Decelerative...Build Success

Regards,
P2protechnology, 9441893491, Hyderabad.''', subject: 'Build over.... Decelerative...Build Success', to: 'p2protech@gmail.com'
}

failure{
emailext body: '''Build over.... Decelerative...Build Failure

Regards,
P2protechnology, 9441893491, Hyderabad.''', subject: 'Build over.... Decelerative...Build Failure', to: 'p2protech@gmail.com'
}
always{
emailext body: '''Build over.... Decelerative...Build Triggered

Regards,
P2protechnology, 9441893491, Hyderabad.''', subject: 'Build over.... Decelerative...Build Triggered', to: 'p2protech@gmail.com'
}
}
}
