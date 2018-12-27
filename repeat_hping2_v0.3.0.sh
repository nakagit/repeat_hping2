#! /bin/sh

#############################################################################
# Repeat_hpings2 [Ver.0.3.0] (2010. 5.13 10:00)  ### Pattern 94 ###
#############################################################################
# Usage: repeat_hpings2.sh <Input file>
# 
# Input file
# $1 = IP address list file
# 
# Output files
#=========================================================================
### PING
#=========================================================================
###  1) ping [${FILE}_ping.txt]

#=========================================================================
### TCP (SYN)
#=========================================================================
###  2) hping2 (syn src:random, dst:0) [${FILE}_hping2syn.txt]
###  3) hping2 (syn src:random, dst:21) [${FILE}_hping2syn-p21.txt]
###  4) hping2 (syn src:random, dst:25) [${FILE}_hping2syn-p25.txt]
###  5) hping2 (syn src:random, dst:53) [${FILE}_hping2syn-p53.txt]
###  6) hping2 (syn src:random, dst:80) [${FILE}_hping2syn-p80.txt]
###  7) hping2 (syn src:random, dst:110) [${FILE}_hping2syn-p110.txt]
###  8) hping2 (syn src:random, dst:443) [${FILE}_hping2syn-p443.txt]

###  9) hping2 (syn src:20, dst:0) [${FILE}_hping2syn-s20.txt]
### 10) hping2 (syn src:20, dst:21) [${FILE}_hping2syn-s20p21.txt]
### 11) hping2 (syn src:20, dst:25) [${FILE}_hping2syn-s20p25.txt]
### 12) hping2 (syn src:20, dst:53) [${FILE}_hping2syn-s20p53.txt]
### 13) hping2 (syn src:20, dst:80) [${FILE}_hping2syn-s20p80.txt]
### 14) hping2 (syn src:20, dst:110) [${FILE}_hping2syn-s20p110.txt]
### 15) hping2 (syn src:20, dst:443) [${FILE}_hping2syn-s20p443.txt]
### 16) hping2 (syn src:20, dst:35353) [${FILE}_hping2syn-s20p35353.txt] # ADD

### 17) hping2 (syn src:25, dst:0) [${FILE}_hping2syn-s25.txt]
### 18) hping2 (syn src:25, dst:21) [${FILE}_hping2syn-s25p21.txt]
### 19) hping2 (syn src:25, dst:25) [${FILE}_hping2syn-s25p25.txt]
### 20) hping2 (syn src:25, dst:53) [${FILE}_hping2syn-s25p53.txt]
### 21) hping2 (syn src:25, dst:80) [${FILE}_hping2syn-s25p80.txt]
### 22) hping2 (syn src:25, dst:110) [${FILE}_hping2syn-s25p110.txt]
### 23) hping2 (syn src:25, dst:443) [${FILE}_hping2syn-s25p443.txt]

### 24) hping2 (syn src:53, dst:0) [${FILE}_hping2syn-s53.txt]
### 25) hping2 (syn src:53, dst:21) [${FILE}_hping2syn-s53p21.txt]
### 26) hping2 (syn src:53, dst:25) [${FILE}_hping2syn-s53p25.txt]
### 27) hping2 (syn src:53, dst:53) [${FILE}_hping2syn-s53p53.txt]
### 28) hping2 (syn src:53, dst:80) [${FILE}_hping2syn-s53p80.txt]
### 29) hping2 (syn src:53, dst:110) [${FILE}_hping2syn-s53p110.txt]
### 30) hping2 (syn src:53, dst:443) [${FILE}_hping2syn-s53p443.txt]

### 31) hping2 (syn src:80, dst:0) [${FILE}_hping2syn-s80.txt]
### 32) hping2 (syn src:80, dst:21) [${FILE}_hping2syn-s80p21.txt]
### 33) hping2 (syn src:80, dst:25) [${FILE}_hping2syn-s80p25.txt]
### 34) hping2 (syn src:80, dst:53) [${FILE}_hping2syn-s80p53.txt]
### 35) hping2 (syn src:80, dst:80) [${FILE}_hping2syn-s80p80.txt]
### 36) hping2 (syn src:80, dst:110) [${FILE}_hping2syn-s80p110.txt]
### 37) hping2 (syn src:80, dst:443) [${FILE}_hping2syn-s80p443.txt]

### 38) hping2 (syn src:443, dst:0) [${FILE}_hping2syn-s443.txt]
### 39) hping2 (syn src:443, dst:21) [${FILE}_hping2syn-s443p21.txt]
### 40) hping2 (syn src:443, dst:25) [${FILE}_hping2syn-s443p25.txt]
### 41) hping2 (syn src:443, dst:53) [${FILE}_hping2syn-s443p53.txt]
### 42) hping2 (syn src:443, dst:80) [${FILE}_hping2syn-s443p80.txt]
### 43) hping2 (syn src:443, dst:110) [${FILE}_hping2syn-s443p110.txt]
### 44) hping2 (syn src:443, dst:443) [${FILE}_hping2syn-s443p443.txt]

#=========================================================================
### TCP (ACK)
#=========================================================================
### 45) hping2 (ack src:random, dst:0) [${FILE}_hping2ack.txt]
### 46) hping2 (ack src:random, dst:21) [${FILE}_hping2ack-p21.txt]
### 47) hping2 (ack src:random, dst:25) [${FILE}_hping2ack-p25.txt]
### 48) hping2 (ack src:random, dst:53) [${FILE}_hping2ack-p53.txt]
### 49) hping2 (ack src:random, dst:80) [${FILE}_hping2ack-p80.txt]
### 50) hping2 (ack src:random, dst:110) [${FILE}_hping2ack-p110.txt]
### 51) hping2 (ack src:random, dst:443) [${FILE}_hping2ack-p443.txt]

### 52) hping2 (ack src:20, dst:0) [${FILE}_hping2ack-s20.txt]
### 53) hping2 (ack src:20, dst:21) [${FILE}_hping2ack-s20p21.txt]
### 54) hping2 (ack src:20, dst:25) [${FILE}_hping2ack-s20p25.txt]
### 55) hping2 (ack src:20, dst:53) [${FILE}_hping2ack-s20p53.txt]
### 56) hping2 (ack src:20, dst:80) [${FILE}_hping2ack-s20p80.txt]
### 57) hping2 (ack src:20, dst:110) [${FILE}_hping2ack-s20p110.txt]
### 58) hping2 (ack src:20, dst:443) [${FILE}_hping2ack-s20p443.txt]
### 59) hping2 (ack src:20, dst:35353) [${FILE}_hping2ack-s20p35353.txt] # ADD

### 60) hping2 (ack src:25, dst:0) [${FILE}_hping2ack-s25.txt]
### 61) hping2 (ack src:25, dst:21) [${FILE}_hping2ack-s25p21.txt]
### 62) hping2 (ack src:25, dst:25) [${FILE}_hping2ack-s25p25.txt]
### 63) hping2 (ack src:25, dst:53) [${FILE}_hping2ack-s25p53.txt]
### 64) hping2 (ack src:25, dst:80) [${FILE}_hping2ack-s25p80.txt]
### 65) hping2 (ack src:25, dst:110) [${FILE}_hping2ack-s25p110.txt]
### 66) hping2 (ack src:25, dst:443) [${FILE}_hping2ack-s25p443.txt]

### 67) hping2 (ack src:53, dst:0) [${FILE}_hping2ack-s53.txt]
### 68) hping2 (ack src:53, dst:21) [${FILE}_hping2ack-s53p21.txt]
### 69) hping2 (ack src:53, dst:25) [${FILE}_hping2ack-s53p25.txt]
### 70) hping2 (ack src:53, dst:53) [${FILE}_hping2ack-s53p53.txt]
### 71) hping2 (ack src:53, dst:80) [${FILE}_hping2ack-s53p80.txt]
### 72) hping2 (ack src:53, dst:110) [${FILE}_hping2ack-s53p110.txt]
### 73) hping2 (ack src:53, dst:443) [${FILE}_hping2ack-s53p443.txt]

### 74) hping2 (ack src:80, dst:0) [${FILE}_hping2ack-s80.txt]
### 75) hping2 (ack src:80, dst:21) [${FILE}_hping2ack-s80p21.txt]
### 76) hping2 (ack src:80, dst:25) [${FILE}_hping2ack-s80p25.txt]
### 77) hping2 (ack src:80, dst:53) [${FILE}_hping2ack-s80p53.txt]
### 78) hping2 (ack src:80, dst:80) [${FILE}_hping2ack-s80p80.txt]
### 79) hping2 (ack src:80, dst:110) [${FILE}_hping2ack-s80p110.txt]
### 80) hping2 (ack src:80, dst:443) [${FILE}_hping2ack-s80p443.txt]

### 81) hping2 (ack src:443, dst:0) [${FILE}_hping2ack-s443.txt]
### 82) hping2 (ack src:443, dst:21) [${FILE}_hping2ack-s443p21.txt]
### 83) hping2 (ack src:443, dst:25) [${FILE}_hping2ack-s443p25.txt]
### 84) hping2 (ack src:443, dst:53) [${FILE}_hping2ack-s443p53.txt]
### 85) hping2 (ack src:443, dst:80) [${FILE}_hping2ack-s443p80.txt]
### 86) hping2 (ack src:443, dst:110) [${FILE}_hping2ack-s443p110.txt]
### 87) hping2 (ack src:443, dst:443) [${FILE}_hping2ack-s443p443.txt]

#=========================================================================
### UDP
#=========================================================================
### 88) hping2 (udp src:53, dst:0) [${FILE}_hping2udp-s53.txt]
### 89) hping2 (udp src:53, dst:21) [${FILE}_hping2udp-s53p21.txt]
### 90) hping2 (udp src:53, dst:25) [${FILE}_hping2udp-s53p25.txt]
### 91) hping2 (udp src:53, dst:53) [${FILE}_hping2udp-s53p53.txt]
### 92) hping2 (udp src:53, dst:80) [${FILE}_hping2udp-s53p80.txt]
### 93) hping2 (udp src:53, dst:110) [${FILE}_hping2udp-s53p110.txt]
### 94) hping2 (udp src:53, dst:443) [${FILE}_hping2udp-s53p443.txt]

#=========================================================================

FILENAME=$1
FILE=`echo ${FILENAME%.*}`

# DATE=`date +%m%d`

echo "FILENAME="${FILENAME}	# IP List File Name
echo "FILE="${FILE}			# IP List File Name (No extention)

if [ ! -d ""${FILE}"_hping2_results" ]; then
echo "'"${FILE}"_hping2_results' directory doesn't exist!"
echo "'"${FILE}"_hping2_results' directory creates automatically..."
mkdir ${FILE}_hping2_results
echo -n "Hit any key to continue..."
read ans
else
#echo "'"${FILE}"_hping2_results' directory exists"
sleep 0.1
fi

#=========================================================================
### PING
#=========================================================================
###  1) ping ###

date > ./${FILE}_hping2_results/${FILE}_ping.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_ping.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -1 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_ping.txt
date >> ./${FILE}_hping2_results/${FILE}_ping.txt


#=========================================================================
### TCP (SYN)
#=========================================================================
###  2) hping2 (syn src:random, dst:0) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn.txt


###  3) hping2 (syn src:random, dst:21) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-p21.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-p21.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -p 21 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-p21.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-p21.txt


###  4) hping2 (syn src:random, dst:25) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-p25.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-p25.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -p 25 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-p25.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-p25.txt


###  5) hping2 (syn src:random, dst:53) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-p53.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-p53.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -p 53 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-p53.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-p53.txt


###  6) hping2 (syn src:random, dst:80) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-p80.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-p80.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -p 80 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-p80.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-p80.txt


###  7) hping2 (syn src:random, dst:110) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-p110.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-p110.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -p 110 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-p110.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-p110.txt


###  8) hping2 (syn src:random, dst:443) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-p443.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-p443.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -p 443 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-p443.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-p443.txt


########################################################################
###  9) hping2 (syn src:20, dst:0) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s20.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s20.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 20 -k -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s20.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s20.txt


### 10) hping2 (syn src:20, dst:21) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s20p21.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s20p21.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 20 -k -p 21 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s20p21.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s20p21.txt


### 11) hping2 (syn src:20, dst:25) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s20p25.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s20p25.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 20 -k -p 25 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s20p25.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s20p25.txt


### 12) hping2 (syn src:20, dst:53) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s20p53.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s20p53.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 20 -k -p 53 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s20p53.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s20p53.txt


### 13) hping2 (syn src:20, dst:80) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s20p80.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s20p80.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 20 -k -p 80 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s20p80.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s20p80.txt


### 14) hping2 (syn src:20, dst:110) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s20p110.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s20p110.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 20 -k -p 110 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s20p110.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s20p110.txt


### 15) hping2 (syn src:20, dst:443) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s20p443.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s20p443.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 20 -k -p 443 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s20p443.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s20p443.txt


### 16) hping2 (syn src:20, dst:35353) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s20p35353.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s20p35353.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 20 -k -p 35353 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s20p35353.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s20p35353.txt

########################################################################
### 17) hping2 (syn src:25, dst:0) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s25.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s25.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 25 -k -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s25.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s25.txt


### 18) hping2 (syn src:25, dst:21) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s25p21.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s25p21.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 25 -k -p 21 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s25p21.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s25p21.txt


### 19) hping2 (syn src:25, dst:25) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s25p25.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s25p25.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 25 -k -p 25 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s25p25.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s25p25.txt


### 20) hping2 (syn src:25, dst:53) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s25p53.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s25p53.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 25 -k -p 53 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s25p53.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s25p53.txt


### 21) hping2 (syn src:25, dst:80) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s25p80.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s25p80.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 25 -k -p 80 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s25p80.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s25p80.txt


### 22) hping2 (syn src:25, dst:110) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s25p110.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s25p110.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 25 -k -p 110 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s25p110.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s25p110.txt


### 23) hping2 (syn src:25, dst:443) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s25p443.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s25p443.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 25 -k -p 443 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s25p443.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s25p443.txt


########################################################################
###  24) hping2 (syn src:53, dst:0) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s53.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s53.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 53 -k -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s53.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s53.txt


### 25) hping2 (syn src:53, dst:21) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s53p21.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s53p21.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 53 -k -p 21 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s53p21.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s53p21.txt


### 26) hping2 (syn src:53, dst:25) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s53p25.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s53p25.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 53 -k -p 25 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s53p25.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s53p25.txt


### 27) hping2 (syn src:53, dst:53) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s53p53.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s53p53.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 53 -k -p 53 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s53p53.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s53p53.txt


### 28) hping2 (syn src:53, dst:80) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s53p80.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s53p80.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 53 -k -p 80 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s53p80.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s53p80.txt


### 29) hping2 (syn src:53, dst:110) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s53p110.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s53p110.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 53 -k -p 110 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s53p110.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s53p110.txt


### 30) hping2 (syn src:53, dst:443) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s53p443.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s53p443.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 53 -k -p 443 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s53p443.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s53p443.txt


########################################################################
### 31) hping2 (syn src:80, dst:0) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s80.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s80.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 80 -k -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s80.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s80.txt


### 32) hping2 (syn src:80, dst:21) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s80p21.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s80p21.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 80 -k -p 21 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s80p21.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s80p21.txt


### 33) hping2 (syn src:80, dst:25) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s80p25.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s80p25.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 80 -k -p 25 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s80p25.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s80p25.txt


### 34) hping2 (syn src:80, dst:53) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s80p53.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s80p53.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 80 -k -p 53 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s80p53.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s80p53.txt


### 35) hping2 (syn src:80, dst:80) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s80p80.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s80p80.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 80 -k -p 80 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s80p80.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s80p80.txt


### 36) hping2 (syn src:80, dst:110) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s80p110.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s80p110.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 80 -k -p 110 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s80p110.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s80p110.txt


### 37) hping2 (syn src:80, dst:443) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s80p443.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s80p443.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 80 -k -p 443 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s80p443.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s80p443.txt


########################################################################
### 38) hping2 (syn src:443, dst:0) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s443.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s443.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 443 -k -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s443.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s443.txt


### 39) hping2 (syn src:443, dst:21) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s443p21.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s443p21.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 443 -k -p 21 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s443p21.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s443p21.txt


### 40) hping2 (syn src:443, dst:25) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s443p25.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s443p25.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 443 -k -p 25 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s443p25.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s443p25.txt


### 41) hping2 (syn src:443, dst:53) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s443p53.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s443p53.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 443 -k -p 53 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s443p53.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s443p53.txt


### 42) hping2 (syn src:443, dst:80) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s443p80.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s443p80.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 443 -k -p 80 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s443p80.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s443p80.txt


### 43) hping2 (syn src:443, dst:110) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s443p110.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s443p110.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 443 -k -p 110 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s443p110.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s443p110.txt


### 44) hping2 (syn src:443, dst:443) ###

date > ./${FILE}_hping2_results/${FILE}_hping2syn-s443p443.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2syn-s443p443.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -S -s 443 -k -p 443 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2syn-s443p443.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2syn-s443p443.txt


#=========================================================================
### TCP (ACK)
#=========================================================================
### 45) hping2 (ack src:random, dst:0) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack.txt


### 46) hping2 (ack src:random, dst:21) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-p21.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-p21.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -p 21 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-p21.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-p21.txt


### 47) hping2 (ack src:random, dst:25) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-p25.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-p25.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -p 25 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-p25.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-p25.txt


### 48) hping2 (ack src:random, dst:53) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-p53.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-p53.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -p 53 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-p53.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-p53.txt


### 49) hping2 (ack src:random, dst:80) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-p80.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-p80.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -p 80 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-p80.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-p80.txt


### 50) hping2 (ack src:random, dst:110) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-p110.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-p110.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -p 110 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-p110.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-p110.txt


### 51) hping2 (ack src:random, dst:443) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-p443.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-p443.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -p 443 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-p443.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-p443.txt


########################################################################
###  52) hping2 (ack src:20, dst:0) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s20.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s20.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 20 -k -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s20.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s20.txt


### 53) hping2 (ack src:20, dst:21) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s20p21.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s20p21.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 20 -k -p 21 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s20p21.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s20p21.txt


### 54) hping2 (ack src:20, dst:25) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s20p25.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s20p25.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 20 -k -p 25 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s20p25.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s20p25.txt


### 55) hping2 (ack src:20, dst:53) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s20p53.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s20p53.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 20 -k -p 53 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s20p53.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s20p53.txt


### 56) hping2 (ack src:20, dst:80) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s20p80.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s20p80.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 20 -k -p 80 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s20p80.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s20p80.txt


### 57) hping2 (ack src:20, dst:110) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s20p110.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s20p110.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 20 -k -p 110 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s20p110.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s20p110.txt


### 58) hping2 (ack src:20, dst:443) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s20p443.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s20p443.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 20 -k -p 443 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s20p443.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s20p443.txt


### 59) hping2 (ack src:20, dst:35353) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s20p35353.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s20p35353.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 20 -k -p 35353 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s20p35353.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s20p35353.txt


########################################################################
### 60) hping2 (ack src:25, dst:0) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s25.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s25.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 25 -k -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s25.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s25.txt


### 61) hping2 (ack src:25, dst:21) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s25p21.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s25p21.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 25 -k -p 21 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s25p21.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s25p21.txt


### 62) hping2 (ack src:25, dst:25) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s25p25.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s25p25.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 25 -k -p 25 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s25p25.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s25p25.txt


### 63) hping2 (ack src:25, dst:53) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s25p53.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s25p53.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 25 -k -p 53 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s25p53.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s25p53.txt


### 64) hping2 (ack src:25, dst:80) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s25p80.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s25p80.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 25 -k -p 80 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s25p80.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s25p80.txt


### 65) hping2 (ack src:25, dst:110) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s25p110.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s25p110.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 25 -k -p 110 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s25p110.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s25p110.txt


### 66) hping2 (ack src:25, dst:443) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s25p443.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s25p443.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 25 -k -p 443 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s25p443.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s25p443.txt


########################################################################
### 67) hping2 (ack src:53, dst:0) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s53.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s53.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 53 -k -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s53.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s53.txt


### 68) hping2 (ack src:53, dst:21) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s53p21.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s53p21.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 53 -k -p 21 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s53p21.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s53p21.txt


### 69) hping2 (ack src:53, dst:25) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s53p25.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s53p25.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 53 -k -p 25 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s53p25.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s53p25.txt


### 70) hping2 (ack src:53, dst:53) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s53p53.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s53p53.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 53 -k -p 53 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s53p53.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s53p53.txt


### 71) hping2 (ack src:53, dst:80) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s53p80.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s53p80.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 53 -k -p 80 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s53p80.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s53p80.txt


### 72) hping2 (ack src:53, dst:110) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s53p110.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s53p110.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 53 -k -p 110 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s53p110.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s53p110.txt


### 73) hping2 (ack src:53, dst:443) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s53p443.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s53p443.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 53 -k -p 443 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s53p443.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s53p443.txt


########################################################################
### 74) hping2 (ack src:80, dst:0) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s80.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s80.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 80 -k -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s80.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s80.txt


### 75) hping2 (ack src:80, dst:21) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s80p21.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s80p21.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 80 -k -p 21 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s80p21.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s80p21.txt


### 76) hping2 (ack src:80, dst:25) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s80p25.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s80p25.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 80 -k -p 25 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s80p25.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s80p25.txt


### 77) hping2 (ack src:80, dst:53) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s80p53.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s80p53.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 80 -k -p 53 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s80p53.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s80p53.txt


### 78) hping2 (ack src:80, dst:80) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s80p80.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s80p80.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 80 -k -p 80 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s80p80.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s80p80.txt


### 79) hping2 (ack src:80, dst:110) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s80p110.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s80p110.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 80 -k -p 110 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s80p110.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s80p110.txt


### 80) hping2 (ack src:80, dst:443) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s80p443.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s80p443.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 80 -k -p 443 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s80p443.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s80p443.txt


########################################################################
### 81) hping2 (ack src:443, dst:0) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s443.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s443.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 443 -k -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s443.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s443.txt


### 82) hping2 (ack src:443, dst:21) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s443p21.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s443p21.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 443 -k -p 21 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s443p21.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s443p21.txt


### 83) hping2 (ack src:443, dst:25) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s443p25.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s443p25.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 443 -k -p 25 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s443p25.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s443p25.txt


### 84) hping2 (ack src:443, dst:53) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s443p53.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s443p53.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 443 -k -p 53 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s443p53.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s443p53.txt


### 85) hping2 (ack src:443, dst:80) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s443p80.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s443p80.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 443 -k -p 80 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s443p80.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s443p80.txt


### 86) hping2 (ack src:443, dst:110) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s443p110.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s443p110.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 443 -k -p 110 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s443p110.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s443p110.txt


### 87) hping2 (ack src:443, dst:443) ###

date > ./${FILE}_hping2_results/${FILE}_hping2ack-s443p443.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2ack-s443p443.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -A -s 443 -k -p 443 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2ack-s443p443.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2ack-s443p443.txt


#=========================================================================
### UDP
#=========================================================================
### 88) hping2 (udp src:53, dst:0) ###

date > ./${FILE}_hping2_results/${FILE}_hping2udp-s53.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2udp-s53.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -2 -s 53 -k -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2udp-s53.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2udp-s53.txt


### 89) hping2 (udp src:53, dst:21) ###

date > ./${FILE}_hping2_results/${FILE}_hping2udp-s53p21.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2udp-s53p21.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -2 -s 53 -k -p 21 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2udp-s53p21.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2udp-s53p21.txt


### 90) hping2 (udp src:53, dst:25) ###

date > ./${FILE}_hping2_results/${FILE}_hping2udp-s53p25.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2udp-s53p25.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -2 -s 53 -k -p 25 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2udp-s53p25.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2udp-s53p25.txt


### 91) hping2 (udp src:53, dst:53) ###

date > ./${FILE}_hping2_results/${FILE}_hping2udp-s53p53.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2udp-s53p53.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -2 -s 53 -k -p 53 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2udp-s53p53.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2udp-s53p53.txt


### 92) hping2 (udp src:53, dst:80) ###

date > ./${FILE}_hping2_results/${FILE}_hping2udp-s53p80.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2udp-s53p80.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -2 -s 53 -k -p 80 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2udp-s53p80.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2udp-s53p80.txt


### 93) hping2 (udp src:53, dst:110) ###

date > ./${FILE}_hping2_results/${FILE}_hping2udp-s53p110.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2udp-s53p110.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -2 -s 53 -k -p 110 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2udp-s53p110.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2udp-s53p110.txt


### 94) hping2 (udp src:53, dst:443) ###

date > ./${FILE}_hping2_results/${FILE}_hping2udp-s53p443.txt
echo "" >> ./${FILE}_hping2_results/${FILE}_hping2udp-s53p443.txt
for i in `less "$1" | xargs`; do
	echo $i
	hping2 -n -2 -s 53 -k -p 443 -c 3 $i
	echo ""
	echo ""
        sleep 1
done | tee -a ./${FILE}_hping2_results/${FILE}_hping2udp-s53p443.txt
date >> ./${FILE}_hping2_results/${FILE}_hping2udp-s53p443.txt


# END
