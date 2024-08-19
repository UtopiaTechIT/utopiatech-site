deploy:
	rm -rf public
	hugo
	ssh debian@utopiatech.it "rm -rf sites/utopiatech; mkdir -p sites; exit;"
	scp -r public debian@utopiatech.it:~/sites/utopiatech
	ssh debian@utopiatech.it "cd sites; docker compose down"
	ssh debian@utopiatech.it "cd sites; docker compose up -d"

dev:
	hugo server -D
