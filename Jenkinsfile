
pipeline{
 	agent any
 	stages{
 	stage ('checkout'){
 	steps{
    echo 'checkout'
 	checkout scm
 	}
 	}
 	stage ('install modules'){
 	steps{
     echo 'modules'
 	sh '''
 	npm install
 	'''
 	}
 	}
 	stage ('test'){
   
 	steps{
     echo 'test'
 	sh '''
 	$(npm bin)/ng test --single-run --browsers Chrome_no_sandbox
 	'''
 	}
 	}
 	stage ('code quality'){
 	steps{
 	sh '$(npm bin)/ng lint'
 	}
 	}
 	stage ('build') {
 	steps{
 	sh '$(npm bin)/ng build --prod --build-optimizer'
 	}
 	}
 	stage ('build image') {
 	steps{
 	sh '''
 	rm -rf node_modules
 	oc start-build my-video --from-dir=. --follow
 	'''
 	}
 	}
 	}
 	}