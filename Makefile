current_dir = $(shell pwd)
run:
	docker run --net host -v /dev/shm:/dev/shm -p 8080:8080 -p 50000:50000 -P -v jenkins_home:/var/jenkins_home jenkins-dr

build:
	docker build --no-cache -t jenkins-dr .

shell:
	docker run --net host -it -P -v $(current_dir)/jenkins_home:/var/jenkins_home jenkins-dr bash -l
