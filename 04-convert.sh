

rm -rf gifs
mkdir -p gifs

rm -rf pngs
mkdir -p pngs

rm -rf jpgs
mkdir -p jpgs

for F in $(find lbm/ -type f); do

	B="$(basename -- $F)"
	P="$(dirname -- $F)"
	D="$(basename -- $P)"
	
	mkdir -p gifs/$D
	iff2gif/iff2gif -n $F gifs/$D/$B.gif
	
	mkdir -p pngs/$D
	gamecake.grd convert gifs/$D/$B.gif --output=pngs/$D/$B.png --overwrite

	mkdir -p jpgs/$D
	gamecake.grd convert gifs/$D/$B.gif --output=jpgs/$D/$B.jpg --resize=400% --overwrite

done
