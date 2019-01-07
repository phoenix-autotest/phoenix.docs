fetch-theme:
	if [ -d "themes/hugo-jenkins-theme" ]; then \
	    cd themes/hugo-jenkins-theme && git fetch && git reset --hard origin/master && git pull; \
	else \
		cd themes && git clone https://github.com/jenkins-zh/hugo-jenkins-theme; \
	fi

update:
	if [ -d "phoenix.docs.site" ]; then \
	    cd phoenix.docs.site && git pull; \
	else \
		git clone git@github.com:phoenix-autotest/phoenix.docs.site.git; \
	fi
	make fetch-theme

live:
	make update
	hugo server

deploy:
	make update
	hugo
	cp -r public/* phoenix.docs.site
	cd phoenix.docs.site && git add . && git commit -m 'deploy' && git push