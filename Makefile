current_dir = $(shell pwd)
run:
	# mount jenkins backup 
	docker run --net host -p 8080:8080 -p 50000:50000 -P -v jenkins_home:/var/jenkins_home jmsanchez/jenkins-ci

build:
	docker build --no-cache -t jmsanchez/jenkins-ci .

shell:
	docker run --net host -it -P -v $(current_dir)/jenkins_home:/var/jenkins_home jmsanchez/jenkins-ci bash -l
