pipeline {
	agent any

	stages {
		stage ('SSH Access') {

			steps {
				sh '''
				ssh rebel-0031@192.168.10.158
				cd /var/www/html/testing/testing/
				'''
			}
		}
	}

		stage ('GIT Status') {

			steps {
				sh '''
				git_status="$(git status)"
				cd /var/www/html/testing/testing/
				echo "${lines[0]}"
				'''
			}
		}

		stage ('Build') {

			steps {
				sh '''
				if [ "${lines[0]}" == "On branch master" ]
				then
   					git pull https://fahim001-bot:rehman001@github.com/fahim001-bot/testing.git
				else
   					echo "Please verify the brach again"
				fi
				'''
			}
		}	
	
}
