

rm -rf gifs
mkdir -p gifs

for F in $(find lbm/ -type f); do

	B="$(basename -- $F)"
	P="$(dirname -- $F)"
	D="$(basename -- $P)"
	echo " $B : $D : $P : $F "
	
	mkdir -p gifs/$D
	iff2gif/iff2gif -n $F gifs/$D/$B.gif

done
