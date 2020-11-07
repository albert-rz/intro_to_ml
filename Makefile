.PHONY=default env clean

.DEFAULT_GOAL=default


default:
	@echo "Please select a valid target"

serve:
	npx live-server

pdf:
	npx decktape --chrome-path /opt/google/chrome/chrome remark http://localhost:8080 hola.pdf

evil-push:
	cp -r .git .bak.git
	rm -rf .git
	git init
	git checkout -b main
	git add .
	git commit -m "Initial commit"
	git remote add origin https://github.com/albert-rz/intro_to_ml.git
	git push -u --force origin main

push:
	git add .
	git commit -am "Update"
	git push


evil-clean:
	rm -rf .bak.git
