pipeline {
  agent any
  stages {
    stage('') {
      steps {
        sh '''pipeline {
	agent any
	stages {

		stage(\'create k8s cluster\') {
			steps {
				withAWS(region:\'us-east-2\', credentials:\'ecr_credentials\') {
					sh \'\'\'
						eksctl create cluster \\
						--name capstoneudacity \\
						--version 1.13 \\
						--nodegroup-name standard-workers \\
						--node-type t2.micro \\
						--nodes 2 \\
						--nodes-min 1 \\
						--nodes-max 3 \\
						--node-ami auto \\
						--region us-east-2 \\
					\'\'\'
				}
			}
		}

		

		stage(\'Create cluster\') {
			steps {
				withAWS(region:\'us-east-2\', credentials:\'ecr_credentials\') {
					sh \'\'\'
						aws eks --region us-east-2 update-kubeconfig --name capstoneudacity
					\'\'\'
				}
			}
		}

	}
}'''
        }
      }

    }
  }