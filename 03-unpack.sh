

rm -rf adfs
mkdir -p adfs

rm -rf lbm
mkdir -p lbm

cd adfs

for F in ../zips/*.zip ; do

	B="$(basename -- $F)"
	N=${B%.zip}
	echo " $N : $B : $F "

	mkdir tmp
	cd tmp
	
	unzip ../$F
	
	cd ..
	mv tmp/*.adf $N.adf
	rm -rf tmp
	
	mkdir -p $N
	cd $N
	unadf ../$N.adf
	cd ..
	
	for F2 in $(find $N -type f); do
	
		B2="$(basename -- $F2)"
		
		H=$(head -c4 $F2)
		if [ "$H" = "FORM" ]; then
			echo " FOUND $F2 "
			mkdir -p ../lbm/$N
			cp $F2 ../lbm/$N
		fi

	done

done
