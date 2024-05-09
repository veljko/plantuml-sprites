# Generate pngs from svgs
# ./create_sprites.sh -s -w 192 -h 192 -p ./sprites/d365 d365

build: clean prepare
	./create_sprites.sh -p ./sprites/devops devops
	./create_sprites.sh -p ./sprites/d365 d365

prepare:
	mogrify -resize 256x256 -background white -alpha remove -alpha off ./sprites/devops/*.png
	mogrify -resize 256x256 -background white -alpha remove -alpha off ./sprites/d365/*.png

clean:
	find ./sprites/devops -name "*.puml" -type f -delete
	find ./sprites/d365 -name "*.puml" -type f -delete