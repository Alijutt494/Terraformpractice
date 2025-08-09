pipeline{
    agent any
environment {
    VERCEL_TOKEN = credentials('vercel_token')
    stages {
        stage('install') {
            steps {
                bat 'npm install'
            }
        }
        stage('Test') {
            steps {
                echo 'Skip Testing...'
            }
        }
        stage('Build') {
            steps {
                bat 'bat run build'
            }
        }
        stage('Deploy') {
            steps {
                bat 'npx vercel --pro --yes --token =%VERCEL_TOKEN%'
            }
        }
    
    }
}
}