#! /bin/sh

######################################################################################
# Repeat_hping2_analysis [Ver.0.3.4] (2010. 5.13 13:45)  ### Pattern 94 ###
######################################################################################
# Usage: repeat_hping2_analysis.sh <Input file>
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
###  3) hping2 (syn src:random, dst:21) [${FILE}_hping2syn-p21.txt] # ADD 2010.5
###  4) hping2 (syn src:random, dst:25) [${FILE}_hping2syn-p25.txt]
###  5) hping2 (syn src:random, dst:53) [${FILE}_hping2syn-p53.txt]
###  6) hping2 (syn src:random, dst:80) [${FILE}_hping2syn-p80.txt]
###  7) hping2 (syn src:random, dst:110) [${FILE}_hping2syn-p110.txt] # ADD 2010.5
###  8) hping2 (syn src:random, dst:443) [${FILE}_hping2syn-p443.txt]

###  9) hping2 (syn src:20, dst:0) [${FILE}_hping2syn-s20.txt]
### 10) hping2 (syn src:20, dst:21) [${FILE}_hping2syn-s20p21.txt] # ADD 2010.5
### 11) hping2 (syn src:20, dst:25) [${FILE}_hping2syn-s20p25.txt]
### 12) hping2 (syn src:20, dst:53) [${FILE}_hping2syn-s20p53.txt]
### 13) hping2 (syn src:20, dst:80) [${FILE}_hping2syn-s20p80.txt]
### 14) hping2 (syn src:20, dst:110) [${FILE}_hping2syn-s20p110.txt] # ADD 2010.5
### 15) hping2 (syn src:20, dst:443) [${FILE}_hping2syn-s20p443.txt]
### 16) hping2 (syn src:20, dst:35353) [${FILE}_hping2syn-s20p35353.txt] # ADD

### 17) hping2 (syn src:25, dst:0) [${FILE}_hping2syn-s25.txt]
### 18) hping2 (syn src:25, dst:21) [${FILE}_hping2syn-s25p21.txt] # ADD 2010.5
### 19) hping2 (syn src:25, dst:25) [${FILE}_hping2syn-s25p25.txt]
### 20) hping2 (syn src:25, dst:53) [${FILE}_hping2syn-s25p53.txt]
### 21) hping2 (syn src:25, dst:80) [${FILE}_hping2syn-s25p80.txt]
### 22) hping2 (syn src:25, dst:110) [${FILE}_hping2syn-s25p110.txt] # ADD 2010.5
### 23) hping2 (syn src:25, dst:443) [${FILE}_hping2syn-s25p443.txt]

### 24) hping2 (syn src:53, dst:0) [${FILE}_hping2syn-s53.txt]
### 25) hping2 (syn src:53, dst:21) [${FILE}_hping2syn-s53p21.txt] # ADD 2010.5
### 26) hping2 (syn src:53, dst:25) [${FILE}_hping2syn-s53p25.txt]
### 27) hping2 (syn src:53, dst:53) [${FILE}_hping2syn-s53p53.txt]
### 28) hping2 (syn src:53, dst:80) [${FILE}_hping2syn-s53p80.txt]
### 29) hping2 (syn src:53, dst:110) [${FILE}_hping2syn-s53p110.txt] # ADD 2010.5
### 30) hping2 (syn src:53, dst:443) [${FILE}_hping2syn-s53p443.txt]

### 31) hping2 (syn src:80, dst:0) [${FILE}_hping2syn-s80.txt]
### 32) hping2 (syn src:80, dst:21) [${FILE}_hping2syn-s80p21.txt] # ADD 2010.5
### 33) hping2 (syn src:80, dst:25) [${FILE}_hping2syn-s80p25.txt]
### 34) hping2 (syn src:80, dst:53) [${FILE}_hping2syn-s80p53.txt]
### 35) hping2 (syn src:80, dst:80) [${FILE}_hping2syn-s80p80.txt]
### 36) hping2 (syn src:80, dst:110) [${FILE}_hping2syn-s80p110.txt] # ADD 2010.5
### 37) hping2 (syn src:80, dst:443) [${FILE}_hping2syn-s80p443.txt]

### 38) hping2 (syn src:443, dst:0) [${FILE}_hping2syn-s443.txt]
### 39) hping2 (syn src:443, dst:21) [${FILE}_hping2syn-s443p21.txt] # ADD 2010.5
### 40) hping2 (syn src:443, dst:25) [${FILE}_hping2syn-s443p25.txt]
### 41) hping2 (syn src:443, dst:53) [${FILE}_hping2syn-s443p53.txt]
### 42) hping2 (syn src:443, dst:80) [${FILE}_hping2syn-s443p80.txt]
### 43) hping2 (syn src:443, dst:110) [${FILE}_hping2syn-s443p110.txt] # ADD 2010.5
### 44) hping2 (syn src:443, dst:443) [${FILE}_hping2syn-s443p443.txt]

#=========================================================================
### TCP (ACK)
#=========================================================================
### 45) hping2 (ack src:random, dst:0) [${FILE}_hping2ack.txt]
### 46) hping2 (ack src:random, dst:21) [${FILE}_hping2ack-p21.txt] # ADD 2010.5
### 47) hping2 (ack src:random, dst:25) [${FILE}_hping2ack-p25.txt]
### 48) hping2 (ack src:random, dst:53) [${FILE}_hping2ack-p53.txt]
### 49) hping2 (ack src:random, dst:80) [${FILE}_hping2ack-p80.txt]
### 50) hping2 (ack src:random, dst:110) [${FILE}_hping2ack-p110.txt] # ADD 2010.5
### 51) hping2 (ack src:random, dst:443) [${FILE}_hping2ack-p443.txt]

### 52) hping2 (ack src:20, dst:0) [${FILE}_hping2ack-s20.txt]
### 53) hping2 (ack src:20, dst:21) [${FILE}_hping2ack-s20p21.txt] # ADD 2010.5
### 54) hping2 (ack src:20, dst:25) [${FILE}_hping2ack-s20p25.txt]
### 55) hping2 (ack src:20, dst:53) [${FILE}_hping2ack-s20p53.txt]
### 56) hping2 (ack src:20, dst:80) [${FILE}_hping2ack-s20p80.txt]
### 57) hping2 (ack src:20, dst:110) [${FILE}_hping2ack-s20p110.txt] # ADD 2010.5
### 58) hping2 (ack src:20, dst:443) [${FILE}_hping2ack-s20p443.txt]
### 59) hping2 (ack src:20, dst:35353) [${FILE}_hping2ack-s20p35353.txt] # ADD

### 60) hping2 (ack src:25, dst:0) [${FILE}_hping2ack-s25.txt]
### 61) hping2 (ack src:25, dst:21) [${FILE}_hping2ack-s25p21.txt] # ADD 2010.5
### 62) hping2 (ack src:25, dst:25) [${FILE}_hping2ack-s25p25.txt]
### 63) hping2 (ack src:25, dst:53) [${FILE}_hping2ack-s25p53.txt]
### 64) hping2 (ack src:25, dst:80) [${FILE}_hping2ack-s25p80.txt]
### 65) hping2 (ack src:25, dst:110) [${FILE}_hping2ack-s25p110.txt] # ADD 2010.5
### 66) hping2 (ack src:25, dst:443) [${FILE}_hping2ack-s25p443.txt]

### 67) hping2 (ack src:53, dst:0) [${FILE}_hping2ack-s53.txt]
### 68) hping2 (ack src:53, dst:21) [${FILE}_hping2ack-s53p21.txt] # ADD 2010.5
### 69) hping2 (ack src:53, dst:25) [${FILE}_hping2ack-s53p25.txt]
### 70) hping2 (ack src:53, dst:53) [${FILE}_hping2ack-s53p53.txt]
### 71) hping2 (ack src:53, dst:80) [${FILE}_hping2ack-s53p80.txt]
### 72) hping2 (ack src:53, dst:110) [${FILE}_hping2ack-s53p110.txt] # ADD 2010.5
### 73) hping2 (ack src:53, dst:443) [${FILE}_hping2ack-s53p443.txt]

### 74) hping2 (ack src:80, dst:0) [${FILE}_hping2ack-s80.txt]
### 75) hping2 (ack src:80, dst:21) [${FILE}_hping2ack-s80p21.txt] # ADD 2010.5
### 76) hping2 (ack src:80, dst:25) [${FILE}_hping2ack-s80p25.txt]
### 77) hping2 (ack src:80, dst:53) [${FILE}_hping2ack-s80p53.txt]
### 78) hping2 (ack src:80, dst:80) [${FILE}_hping2ack-s80p80.txt]
### 79) hping2 (ack src:80, dst:110) [${FILE}_hping2ack-s80p110.txt] # ADD 2010.5
### 80) hping2 (ack src:80, dst:443) [${FILE}_hping2ack-s80p443.txt]

### 81) hping2 (ack src:443, dst:0) [${FILE}_hping2ack-s443.txt]
### 82) hping2 (ack src:443, dst:21) [${FILE}_hping2ack-s443p21.txt] # ADD 2010.5
### 83) hping2 (ack src:443, dst:25) [${FILE}_hping2ack-s443p25.txt]
### 84) hping2 (ack src:443, dst:53) [${FILE}_hping2ack-s443p53.txt]
### 85) hping2 (ack src:443, dst:80) [${FILE}_hping2ack-s443p80.txt]
### 86) hping2 (ack src:443, dst:110) [${FILE}_hping2ack-s443p110.txt] # ADD 2010.5
### 87) hping2 (ack src:443, dst:443) [${FILE}_hping2ack-s443p443.txt]

#=========================================================================
### UDP
#=========================================================================
### 88) hping2 (udp src:53, dst:0) [${FILE}_hping2udp-s53.txt]
### 89) hping2 (udp src:53, dst:21) [${FILE}_hping2udp-s53p21.txt] # ADD 2010.5
### 90) hping2 (udp src:53, dst:25) [${FILE}_hping2udp-s53p25.txt]
### 91) hping2 (udp src:53, dst:53) [${FILE}_hping2udp-s53p53.txt]
### 92) hping2 (udp src:53, dst:80) [${FILE}_hping2udp-s53p80.txt]
### 93) hping2 (udp src:53, dst:110) [${FILE}_hping2udp-s53p110.txt] # ADD 2010.5
### 94) hping2 (udp src:53, dst:443) [${FILE}_hping2udp-s53p443.txt]

#=========================================================================

FILENAME=$1
FILE=`echo ${FILENAME%.*}`
LINE="-------------------------------------------------------------------------------------------------------------------------------------------------"
PRINT_VAL_TITLE="%-16s  %-16s  %-6s %-6s %-6s %-24s %8s %8s  %-s \n"
PRINT_VAL_DATA="%-4s %-1s %-19s  %-16s  %-6s %-6s %-6s %-24s %8s %8s  %-s \n"

#### PRINT_VAL_TITLE/DATA ########
# %-16s	"Response_IP"
# %-16s	"Dst_IP"
# %-6s		"Diff"
# %-6s		"Cmd"
# %-6s		"Flag"
# %-24s	"Res_Flag/Res_ICMP"
# %8s		"SrcPort"
# %8s		"DstPort" 
# %-s \n	"File"
#######################################

declare -i x=0 END_Line_No=0
declare -a dest_ip ip HPING_Line_No

echo ""
echo "FILENAME="${FILENAME}	# IP List File Name
echo "FILE="${FILE}			# IP List File Name (No extention)

if [ ! -d ""${FILE}"_hping2_results" ]; then
echo "'"${FILE}"_hping2_results' directory doesn't exist!"
echo "Exit Now!!"
exit
else
#echo "'"${FILE}"_hping2_results' directory exists"
sleep 0.1
fi

if [ ! -d ""${FILE}"_hping2_analysis" ]; then
echo "'"${FILE}"_hping2_analysis' directory doesn't exist!"
echo "'"${FILE}"_hping2_analysis' directory creates automatically..."
mkdir ${FILE}_hping2_analysis
echo -n "Hit any key to continue..."
read ans
else
#echo "'"${FILE}"_hping2_analysis' directory exists"
sleep 0.1
fi

# DATE=`date +%m%d`


#==========================================
# for ${FILE}_all_results.txt (START)
#==========================================
date | tee ./${FILE}_hping2_analysis/${FILE}_all_results.txt ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
echo "" | tee -a ./${FILE}_hping2_analysis/${FILE}_all_results.txt ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
echo "FILE = "${FILENAME} | tee -a ./${FILE}_hping2_analysis/${FILE}_all_results.txt ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
echo ""

#=========================================================================
### PING
#=========================================================================
#######################################################################
###  1) ping [${FILE}_ping.txt]
#######################################################################
echo "1) ping [${FILE}_ping.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_ping.txt											# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_ping.txt
echo "Result File Name = "${FILE}"_ping.txt" >> ./${FILE}_hping2_analysis/${FILE}_ping.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_ping.txt		# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_ping.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_ping.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_ping.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_ping.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_ping.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (!/ICMP Host Unreachable/) && (/[ ]+ip='"${i}"'/) && (!/TTL 0 during transit from/) && (!/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
    {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","ping","----","----","----","----","'"${FILE}"'_ping.txt"}
    if ((!/^DUP!/) && (!/ICMP Host Unreachable/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (!/TTL 0 during transit from/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
    {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","ping","----","----","----","----","'"${FILE}"'_ping.txt"}
    if ((!/^DUP!/) && (!/ICMP Host Unreachable/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
    {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","ping","----","ICMP Unreachable(T_10)","----","----","'"${FILE}"'_ping.txt"}
    if ((!/^DUP!/) && (!/ICMP Host Unreachable/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
    {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","ping","----","ICMP Unreachable(T_10)","----","----","'"${FILE}"'_ping.txt"}
    }' ./${FILE}_hping2_results/${FILE}_ping.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
    {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","ping","----","ICMP Packet filtered","----","----","'"${FILE}"'_ping.txt"}
    if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
    {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","ping","----","ICMP Packet filtered","----","----","'"${FILE}"'_ping.txt"}
    if ((!/^DUP!/) && (!/ICMP Host Unreachable/) && (/[ ]+ip='"${i}"'/) && (/^TTL 0 during transit from/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
    {printf "'"${PRINT_VAL_DATA}"'", NR,":",$6,"'"${dest_ip}"'","----","ping","----","TTL 0 during transit","----","----","'"${FILE}"'_ping.txt"}
    if ((!/^DUP!/) && (!/ICMP Host Unreachable/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/TTL 0 during transit from/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
    {printf "'"${PRINT_VAL_DATA}"'", NR,":",$6,"'"${dest_ip}"'","Diff","ping","----","TTL 0 during transit","----","----","'"${FILE}"'_ping.txt"}
    }' ./${FILE}_hping2_results/${FILE}_ping.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt 
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_ping.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_ping.txt
date >> ./${FILE}_hping2_analysis/${FILE}_ping.txt
echo ""
sleep 0.2
x=0

#=========================================================================
### TCP (SYN)
#=========================================================================
#######################################################################
###  2) hping2 (syn src:random, dst:0) [${FILE}_hping2syn.txt]
#######################################################################
echo "2) hping2 (syn src:random, dst:0) [${FILE}_hping2syn.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn.txt													# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn.txt
echo "Result File Name = "${FILE}"_hping2syn.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn.txt				# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","Random","0","'"${FILE}"'_hping2syn.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","Random","0","'"${FILE}"'_hping2syn.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","Random","0","'"${FILE}"'_hping2syn.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","Random","0","'"${FILE}"'_hping2syn.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","Random","0","'"${FILE}"'_hping2syn.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","Random","0","'"${FILE}"'_hping2syn.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","Random","0","'"${FILE}"'_hping2syn.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","Random","0","'"${FILE}"'_hping2syn.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn.txt
echo ""
sleep 0.2
x=0

##############################################################################
###  3) hping2 (syn src:random, dst:21) [${FILE}_hping2syn-p21.txt]
##############################################################################
echo "3) hping2 (syn src:random, dst:21) [${FILE}_hping2syn-p21.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-p21.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p21.txt
echo "Result File Name = "${FILE}"_hping2syn-p21.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p21.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p21.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p21.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p21.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p21.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-p21.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-p21.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","Random","21","'"${FILE}"'_hping2syn-p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","Random","21","'"${FILE}"'_hping2syn-p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","Random","21","'"${FILE}"'_hping2syn-p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","Random","21","'"${FILE}"'_hping2syn-p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","Random","21","'"${FILE}"'_hping2syn-p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","Random","21","'"${FILE}"'_hping2syn-p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-p21.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","Random","21","'"${FILE}"'_hping2syn-p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","Random","21","'"${FILE}"'_hping2syn-p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-p21.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p21.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p21.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p21.txt
echo ""
sleep 0.2
x=0

##############################################################################
###  4) hping2 (syn src:random, dst:25) [${FILE}_hping2syn-p25.txt]
##############################################################################
echo "4) hping2 (syn src:random, dst:25) [${FILE}_hping2syn-p25.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-p25.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p25.txt
echo "Result File Name = "${FILE}"_hping2syn-p25.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p25.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p25.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p25.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p25.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p25.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-p25.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-p25.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","Random","25","'"${FILE}"'_hping2syn-p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","Random","25","'"${FILE}"'_hping2syn-p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","Random","25","'"${FILE}"'_hping2syn-p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","Random","25","'"${FILE}"'_hping2syn-p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","Random","25","'"${FILE}"'_hping2syn-p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","Random","25","'"${FILE}"'_hping2syn-p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-p25.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","Random","25","'"${FILE}"'_hping2syn-p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","Random","25","'"${FILE}"'_hping2syn-p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-p25.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p25.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p25.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p25.txt
echo ""
sleep 0.2
x=0

#######################################################################
###  5) hping2 (syn src:random, dst:53) [${FILE}_hping2syn-p53.txt]
#######################################################################
echo "5) hping2 (syn src:random, dst:53) [${FILE}_hping2syn-p53.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-p53.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p53.txt
echo "Result File Name = "${FILE}"_hping2syn-p53.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p53.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p53.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p53.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a  ./${FILE}_hping2_analysis/${FILE}_hping2syn-p53.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p53.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-p53.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-p53.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","Random","53","'"${FILE}"'_hping2syn-p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","Random","53","'"${FILE}"'_hping2syn-p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","Random","53","'"${FILE}"'_hping2syn-p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","Random","53","'"${FILE}"'_hping2syn-p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","Random","53","'"${FILE}"'_hping2syn-p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","Random","53","'"${FILE}"'_hping2syn-p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-p53.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","Random","53","'"${FILE}"'_hping2syn-p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","Random","53","'"${FILE}"'_hping2syn-p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-p53.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p53.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p53.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p53.txt
echo ""
sleep 0.2
x=0

#######################################################################
###  6) hping2 (syn src:random, dst:80) [${FILE}_hping2syn-p80.txt]
#######################################################################
echo "6) hping2 (syn src:random, dst:80) [${FILE}_hping2syn-p80.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-p80.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p80.txt
echo "Result File Name = "${FILE}"_hping2syn-p80.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p80.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p80.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p80.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a  ./${FILE}_hping2_analysis/${FILE}_hping2syn-p80.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p80.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-p80.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-p80.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","Random","80","'"${FILE}"'_hping2syn-p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","Random","80","'"${FILE}"'_hping2syn-p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","Random","80","'"${FILE}"'_hping2syn-p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'", NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","Random","80","'"${FILE}"'_hping2syn-p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","Random","80","'"${FILE}"'_hping2syn-p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","Random","80","'"${FILE}"'_hping2syn-p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-p80.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","Random","80","'"${FILE}"'_hping2syn-p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","Random","80","'"${FILE}"'_hping2syn-p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-p80.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p80.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p80.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p80.txt
echo ""
sleep 0.2
x=0

#################################################################################
###  7) hping2 (syn src:random, dst:110) [${FILE}_hping2syn-p110.txt]
#################################################################################
echo "7) hping2 (syn src:random, dst:110) [${FILE}_hping2syn-p110.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-p110.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p110.txt
echo "Result File Name = "${FILE}"_hping2syn-p110.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p110.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p110.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p110.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a  ./${FILE}_hping2_analysis/${FILE}_hping2syn-p110.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p110.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-p110.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-p110.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","Random","110","'"${FILE}"'_hping2syn-p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","Random","110","'"${FILE}"'_hping2syn-p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","Random","110","'"${FILE}"'_hping2syn-p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","Random","110","'"${FILE}"'_hping2syn-p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","Random","110","'"${FILE}"'_hping2syn-p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","Random","110","'"${FILE}"'_hping2syn-p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-p110.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","Random","110","'"${FILE}"'_hping2syn-p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","Random","110","'"${FILE}"'_hping2syn-p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-p110.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p110.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p110.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p110.txt
echo ""
sleep 0.2
x=0

#######################################################################
###  8) hping2 (syn src:random, dst:443) [${FILE}_hping2syn-p443.txt]
#######################################################################
echo "8) hping2 (syn src:random, dst:443) [${FILE}_hping2syn-p443.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-p443.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p443.txt
echo "Result File Name = "${FILE}"_hping2syn-p443.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p443.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p443.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p443.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a  ./${FILE}_hping2_analysis/${FILE}_hping2syn-p443.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p443.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-p443.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-p443.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","Random","443","'"${FILE}"'_hping2syn-p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","Random","443","'"${FILE}"'_hping2syn-p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","Random","443","'"${FILE}"'_hping2syn-p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","Random","443","'"${FILE}"'_hping2syn-p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","Random","443","'"${FILE}"'_hping2syn-p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","Random","443","'"${FILE}"'_hping2syn-p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-p443.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","Random","443","'"${FILE}"'_hping2syn-p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","Random","443","'"${FILE}"'_hping2syn-p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-p443.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p443.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-p443.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-p443.txt
echo ""
sleep 0.2
x=0

#######################################################################
###  9) hping2 (syn src:20, dst:0) [${FILE}_hping2syn-s20.txt]
#######################################################################
echo "9) hping2 (syn src:20, dst:0) [${FILE}_hping2syn-s20.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20.txt
echo "Result File Name = "${FILE}"_hping2syn-s20.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a  ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s20.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s20.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","20","0","'"${FILE}"'_hping2syn-s20.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","20","0","'"${FILE}"'_hping2syn-s20.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","20","0","'"${FILE}"'_hping2syn-s20.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","20","0","'"${FILE}"'_hping2syn-s20.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","20","0","'"${FILE}"'_hping2syn-s20.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","20","0","'"${FILE}"'_hping2syn-s20.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s20.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","20","0","'"${FILE}"'_hping2syn-s20.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","20","0","'"${FILE}"'_hping2syn-s20.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s20.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20.txt
echo ""
sleep 0.2
x=0

##############################################################################
###  10) hping2 (syn src:20, dst:21) [${FILE}_hping2syn-s20p21.txt]
##############################################################################
echo "10) hping2 (syn src:20, dst:21) [${FILE}_hping2syn-s20p21.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p21.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p21.txt
echo "Result File Name = "${FILE}"_hping2syn-s20p21.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p21.txt		# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p21.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p21.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a  ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p21.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p21.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p21.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p21.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","20","21","'"${FILE}"'_hping2syn-s20p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","20","21","'"${FILE}"'_hping2syn-s20p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","20","21","'"${FILE}"'_hping2syn-s20p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","20","21","'"${FILE}"'_hping2syn-s20p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","20","21","'"${FILE}"'_hping2syn-s20p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","20","21","'"${FILE}"'_hping2syn-s20p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p21.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","20","21","'"${FILE}"'_hping2syn-s20p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","20","21","'"${FILE}"'_hping2syn-s20p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p21.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p21.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p21.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p21.txt
echo ""
sleep 0.2
x=0

#######################################################################
###  11) hping2 (syn src:20, dst:25) [${FILE}_hping2syn-s20p25.txt]
#######################################################################
echo "11) hping2 (syn src:20, dst:25) [${FILE}_hping2syn-s20p25.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p25.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p25.txt
echo "Result File Name = "${FILE}"_hping2syn-s20p25.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p25.txt		# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p25.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p25.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a  ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p25.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p25.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p25.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p25.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","20","25","'"${FILE}"'_hping2syn-s20p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","20","25","'"${FILE}"'_hping2syn-s20p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","20","25","'"${FILE}"'_hping2syn-s20p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","20","25","'"${FILE}"'_hping2syn-s20p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","20","25","'"${FILE}"'_hping2syn-s20p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","20","25","'"${FILE}"'_hping2syn-s20p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p25.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","20","25","'"${FILE}"'_hping2syn-s20p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","20","25","'"${FILE}"'_hping2syn-s20p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p25.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p25.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p25.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p25.txt
echo ""
sleep 0.2
x=0

#######################################################################
###  12) hping2 (syn src:20, dst:53) [${FILE}_hping2syn-s20p53.txt]
#######################################################################
echo "12) hping2 (syn src:20, dst:53) [${FILE}_hping2syn-s20p53.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p53.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p53.txt
echo "Result File Name = "${FILE}"_hping2syn-s20p53.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p53.txt		# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p53.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p53.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p53.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p53.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p53.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p53.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","20","53","'"${FILE}"'_hping2syn-s20p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","20","53","'"${FILE}"'_hping2syn-s20p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","20","53","'"${FILE}"'_hping2syn-s20p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","20","53","'"${FILE}"'_hping2syn-s20p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","20","53","'"${FILE}"'_hping2syn-s20p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","20","53","'"${FILE}"'_hping2syn-s20p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p53.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","20","53","'"${FILE}"'_hping2syn-s20p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","20","53","'"${FILE}"'_hping2syn-s20p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p53.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p53.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p53.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p53.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 13) hping2 (syn src:20, dst:80) [${FILE}_hping2syn-s20p80.txt]
#######################################################################
echo "13) hping2 (syn src:20, dst:80) [${FILE}_hping2syn-s20p80.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p80.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p80.txt
echo "Result File Name = "${FILE}"_hping2syn-s20p80.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p80.txt		# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p80.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p80.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p80.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p80.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p80.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p80.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","20","80","'"${FILE}"'_hping2syn-s20p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","20","80","'"${FILE}"'_hping2syn-s20p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","20","80","'"${FILE}"'_hping2syn-s20p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","20","80","'"${FILE}"'_hping2syn-s20p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","20","80","'"${FILE}"'_hping2syn-s20p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","20","80","'"${FILE}"'_hping2syn-s20p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p80.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","20","80","'"${FILE}"'_hping2syn-s20p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","20","80","'"${FILE}"'_hping2syn-s20p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p80.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p80.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p80.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p80.txt
echo ""
sleep 0.2
x=0

##############################################################################
### 14) hping2 (syn src:20, dst:110) [${FILE}_hping2syn-s20p110.txt]
##############################################################################
echo "14) hping2 (syn src:20, dst:110) [${FILE}_hping2syn-s20p110.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p110.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p110.txt
echo "Result File Name = "${FILE}"_hping2syn-s20p110.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p110.txt		# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p110.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p110.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p110.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p110.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p110.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p110.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","20","110","'"${FILE}"'_hping2syn-s20p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","20","110","'"${FILE}"'_hping2syn-s20p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","20","110","'"${FILE}"'_hping2syn-s20p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","20","110","'"${FILE}"'_hping2syn-s20p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","20","110","'"${FILE}"'_hping2syn-s20p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","20","110","'"${FILE}"'_hping2syn-s20p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p110.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","20","110","'"${FILE}"'_hping2syn-s20p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","20","110","'"${FILE}"'_hping2syn-s20p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p110.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p110.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p110.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p110.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 15) hping2 (syn src:20, dst:443) [${FILE}_hping2syn-s20p443.txt]
#######################################################################
echo "15) hping2 (syn src:20, dst:443) [${FILE}_hping2syn-s20p443.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p443.txt																# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p443.txt
echo "Result File Name = "${FILE}"_hping2syn-s20p443.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p443.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p443.txt							# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p443.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p443.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p443.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p443.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p443.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","20","443","'"${FILE}"'_hping2syn-s20p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","20","443","'"${FILE}"'_hping2syn-s20p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","20","443","'"${FILE}"'_hping2syn-s20p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","20","443","'"${FILE}"'_hping2syn-s20p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","20","443","'"${FILE}"'_hping2syn-s20p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","20","443","'"${FILE}"'_hping2syn-s20p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p443.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","20","443","'"${FILE}"'_hping2syn-s20p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","20","443","'"${FILE}"'_hping2syn-s20p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p443.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p443.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p443.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p443.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 16) hping2 (syn src:20, dst:35353) [${FILE}_hping2syn-s20p35353.txt]
#######################################################################
echo "16) hping2 (syn src:20, dst:35353) [${FILE}_hping2syn-s20p35353.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p35353.txt																# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p35353.txt
echo "Result File Name = "${FILE}"_hping2syn-s20p35353.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p35353.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p35353.txt							# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p35353.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p35353.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p35353.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p35353.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p35353.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","20","35353","'"${FILE}"'_hping2syn-s20p35353.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","20","35353","'"${FILE}"'_hping2syn-s20p35353.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","20","35353","'"${FILE}"'_hping2syn-s20p35353.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","20","35353","'"${FILE}"'_hping2syn-s20p35353.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","20","35353","'"${FILE}"'_hping2syn-s20p35353.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","20","35353","'"${FILE}"'_hping2syn-s20p35353.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p35353.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","20","35353","'"${FILE}"'_hping2syn-s20p35353.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","20","35353","'"${FILE}"'_hping2syn-s20p35353.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s20p35353.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p35353.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p35353.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s20p35353.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 17) hping2 (syn src:25, dst:0) [${FILE}_hping2syn-s25.txt]
#######################################################################
echo "17) hping2 (syn src:25, dst:0) [${FILE}_hping2syn-s25.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25.txt
echo "Result File Name = "${FILE}"_hping2syn-s25.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a  ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s25.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s25.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","25","0","'"${FILE}"'_hping2syn-s25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","25","0","'"${FILE}"'_hping2syn-s25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","25","0","'"${FILE}"'_hping2syn-s25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","25","0","'"${FILE}"'_hping2syn-s25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","25","0","'"${FILE}"'_hping2syn-s25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","25","0","'"${FILE}"'_hping2syn-s25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s25.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","25","0","'"${FILE}"'_hping2syn-s25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","25","0","'"${FILE}"'_hping2syn-s25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s25.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25.txt
echo ""
sleep 0.2
x=0

###############################################################################
### 18) hping2 (syn src:25, dst:21) [${FILE}_hping2syn-s25p21.txt]
###############################################################################
echo "18) hping2 (syn src:25, dst:21) [${FILE}_hping2syn-s25p21.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p21.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p21.txt
echo "Result File Name = "${FILE}"_hping2syn-s25p21.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p21.txt		# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p21.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p21.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a  ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p21.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p21.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p21.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p21.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","25","21","'"${FILE}"'_hping2syn-s25p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","25","21","'"${FILE}"'_hping2syn-s25p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","25","21","'"${FILE}"'_hping2syn-s25p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","25","21","'"${FILE}"'_hping2syn-s25p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","25","21","'"${FILE}"'_hping2syn-s25p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","25","21","'"${FILE}"'_hping2syn-s25p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p21.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","25","21","'"${FILE}"'_hping2syn-s25p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","25","21","'"${FILE}"'_hping2syn-s25p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p21.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p21.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p21.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p21.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 19) hping2 (syn src:25, dst:25) [${FILE}_hping2syn-s25p25.txt]
#######################################################################
echo "19) hping2 (syn src:25, dst:25) [${FILE}_hping2syn-s25p25.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p25.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p25.txt
echo "Result File Name = "${FILE}"_hping2syn-s25p25.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p25.txt		# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p25.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p25.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a  ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p25.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p25.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p25.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p25.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","25","25","'"${FILE}"'_hping2syn-s25p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","25","25","'"${FILE}"'_hping2syn-s25p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","25","25","'"${FILE}"'_hping2syn-s25p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","25","25","'"${FILE}"'_hping2syn-s25p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","25","25","'"${FILE}"'_hping2syn-s25p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","25","25","'"${FILE}"'_hping2syn-s25p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p25.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","25","25","'"${FILE}"'_hping2syn-s25p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","25","25","'"${FILE}"'_hping2syn-s25p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p25.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p25.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p25.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p25.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 20) hping2 (syn src:25, dst:53) [${FILE}_hping2syn-s25p53.txt]
#######################################################################
echo "20) hping2 (syn src:25, dst:53) [${FILE}_hping2syn-s25p53.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p53.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p53.txt
echo "Result File Name = "${FILE}"_hping2syn-s25p53.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p53.txt		# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p53.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p53.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p53.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p53.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p53.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p53.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","25","53","'"${FILE}"'_hping2syn-s25p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","25","53","'"${FILE}"'_hping2syn-s25p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","25","53","'"${FILE}"'_hping2syn-s25p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","25","53","'"${FILE}"'_hping2syn-s25p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","25","53","'"${FILE}"'_hping2syn-s25p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","25","53","'"${FILE}"'_hping2syn-s25p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p53.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","25","53","'"${FILE}"'_hping2syn-s25p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","25","53","'"${FILE}"'_hping2syn-s25p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p53.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p53.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p53.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p53.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 21) hping2 (syn src:25, dst:80) [${FILE}_hping2syn-s25p80.txt]
#######################################################################
echo "21) hping2 (syn src:25, dst:80) [${FILE}_hping2syn-s25p80.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p80.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p80.txt
echo "Result File Name = "${FILE}"_hping2syn-s25p80.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p80.txt		# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p80.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p80.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p80.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p80.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p80.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p80.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","25","80","'"${FILE}"'_hping2syn-s25p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","25","80","'"${FILE}"'_hping2syn-s25p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","25","80","'"${FILE}"'_hping2syn-s25p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","25","80","'"${FILE}"'_hping2syn-s25p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","25","80","'"${FILE}"'_hping2syn-s25p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","25","80","'"${FILE}"'_hping2syn-s25p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p80.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","25","80","'"${FILE}"'_hping2syn-s25p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","25","80","'"${FILE}"'_hping2syn-s25p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p80.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p80.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p80.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p80.txt
echo ""
sleep 0.2
x=0

################################################################################
### 22) hping2 (syn src:25, dst:110) [${FILE}_hping2syn-s25p110.txt]
################################################################################
echo "22) hping2 (syn src:25, dst:110) [${FILE}_hping2syn-s25p110.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p110.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p110.txt
echo "Result File Name = "${FILE}"_hping2syn-s25p110.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p110.txt		# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p110.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p110.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p110.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p110.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p110.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p110.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","25","110","'"${FILE}"'_hping2syn-s25p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","25","110","'"${FILE}"'_hping2syn-s25p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","25","110","'"${FILE}"'_hping2syn-s25p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","25","110","'"${FILE}"'_hping2syn-s25p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","25","110","'"${FILE}"'_hping2syn-s25p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","25","110","'"${FILE}"'_hping2syn-s25p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p110.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","25","110","'"${FILE}"'_hping2syn-s25p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","25","110","'"${FILE}"'_hping2syn-s25p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p110.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p110.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p110.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p110.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 23) hping2 (syn src:25, dst:443) [${FILE}_hping2syn-s25p443.txt]
#######################################################################
echo "23) hping2 (syn src:25, dst:443) [${FILE}_hping2syn-s25p443.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p443.txt																# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p443.txt
echo "Result File Name = "${FILE}"_hping2syn-s25p443.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p443.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p443.txt							# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p443.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p443.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p443.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p443.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p443.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","25","443","'"${FILE}"'_hping2syn-s25p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","25","443","'"${FILE}"'_hping2syn-s25p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","25","443","'"${FILE}"'_hping2syn-s25p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","25","443","'"${FILE}"'_hping2syn-s25p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","25","443","'"${FILE}"'_hping2syn-s25p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","25","443","'"${FILE}"'_hping2syn-s25p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p443.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","25","443","'"${FILE}"'_hping2syn-s25p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","25","443","'"${FILE}"'_hping2syn-s25p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s25p443.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p443.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p443.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s25p443.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 24) hping2 (syn src:53, dst:0) [${FILE}_hping2syn-s53.txt]
#######################################################################
echo "24) hping2 (syn src:53, dst:0) [${FILE}_hping2syn-s53.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53.txt
echo "Result File Name = "${FILE}"_hping2syn-s53.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s53.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s53.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","53","0","'"${FILE}"'_hping2syn-s53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","53","0","'"${FILE}"'_hping2syn-s53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","53","0","'"${FILE}"'_hping2syn-s53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","53","0","'"${FILE}"'_hping2syn-s53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","53","0","'"${FILE}"'_hping2syn-s53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","53","0","'"${FILE}"'_hping2syn-s53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s53.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","53","0","'"${FILE}"'_hping2syn-s53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","53","0","'"${FILE}"'_hping2syn-s53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s53.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53.txt
echo ""
sleep 0.2
x=0

##############################################################################
### 25) hping2 (syn src:53, dst:21) [${FILE}_hping2syn-s53p21.txt]
##############################################################################
echo "25) hping2 (syn src:53, dst:21) [${FILE}_hping2syn-s53p21.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p21.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p21.txt
echo "Result File Name = "${FILE}"_hping2syn-s53p21.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p21.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p21.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p21.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p21.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p21.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p21.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p21.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","53","21","'"${FILE}"'_hping2syn-s53p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","53","21","'"${FILE}"'_hping2syn-s53p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","53","21","'"${FILE}"'_hping2syn-s53p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","53","21","'"${FILE}"'_hping2syn-s53p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","53","21","'"${FILE}"'_hping2syn-s53p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","53","21","'"${FILE}"'_hping2syn-s53p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p21.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","53","21","'"${FILE}"'_hping2syn-s53p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","53","21","'"${FILE}"'_hping2syn-s53p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p21.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p21.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p21.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p21.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 26) hping2 (syn src:53, dst:25) [${FILE}_hping2syn-s53p25.txt]
#######################################################################
echo "26) hping2 (syn src:53, dst:25) [${FILE}_hping2syn-s53p25.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p25.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p25.txt
echo "Result File Name = "${FILE}"_hping2syn-s53p25.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p25.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p25.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p25.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p25.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p25.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p25.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p25.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","53","25","'"${FILE}"'_hping2syn-s53p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","53","25","'"${FILE}"'_hping2syn-s53p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","53","25","'"${FILE}"'_hping2syn-s53p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","53","25","'"${FILE}"'_hping2syn-s53p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","53","25","'"${FILE}"'_hping2syn-s53p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","53","25","'"${FILE}"'_hping2syn-s53p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p25.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","53","25","'"${FILE}"'_hping2syn-s53p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","53","25","'"${FILE}"'_hping2syn-s53p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p25.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p25.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p25.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p25.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 27) hping2 (syn src:53, dst:53) [${FILE}_hping2syn-s53p53.txt]
#######################################################################
echo "27) hping2 (syn src:53, dst:53) [${FILE}_hping2syn-s53p53.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p53.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p53.txt
echo "Result File Name = "${FILE}"_hping2syn-s53p53.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p53.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p53.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p53.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p53.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p53.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p53.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p53.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","53","53","'"${FILE}"'_hping2syn-s53p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","53","53","'"${FILE}"'_hping2syn-s53p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","53","53","'"${FILE}"'_hping2syn-s53p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","53","53","'"${FILE}"'_hping2syn-s53p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","53","53","'"${FILE}"'_hping2syn-s53p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","53","53","'"${FILE}"'_hping2syn-s53p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p53.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","53","53","'"${FILE}"'_hping2syn-s53p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","53","53","'"${FILE}"'_hping2syn-s53p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p53.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p53.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p53.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p53.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 28) hping2 (syn src:53, dst:80) [${FILE}_hping2syn-s53p80.txt]
#######################################################################
echo "28) hping2 (syn src:53, dst:80) [${FILE}_hping2syn-s53p80.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p80.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p80.txt
echo "Result File Name = "${FILE}"_hping2syn-s53p80.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p80.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p80.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p80.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p80.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p80.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p80.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p80.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","53","80","'"${FILE}"'_hping2syn-s53p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","53","80","'"${FILE}"'_hping2syn-s53p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","53","80","'"${FILE}"'_hping2syn-s53p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","53","80","'"${FILE}"'_hping2syn-s53p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","53","80","'"${FILE}"'_hping2syn-s53p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","53","80","'"${FILE}"'_hping2syn-s53p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p80.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","53","80","'"${FILE}"'_hping2syn-s53p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","53","80","'"${FILE}"'_hping2syn-s53p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p80.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p80.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p80.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p80.txt
echo ""
sleep 0.2
x=0

################################################################################
### 29) hping2 (syn src:53, dst:110) [${FILE}_hping2syn-s53p110.txt]
################################################################################
echo "29) hping2 (syn src:53, dst:110) [${FILE}_hping2syn-s53p110.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p110.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p110.txt
echo "Result File Name = "${FILE}"_hping2syn-s53p110.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p110.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p110.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p110.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p110.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p110.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p110.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p110.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","53","110","'"${FILE}"'_hping2syn-s53p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","53","110","'"${FILE}"'_hping2syn-s53p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","53","110","'"${FILE}"'_hping2syn-s53p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","53","110","'"${FILE}"'_hping2syn-s53p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","53","110","'"${FILE}"'_hping2syn-s53p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","53","110","'"${FILE}"'_hping2syn-s53p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p110.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","53","110","'"${FILE}"'_hping2syn-s53p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","53","110","'"${FILE}"'_hping2syn-s53p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p110.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p110.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p110.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p110.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 30) hping2 (syn src:53, dst:443) [${FILE}_hping2syn-s53p443.txt]
#######################################################################
echo "30) hping2 (syn src:53, dst:443) [${FILE}_hping2syn-s53p443.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p443.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p443.txt
echo "Result File Name = "${FILE}"_hping2syn-s53p443.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p443.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p443.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p443.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p443.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p443.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p443.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p443.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","53","443","'"${FILE}"'_hping2syn-s53p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","53","443","'"${FILE}"'_hping2syn-s53p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","53","443","'"${FILE}"'_hping2syn-s53p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","53","443","'"${FILE}"'_hping2syn-s53p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","53","443","'"${FILE}"'_hping2syn-s53p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","53","443","'"${FILE}"'_hping2syn-s53p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p443.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","53","443","'"${FILE}"'_hping2syn-s53p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","53","443","'"${FILE}"'_hping2syn-s53p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s53p443.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p443.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p443.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s53p443.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 31) hping2 (syn src:80, dst:0) [${FILE}_hping2syn-s80.txt]
#######################################################################
echo "31) hping2 (syn src:80, dst:0) [${FILE}_hping2syn-s80.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80.txt
echo "Result File Name = "${FILE}"_hping2syn-s80.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s80.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s80.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","80","0","'"${FILE}"'_hping2syn-s80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","80","0","'"${FILE}"'_hping2syn-s80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","80","0","'"${FILE}"'_hping2syn-s80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","80","0","'"${FILE}"'_hping2syn-s80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","80","0","'"${FILE}"'_hping2syn-s80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","80","0","'"${FILE}"'_hping2syn-s80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s80.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","80","0","'"${FILE}"'_hping2syn-s80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","80","0","'"${FILE}"'_hping2syn-s80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s80.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80.txt
echo ""
sleep 0.2
x=0

##############################################################################
### 32) hping2 (syn src:80, dst:21) [${FILE}_hping2syn-s80p21.txt]
##############################################################################
echo "32) hping2 (syn src:80, dst:21) [${FILE}_hping2syn-s80p21.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p21.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p21.txt
echo "Result File Name = "${FILE}"_hping2syn-s80p21.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p21.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p21.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p21.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p21.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p21.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p21.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p21.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","80","21","'"${FILE}"'_hping2syn-s80p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","80","21","'"${FILE}"'_hping2syn-s80p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","80","21","'"${FILE}"'_hping2syn-s80p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","80","21","'"${FILE}"'_hping2syn-s80p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","80","21","'"${FILE}"'_hping2syn-s80p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","80","21","'"${FILE}"'_hping2syn-s80p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p21.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","80","21","'"${FILE}"'_hping2syn-s80p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","80","21","'"${FILE}"'_hping2syn-s80p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p21.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p21.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p21.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p21.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 33) hping2 (syn src:80, dst:25) [${FILE}_hping2syn-s80p25.txt]
#######################################################################
echo "33) hping2 (syn src:80, dst:25) [${FILE}_hping2syn-s80p25.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p25.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p25.txt
echo "Result File Name = "${FILE}"_hping2syn-s80p25.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p25.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p25.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p25.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p25.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p25.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p25.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p25.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","80","25","'"${FILE}"'_hping2syn-s80p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","80","25","'"${FILE}"'_hping2syn-s80p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","80","25","'"${FILE}"'_hping2syn-s80p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","80","25","'"${FILE}"'_hping2syn-s80p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","80","25","'"${FILE}"'_hping2syn-s80p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","80","25","'"${FILE}"'_hping2syn-s80p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p25.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","80","25","'"${FILE}"'_hping2syn-s80p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","80","25","'"${FILE}"'_hping2syn-s80p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p25.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p25.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p25.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p25.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 34) hping2 (syn src:80, dst:53) [${FILE}_hping2syn-s80p53.txt]
#######################################################################
echo "34) hping2 (syn src:80, dst:53) [${FILE}_hping2syn-s80p53.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p53.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p53.txt
echo "Result File Name = "${FILE}"_hping2syn-s80p53.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p53.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p53.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p53.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p53.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p53.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p53.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p53.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","80","53","'"${FILE}"'_hping2syn-s80p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","80","53","'"${FILE}"'_hping2syn-s80p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","80","53","'"${FILE}"'_hping2syn-s80p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","80","53","'"${FILE}"'_hping2syn-s80p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","80","53","'"${FILE}"'_hping2syn-s80p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","80","53","'"${FILE}"'_hping2syn-s80p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p53.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","80","53","'"${FILE}"'_hping2syn-s80p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","80","53","'"${FILE}"'_hping2syn-s80p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p53.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p53.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p53.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p53.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 35) hping2 (syn src:80, dst:80) [${FILE}_hping2syn-s80p80.txt]
#######################################################################
echo "35) hping2 (syn src:80, dst:80) [${FILE}_hping2syn-s80p80.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p80.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p80.txt
echo "Result File Name = "${FILE}"_hping2syn-s80p80.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p80.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p80.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p80.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p80.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p80.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p80.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p80.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","80","80","'"${FILE}"'_hping2syn-s80p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","80","80","'"${FILE}"'_hping2syn-s80p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","80","80","'"${FILE}"'_hping2syn-s80p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","80","80","'"${FILE}"'_hping2syn-s80p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","80","80","'"${FILE}"'_hping2syn-s80p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","80","80","'"${FILE}"'_hping2syn-s80p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p80.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","80","80","'"${FILE}"'_hping2syn-s80p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","80","80","'"${FILE}"'_hping2syn-s80p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p80.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p80.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p80.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p80.txt
echo ""
sleep 0.2
x=0

################################################################################
### 36) hping2 (syn src:80, dst:110) [${FILE}_hping2syn-s80p110.txt]
################################################################################
echo "36) hping2 (syn src:80, dst:110) [${FILE}_hping2syn-s80p110.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p110.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p110.txt
echo "Result File Name = "${FILE}"_hping2syn-s80p110.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p110.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p110.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p110.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p110.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p110.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p110.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p110.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","80","110","'"${FILE}"'_hping2syn-s80p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","80","110","'"${FILE}"'_hping2syn-s80p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","80","110","'"${FILE}"'_hping2syn-s80p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","80","110","'"${FILE}"'_hping2syn-s80p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","80","110","'"${FILE}"'_hping2syn-s80p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","80","110","'"${FILE}"'_hping2syn-s80p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p110.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","80","110","'"${FILE}"'_hping2syn-s80p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","80","110","'"${FILE}"'_hping2syn-s80p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p110.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p110.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p110.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p110.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 37) hping2 (syn src:80, dst:443) [${FILE}_hping2syn-s80p443.txt]
#######################################################################
echo "37) hping2 (syn src:80, dst:443) [${FILE}_hping2syn-s80p443.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p443.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p443.txt
echo "Result File Name = "${FILE}"_hping2syn-s80p443.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p443.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p443.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p443.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p443.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p443.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p443.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p443.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","80","443","'"${FILE}"'_hping2syn-s80p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","80","443","'"${FILE}"'_hping2syn-s80p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","80","443","'"${FILE}"'_hping2syn-s80p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","80","443","'"${FILE}"'_hping2syn-s80p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","80","443","'"${FILE}"'_hping2syn-s80p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","80","443","'"${FILE}"'_hping2syn-s80p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p443.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","80","443","'"${FILE}"'_hping2syn-s80p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","80","443","'"${FILE}"'_hping2syn-s80p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s80p443.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p443.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p443.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s80p443.txt
echo ""
sleep 0.2
x=0


#######################################################################
### 38) hping2 (syn src:443, dst:0) [${FILE}_hping2syn-s443.txt]
#######################################################################
echo "38) hping2 (syn src:443, dst:0) [${FILE}_hping2syn-s443.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443.txt
echo "Result File Name = "${FILE}"_hping2syn-s443.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s443.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s443.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","443","0","'"${FILE}"'_hping2syn-s443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","443","0","'"${FILE}"'_hping2syn-s443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","443","0","'"${FILE}"'_hping2syn-s443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","443","0","'"${FILE}"'_hping2syn-s443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","443","0","'"${FILE}"'_hping2syn-s443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","443","0","'"${FILE}"'_hping2syn-s443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s443.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","443","0","'"${FILE}"'_hping2syn-s443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","443","0","'"${FILE}"'_hping2syn-s443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s443.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443.txt
echo ""
sleep 0.2
x=0

################################################################################
### 39) hping2 (syn src:443, dst:21) [${FILE}_hping2syn-s443p21.txt]
################################################################################
echo "39) hping2 (syn src:443, dst:21) [${FILE}_hping2syn-s443p21.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p21.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p21.txt
echo "Result File Name = "${FILE}"_hping2syn-s443p21.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p21.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p21.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p21.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p21.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p21.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p21.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p21.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","443","21","'"${FILE}"'_hping2syn-s443p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","443","21","'"${FILE}"'_hping2syn-s443p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","443","21","'"${FILE}"'_hping2syn-s443p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","443","21","'"${FILE}"'_hping2syn-s443p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","443","21","'"${FILE}"'_hping2syn-s443p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","443","21","'"${FILE}"'_hping2syn-s443p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p21.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","443","21","'"${FILE}"'_hping2syn-s443p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","443","21","'"${FILE}"'_hping2syn-s443p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p21.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p21.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p21.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p21.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 40) hping2 (syn src:443, dst:25) [${FILE}_hping2syn-s443p25.txt]
#######################################################################
echo "40) hping2 (syn src:443, dst:25) [${FILE}_hping2syn-s443p25.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p25.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p25.txt
echo "Result File Name = "${FILE}"_hping2syn-s443p25.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p25.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p25.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p25.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p25.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p25.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p25.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p25.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","443","25","'"${FILE}"'_hping2syn-s443p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","443","25","'"${FILE}"'_hping2syn-s443p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","443","25","'"${FILE}"'_hping2syn-s443p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","443","25","'"${FILE}"'_hping2syn-s443p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","443","25","'"${FILE}"'_hping2syn-s443p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","443","25","'"${FILE}"'_hping2syn-s443p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p25.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","443","25","'"${FILE}"'_hping2syn-s443p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","443","25","'"${FILE}"'_hping2syn-s443p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p25.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p25.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p25.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p25.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 41) hping2 (syn src:443, dst:53) [${FILE}_hping2syn-s443p53.txt]
#######################################################################
echo "41) hping2 (syn src:443, dst:53) [${FILE}_hping2syn-s443p53.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p53.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p53.txt
echo "Result File Name = "${FILE}"_hping2syn-s443p53.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p53.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p53.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p53.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p53.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p53.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p53.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p53.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","443","53","'"${FILE}"'_hping2syn-s443p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","443","53","'"${FILE}"'_hping2syn-s443p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","443","53","'"${FILE}"'_hping2syn-s443p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","443","53","'"${FILE}"'_hping2syn-s443p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","443","53","'"${FILE}"'_hping2syn-s443p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","443","53","'"${FILE}"'_hping2syn-s443p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p53.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","443","53","'"${FILE}"'_hping2syn-s443p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","443","53","'"${FILE}"'_hping2syn-s443p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p53.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p53.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p53.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p53.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 42) hping2 (syn src:443, dst:80) [${FILE}_hping2syn-s443p80.txt]
#######################################################################
echo "42) hping2 (syn src:443, dst:80) [${FILE}_hping2syn-s443p80.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p80.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p80.txt
echo "Result File Name = "${FILE}"_hping2syn-s443p80.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p80.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p80.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p80.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p80.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p80.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p80.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p80.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","443","80","'"${FILE}"'_hping2syn-s443p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","443","80","'"${FILE}"'_hping2syn-s443p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","443","80","'"${FILE}"'_hping2syn-s443p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","443","80","'"${FILE}"'_hping2syn-s443p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","443","80","'"${FILE}"'_hping2syn-s443p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","443","80","'"${FILE}"'_hping2syn-s443p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p80.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","443","80","'"${FILE}"'_hping2syn-s443p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","443","80","'"${FILE}"'_hping2syn-s443p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p80.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p80.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p80.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p80.txt
echo ""
sleep 0.2
x=0

###################################################################################
### 43) hping2 (syn src:443, dst:110) [${FILE}_hping2syn-s443p110.txt]
###################################################################################
echo "43) hping2 (syn src:443, dst:110) [${FILE}_hping2syn-s443p110.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p110.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p110.txt
echo "Result File Name = "${FILE}"_hping2syn-s443p110.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p110.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p110.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p110.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p110.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p110.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p110.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p110.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","443","110","'"${FILE}"'_hping2syn-s443p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","443","110","'"${FILE}"'_hping2syn-s443p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","443","110","'"${FILE}"'_hping2syn-s443p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","443","110","'"${FILE}"'_hping2syn-s443p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","443","110","'"${FILE}"'_hping2syn-s443p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","443","110","'"${FILE}"'_hping2syn-s443p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p110.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","443","110","'"${FILE}"'_hping2syn-s443p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","443","110","'"${FILE}"'_hping2syn-s443p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p110.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p110.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p110.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p110.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 44) hping2 (syn src:443, dst:443) [${FILE}_hping2syn-s443p443.txt]
#######################################################################
echo "44) hping2 (syn src:443, dst:443) [${FILE}_hping2syn-s443p443.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p443.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p443.txt
echo "Result File Name = "${FILE}"_hping2syn-s443p443.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p443.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p443.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p443.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p443.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p443.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p443.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p443.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","RA","443","443","'"${FILE}"'_hping2syn-s443p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Syn","SA","443","443","'"${FILE}"'_hping2syn-s443p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Unreachable(T_10)","443","443","'"${FILE}"'_hping2syn-s443p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=RA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","RA","443","443","'"${FILE}"'_hping2syn-s443p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=SA/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Syn","SA","443","443","'"${FILE}"'_hping2syn-s443p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Unreachable(T_10)","443","443","'"${FILE}"'_hping2syn-s443p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p443.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Syn","ICMP Packet filtered","443","443","'"${FILE}"'_hping2syn-s443p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Syn","ICMP Packet filtered","443","443","'"${FILE}"'_hping2syn-s443p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2syn-s443p443.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p443.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p443.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2syn-s443p443.txt
echo ""
sleep 0.2
x=0

#=========================================================================
### TCP (ACK)
#=========================================================================
#######################################################################
### 45) hping2 (ack src:random, dst:0) [${FILE}_hping2ack.txt]
#######################################################################
echo "45) hping2 (ack src:random, dst:0) [${FILE}_hping2ack.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack.txt													# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack.txt
echo "Result File Name = "${FILE}"_hping2ack.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack.txt				# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","Random","0","'"${FILE}"'_hping2ack.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","Random","0","'"${FILE}"'_hping2ack.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","Random","0","'"${FILE}"'_hping2ack.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","Random","0","'"${FILE}"'_hping2ack.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","Random","0","'"${FILE}"'_hping2ack.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","Random","0","'"${FILE}"'_hping2ack.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack.txt
echo ""
sleep 0.2
x=0

###############################################################################
### 46) hping2 (ack src:random, dst:21) [${FILE}_hping2ack-p21.txt]
###############################################################################
echo "46) hping2 (ack src:random, dst:21) [${FILE}_hping2ack-p21.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-p21.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p21.txt
echo "Result File Name = "${FILE}"_hping2ack-p21.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p21.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p21.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p21.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p21.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p21.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-p21.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-p21.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","Random","21","'"${FILE}"'_hping2ack-p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","Random","21","'"${FILE}"'_hping2ack-p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","Random","21","'"${FILE}"'_hping2ack-p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","Random","21","'"${FILE}"'_hping2ack-p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-p21.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","Random","21","'"${FILE}"'_hping2ack-p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","Random","21","'"${FILE}"'_hping2ack-p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-p21.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p21.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p21.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p21.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 47) hping2 (ack src:random, dst:25) [${FILE}_hping2ack-p25.txt]
#######################################################################
echo "47) hping2 (ack src:random, dst:25) [${FILE}_hping2ack-p25.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-p25.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p25.txt
echo "Result File Name = "${FILE}"_hping2ack-p25.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p25.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p25.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p25.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p25.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p25.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-p25.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-p25.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","Random","25","'"${FILE}"'_hping2ack-p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","Random","25","'"${FILE}"'_hping2ack-p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","Random","25","'"${FILE}"'_hping2ack-p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","Random","25","'"${FILE}"'_hping2ack-p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-p25.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","Random","25","'"${FILE}"'_hping2ack-p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","Random","25","'"${FILE}"'_hping2ack-p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-p25.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p25.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p25.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p25.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 48) hping2 (ack src:random, dst:53) [${FILE}_hping2ack-p53.txt]
#######################################################################
echo "48) hping2 (ack src:random, dst:53) [${FILE}_hping2ack-p53.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-p53.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p53.txt
echo "Result File Name = "${FILE}"_hping2ack-p53.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p53.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p53.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p53.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p53.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p53.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-p53.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-p53.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","Random","53","'"${FILE}"'_hping2ack-p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","Random","53","'"${FILE}"'_hping2ack-p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","Random","53","'"${FILE}"'_hping2ack-p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","Random","53","'"${FILE}"'_hping2ack-p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-p53.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","Random","53","'"${FILE}"'_hping2ack-p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","Random","53","'"${FILE}"'_hping2ack-p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-p53.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p53.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p53.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p53.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 49) hping2 (ack src:random, dst:80) [${FILE}_hping2ack-p80.txt]
#######################################################################
echo "49) hping2 (ack src:random, dst:80) [${FILE}_hping2ack-p80.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-p80.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p80.txt
echo "Result File Name = "${FILE}"_hping2ack-p80.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p80.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p80.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p80.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p80.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p80.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-p80.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-p80.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","Random","80","'"${FILE}"'_hping2ack-p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","Random","80","'"${FILE}"'_hping2ack-p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","Random","80","'"${FILE}"'_hping2ack-p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","Random","80","'"${FILE}"'_hping2ack-p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-p80.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","Random","80","'"${FILE}"'_hping2ack-p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","Random","80","'"${FILE}"'_hping2ack-p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-p80.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p80.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p80.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p80.txt
echo ""
sleep 0.2
x=0

#################################################################################
### 50) hping2 (ack src:random, dst:110) [${FILE}_hping2ack-p110.txt]
#################################################################################
echo "50) hping2 (ack src:random, dst:110) [${FILE}_hping2ack-p110.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-p110.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p110.txt
echo "Result File Name = "${FILE}"_hping2ack-p110.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p110.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p110.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p110.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p110.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p110.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-p110.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-p110.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","Random","110","'"${FILE}"'_hping2ack-p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","Random","110","'"${FILE}"'_hping2ack-p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","Random","110","'"${FILE}"'_hping2ack-p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","Random","110","'"${FILE}"'_hping2ack-p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-p110.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","Random","110","'"${FILE}"'_hping2ack-p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","Random","110","'"${FILE}"'_hping2ack-p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-p110.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p110.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p110.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p110.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 51) hping2 (ack src:random, dst:443) [${FILE}_hping2ack-p443.txt]
#######################################################################
echo "51) hping2 (ack src:random, dst:443) [${FILE}_hping2ack-p443.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-p443.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p443.txt
echo "Result File Name = "${FILE}"_hping2ack-p443.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p443.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p443.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p443.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p443.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p443.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-p443.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-p443.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","Random","443","'"${FILE}"'_hping2ack-p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","Random","443","'"${FILE}"'_hping2ack-p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","Random","443","'"${FILE}"'_hping2ack-p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","Random","443","'"${FILE}"'_hping2ack-p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-p443.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","Random","443","'"${FILE}"'_hping2ack-p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","Random","443","'"${FILE}"'_hping2ack-p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-p443.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p443.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-p443.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-p443.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 52) hping2 (ack src:20, dst:0) [${FILE}_hping2ack-s20.txt]
#######################################################################
echo "52) hping2 (ack src:20, dst:0) [${FILE}_hping2ack-s20.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20.txt
echo "Result File Name = "${FILE}"_hping2ack-s20.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s20.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s20.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","20","0","'"${FILE}"'_hping2ack-s20.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","20","0","'"${FILE}"'_hping2ack-s20.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","20","0","'"${FILE}"'_hping2ack-s20.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","20","0","'"${FILE}"'_hping2ack-s20.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s20.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","20","0","'"${FILE}"'_hping2ack-s20.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","20","0","'"${FILE}"'_hping2ack-s20.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s20.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20.txt
echo ""
sleep 0.2
x=0

##############################################################################
### 53) hping2 (ack src:20, dst:21) [${FILE}_hping2ack-s20p21.txt]
##############################################################################
echo "53) hping2 (ack src:20, dst:21) [${FILE}_hping2ack-s20p21.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p21.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p21.txt
echo "Result File Name = "${FILE}"_hping2ack-s20p21.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p21.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p21.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p21.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p21.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p21.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p21.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p21.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","20","21","'"${FILE}"'_hping2ack-s20p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","20","21","'"${FILE}"'_hping2ack-s20p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","20","21","'"${FILE}"'_hping2ack-s20p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","20","21","'"${FILE}"'_hping2ack-s20p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p21.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","20","21","'"${FILE}"'_hping2ack-s20p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","20","21","'"${FILE}"'_hping2ack-s20p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p21.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p21.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p21.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p21.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 54) hping2 (ack src:20, dst:25) [${FILE}_hping2ack-s20p25.txt]
#######################################################################
echo "54) hping2 (ack src:20, dst:25) [${FILE}_hping2ack-s20p25.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p25.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p25.txt
echo "Result File Name = "${FILE}"_hping2ack-s20p25.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p25.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p25.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p25.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p25.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p25.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p25.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p25.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","20","25","'"${FILE}"'_hping2ack-s20p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","20","25","'"${FILE}"'_hping2ack-s20p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","20","25","'"${FILE}"'_hping2ack-s20p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","20","25","'"${FILE}"'_hping2ack-s20p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p25.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","20","25","'"${FILE}"'_hping2ack-s20p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","20","25","'"${FILE}"'_hping2ack-s20p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p25.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p25.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p25.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p25.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 55) hping2 (ack src:20, dst:53) [${FILE}_hping2ack-s20p53.txt]
#######################################################################
echo "55) hping2 (ack src:20, dst:53) [${FILE}_hping2ack-s20p53.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p53.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p53.txt
echo "Result File Name = "${FILE}"_hping2ack-s20p53.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p53.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p53.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p53.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p53.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p53.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p53.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p53.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","20","53","'"${FILE}"'_hping2ack-s20p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","20","53","'"${FILE}"'_hping2ack-s20p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","20","53","'"${FILE}"'_hping2ack-s20p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","20","53","'"${FILE}"'_hping2ack-s20p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p53.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","20","53","'"${FILE}"'_hping2ack-s20p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","20","53","'"${FILE}"'_hping2ack-s20p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p53.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p53.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p53.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p53.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 56) hping2 (ack src:20, dst:80) [${FILE}_hping2ack-s20p80.txt]
#######################################################################
echo "56) hping2 (ack src:20, dst:80) [${FILE}_hping2ack-s20p80.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p80.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p80.txt
echo "Result File Name = "${FILE}"_hping2ack-s20p80.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p80.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p80.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p80.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p80.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p80.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p80.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p80.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","20","80","'"${FILE}"'_hping2ack-s20p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","20","80","'"${FILE}"'_hping2ack-s20p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","20","80","'"${FILE}"'_hping2ack-s20p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","20","80","'"${FILE}"'_hping2ack-s20p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p80.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","20","80","'"${FILE}"'_hping2ack-s20p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","20","80","'"${FILE}"'_hping2ack-s20p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p80.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p80.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p80.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p80.txt
echo ""
sleep 0.2
x=0

################################################################################
### 57) hping2 (ack src:20, dst:110) [${FILE}_hping2ack-s20p110.txt]
################################################################################
echo "57) hping2 (ack src:20, dst:110) [${FILE}_hping2ack-s20p110.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p110.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p110.txt
echo "Result File Name = "${FILE}"_hping2ack-s20p110.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p110.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p110.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p110.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p110.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p110.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p110.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p110.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","20","110","'"${FILE}"'_hping2ack-s20p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","20","110","'"${FILE}"'_hping2ack-s20p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","20","110","'"${FILE}"'_hping2ack-s20p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","20","110","'"${FILE}"'_hping2ack-s20p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p110.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","20","110","'"${FILE}"'_hping2ack-s20p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","20","110","'"${FILE}"'_hping2ack-s20p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p110.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p110.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p110.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p110.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 58) hping2 (ack src:20, dst:443) [${FILE}_hping2ack-s20p443.txt]
#######################################################################
echo "58) hping2 (ack src:20, dst:443) [${FILE}_hping2ack-s20p443.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p443.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p443.txt
echo "Result File Name = "${FILE}"_hping2ack-s20p443.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p443.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p443.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p443.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p443.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p443.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p443.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p443.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","20","443","'"${FILE}"'_hping2ack-s20p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","20","443","'"${FILE}"'_hping2ack-s20p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","20","443","'"${FILE}"'_hping2ack-s20p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","20","443","'"${FILE}"'_hping2ack-s20p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p443.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","20","443","'"${FILE}"'_hping2ack-s20p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","20","443","'"${FILE}"'_hping2ack-s20p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p443.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p443.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p443.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p443.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 59) hping2 (ack src:20, dst:35353) [${FILE}_hping2ack-s20p35353.txt]
#######################################################################
echo "59) hping2 (ack src:20, dst:35353) [${FILE}_hping2ack-s20p35353.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p35353.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p35353.txt
echo "Result File Name = "${FILE}"_hping2ack-s20p35353.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p35353.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p35353.txt							# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p35353.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p35353.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p35353.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p35353.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p35353.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","20","35353","'"${FILE}"'_hping2ack-s20p35353.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","20","35353","'"${FILE}"'_hping2ack-s20p35353.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","20","35353","'"${FILE}"'_hping2ack-s20p35353.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","20","35353","'"${FILE}"'_hping2ack-s20p35353.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p35353.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","20","35353","'"${FILE}"'_hping2ack-s20p35353.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","20","35353","'"${FILE}"'_hping2ack-s20p35353.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s20p35353.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p35353.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p35353.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s20p35353.txt
echo ""
sleep 0.2
x=0


#######################################################################
### 60) hping2 (ack src:25, dst:0) [${FILE}_hping2ack-s25.txt]
#######################################################################
echo "60) hping2 (ack src:25, dst:0) [${FILE}_hping2ack-s25.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25.txt
echo "Result File Name = "${FILE}"_hping2ack-s25.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s25.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s25.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","25","0","'"${FILE}"'_hping2ack-s25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","25","0","'"${FILE}"'_hping2ack-s25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","25","0","'"${FILE}"'_hping2ack-s25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","25","0","'"${FILE}"'_hping2ack-s25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s25.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","25","0","'"${FILE}"'_hping2ack-s25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","25","0","'"${FILE}"'_hping2ack-s25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s25.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25.txt
echo ""
sleep 0.2
x=0

##############################################################################
### 61) hping2 (ack src:25, dst:21) [${FILE}_hping2ack-s25p21.txt]
##############################################################################
echo "61) hping2 (ack src:25, dst:21) [${FILE}_hping2ack-s25p21.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p21.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p21.txt
echo "Result File Name = "${FILE}"_hping2ack-s25p21.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p21.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p21.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p21.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p21.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p21.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p21.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p21.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","25","21","'"${FILE}"'_hping2ack-s25p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","25","21","'"${FILE}"'_hping2ack-s25p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","25","21","'"${FILE}"'_hping2ack-s25p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","25","21","'"${FILE}"'_hping2ack-s25p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p21.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","25","21","'"${FILE}"'_hping2ack-s25p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","25","21","'"${FILE}"'_hping2ack-s25p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p21.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p21.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p21.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p21.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 62) hping2 (ack src:25, dst:25) [${FILE}_hping2ack-s25p25.txt]
#######################################################################
echo "62) hping2 (ack src:25, dst:25) [${FILE}_hping2ack-s25p25.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p25.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p25.txt
echo "Result File Name = "${FILE}"_hping2ack-s25p25.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p25.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p25.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p25.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p25.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p25.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p25.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p25.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","25","25","'"${FILE}"'_hping2ack-s25p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","25","25","'"${FILE}"'_hping2ack-s25p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","25","25","'"${FILE}"'_hping2ack-s25p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","25","25","'"${FILE}"'_hping2ack-s25p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p25.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","25","25","'"${FILE}"'_hping2ack-s25p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","25","25","'"${FILE}"'_hping2ack-s25p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p25.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p25.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p25.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p25.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 63) hping2 (ack src:25, dst:53) [${FILE}_hping2ack-s25p53.txt]
#######################################################################
echo "63) hping2 (ack src:25, dst:53) [${FILE}_hping2ack-s25p53.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p53.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p53.txt
echo "Result File Name = "${FILE}"_hping2ack-s25p53.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p53.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p53.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p53.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p53.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p53.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p53.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p53.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","25","53","'"${FILE}"'_hping2ack-s25p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","25","53","'"${FILE}"'_hping2ack-s25p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","25","53","'"${FILE}"'_hping2ack-s25p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","25","53","'"${FILE}"'_hping2ack-s25p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p53.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","25","53","'"${FILE}"'_hping2ack-s25p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","25","53","'"${FILE}"'_hping2ack-s25p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p53.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p53.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p53.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p53.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 64) hping2 (ack src:25, dst:80) [${FILE}_hping2ack-s25p80.txt]
#######################################################################
echo "64) hping2 (ack src:25, dst:80) [${FILE}_hping2ack-s25p80.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p80.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p80.txt
echo "Result File Name = "${FILE}"_hping2ack-s25p80.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p80.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p80.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p80.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p80.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p80.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p80.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p80.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","25","80","'"${FILE}"'_hping2ack-s25p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","25","80","'"${FILE}"'_hping2ack-s25p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","25","80","'"${FILE}"'_hping2ack-s25p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","25","80","'"${FILE}"'_hping2ack-s25p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p80.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","25","80","'"${FILE}"'_hping2ack-s25p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","25","80","'"${FILE}"'_hping2ack-s25p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p80.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p80.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p80.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p80.txt
echo ""
sleep 0.2
x=0

################################################################################
### 65) hping2 (ack src:25, dst:110) [${FILE}_hping2ack-s25p110.txt]
################################################################################
echo "65) hping2 (ack src:25, dst:110) [${FILE}_hping2ack-s25p110.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p110.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p110.txt
echo "Result File Name = "${FILE}"_hping2ack-s25p110.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p110.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p110.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p110.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p110.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p110.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p110.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p110.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","25","110","'"${FILE}"'_hping2ack-s25p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","25","110","'"${FILE}"'_hping2ack-s25p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","25","110","'"${FILE}"'_hping2ack-s25p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","25","110","'"${FILE}"'_hping2ack-s25p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p110.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","25","110","'"${FILE}"'_hping2ack-s25p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","25","110","'"${FILE}"'_hping2ack-s25p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p110.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p110.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p110.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p110.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 66) hping2 (ack src:25, dst:443) [${FILE}_hping2ack-s25p443.txt]
#######################################################################
echo "66) hping2 (ack src:25, dst:443) [${FILE}_hping2ack-s25p443.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p443.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p443.txt
echo "Result File Name = "${FILE}"_hping2ack-s25p443.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p443.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p443.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p443.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p443.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p443.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p443.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p443.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","25","443","'"${FILE}"'_hping2ack-s25p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","25","443","'"${FILE}"'_hping2ack-s25p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","25","443","'"${FILE}"'_hping2ack-s25p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","25","443","'"${FILE}"'_hping2ack-s25p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p443.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","25","443","'"${FILE}"'_hping2ack-s25p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","25","443","'"${FILE}"'_hping2ack-s25p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s25p443.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p443.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p443.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s25p443.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 67) hping2 (ack src:53, dst:0) [${FILE}_hping2ack-s53.txt]
#######################################################################
echo "67) hping2 (ack src:53, dst:0) [${FILE}_hping2ack-s53.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53.txt
echo "Result File Name = "${FILE}"_hping2ack-s53.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s53.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s53.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","53","0","'"${FILE}"'_hping2ack-s53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","53","0","'"${FILE}"'_hping2ack-s53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","53","0","'"${FILE}"'_hping2ack-s53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","53","0","'"${FILE}"'_hping2ack-s53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s53.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","53","0","'"${FILE}"'_hping2ack-s53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","53","0","'"${FILE}"'_hping2ack-s53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s53.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53.txt
echo ""
sleep 0.2
x=0

##############################################################################
### 68) hping2 (ack src:53, dst:21) [${FILE}_hping2ack-s53p21.txt]
##############################################################################
echo "68) hping2 (ack src:53, dst:21) [${FILE}_hping2ack-s53p21.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p21.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p21.txt
echo "Result File Name = "${FILE}"_hping2ack-s53p21.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p21.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p21.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p21.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p21.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p21.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p21.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p21.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","53","21","'"${FILE}"'_hping2ack-s53p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","53","21","'"${FILE}"'_hping2ack-s53p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","53","21","'"${FILE}"'_hping2ack-s53p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","53","21","'"${FILE}"'_hping2ack-s53p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p21.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","53","21","'"${FILE}"'_hping2ack-s53p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","53","21","'"${FILE}"'_hping2ack-s53p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p21.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p21.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p21.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p21.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 69) hping2 (ack src:53, dst:25) [${FILE}_hping2ack-s53p25.txt]
#######################################################################
echo "69) hping2 (ack src:53, dst:25) [${FILE}_hping2ack-s53p25.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p25.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p25.txt
echo "Result File Name = "${FILE}"_hping2ack-s53p25.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p25.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p25.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p25.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p25.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p25.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p25.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p25.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","53","25","'"${FILE}"'_hping2ack-s53p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","53","25","'"${FILE}"'_hping2ack-s53p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","53","25","'"${FILE}"'_hping2ack-s53p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","53","25","'"${FILE}"'_hping2ack-s53p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p25.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","53","25","'"${FILE}"'_hping2ack-s53p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","53","25","'"${FILE}"'_hping2ack-s53p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p25.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p25.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p25.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p25.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 70) hping2 (ack src:53, dst:53) [${FILE}_hping2ack-s53p53.txt]
#######################################################################
echo "70) hping2 (ack src:53, dst:53) [${FILE}_hping2ack-s53p53.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p53.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p53.txt
echo "Result File Name = "${FILE}"_hping2ack-s53p53.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p53.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p53.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p53.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p53.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p53.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p53.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p53.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","53","53","'"${FILE}"'_hping2ack-s53p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","53","53","'"${FILE}"'_hping2ack-s53p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","53","53","'"${FILE}"'_hping2ack-s53p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","53","53","'"${FILE}"'_hping2ack-s53p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p53.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","53","53","'"${FILE}"'_hping2ack-s53p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","53","53","'"${FILE}"'_hping2ack-s53p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p53.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p53.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p53.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p53.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 71) hping2 (ack src:53, dst:80) [${FILE}_hping2ack-s53p80.txt]
#######################################################################
echo "71) hping2 (ack src:53, dst:80) [${FILE}_hping2ack-s53p80.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p80.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p80.txt
echo "Result File Name = "${FILE}"_hping2ack-s53p80.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p80.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p80.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p80.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p80.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p80.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p80.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p80.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","53","80","'"${FILE}"'_hping2ack-s53p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","53","80","'"${FILE}"'_hping2ack-s53p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","53","80","'"${FILE}"'_hping2ack-s53p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","53","80","'"${FILE}"'_hping2ack-s53p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p80.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","53","80","'"${FILE}"'_hping2ack-s53p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","53","80","'"${FILE}"'_hping2ack-s53p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p80.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p80.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p80.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p80.txt
echo ""
sleep 0.2
x=0

################################################################################
### 72) hping2 (ack src:53, dst:110) [${FILE}_hping2ack-s53p110.txt]
################################################################################
echo "72) hping2 (ack src:53, dst:110) [${FILE}_hping2ack-s53p110.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p110.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p110.txt
echo "Result File Name = "${FILE}"_hping2ack-s53p110.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p110.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p110.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p110.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p110.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p110.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p110.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p110.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","53","110","'"${FILE}"'_hping2ack-s53p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","53","110","'"${FILE}"'_hping2ack-s53p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","53","110","'"${FILE}"'_hping2ack-s53p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","53","110","'"${FILE}"'_hping2ack-s53p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p110.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","53","110","'"${FILE}"'_hping2ack-s53p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","53","110","'"${FILE}"'_hping2ack-s53p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p110.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p110.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p110.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p110.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 73) hping2 (ack src:53, dst:443) [${FILE}_hping2ack-s53p443.txt]
#######################################################################
echo "73) hping2 (ack src:53, dst:443) [${FILE}_hping2ack-s53p443.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p443.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p443.txt
echo "Result File Name = "${FILE}"_hping2ack-s53p443.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p443.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p443.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p443.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p443.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p443.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p443.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p443.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","53","443","'"${FILE}"'_hping2ack-s53p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","53","443","'"${FILE}"'_hping2ack-s53p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","53","443","'"${FILE}"'_hping2ack-s53p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","53","443","'"${FILE}"'_hping2ack-s53p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p443.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","53","443","'"${FILE}"'_hping2ack-s53p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","53","443","'"${FILE}"'_hping2ack-s53p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s53p443.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p443.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p443.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s53p443.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 74) hping2 (ack src:80, dst:0) [${FILE}_hping2ack-s80.txt]
#######################################################################
echo "74) hping2 (ack src:80, dst:0) [${FILE}_hping2ack-s80.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80.txt
echo "Result File Name = "${FILE}"_hping2ack-s80.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s80.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s80.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","80","0","'"${FILE}"'_hping2ack-s80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","80","0","'"${FILE}"'_hping2ack-s80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","80","0","'"${FILE}"'_hping2ack-s80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","80","0","'"${FILE}"'_hping2ack-s80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s80.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","80","0","'"${FILE}"'_hping2ack-s80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","80","0","'"${FILE}"'_hping2ack-s80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s80.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80.txt
echo ""
sleep 0.2
x=0

##############################################################################
### 75) hping2 (ack src:80, dst:21) [${FILE}_hping2ack-s80p21.txt]
##############################################################################
echo "75) hping2 (ack src:80, dst:21) [${FILE}_hping2ack-s80p21.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p21.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p21.txt
echo "Result File Name = "${FILE}"_hping2ack-s80p21.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p21.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p21.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p21.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p21.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p21.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p21.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p21.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","80","21","'"${FILE}"'_hping2ack-s80p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","80","21","'"${FILE}"'_hping2ack-s80p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","80","21","'"${FILE}"'_hping2ack-s80p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","80","21","'"${FILE}"'_hping2ack-s80p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p21.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","80","21","'"${FILE}"'_hping2ack-s80p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","80","21","'"${FILE}"'_hping2ack-s80p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p21.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p21.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p21.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p21.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 76) hping2 (ack src:80, dst:25) [${FILE}_hping2ack-s80p25.txt]
#######################################################################
echo "76) hping2 (ack src:80, dst:25) [${FILE}_hping2ack-s80p25.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p25.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p25.txt
echo "Result File Name = "${FILE}"_hping2ack-s80p25.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p25.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p25.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p25.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p25.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p25.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p25.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p25.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","80","25","'"${FILE}"'_hping2ack-s80p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","80","25","'"${FILE}"'_hping2ack-s80p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","80","25","'"${FILE}"'_hping2ack-s80p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","80","25","'"${FILE}"'_hping2ack-s80p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p25.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","80","25","'"${FILE}"'_hping2ack-s80p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","80","25","'"${FILE}"'_hping2ack-s80p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p25.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p25.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p25.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p25.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 77) hping2 (ack src:80, dst:53) [${FILE}_hping2ack-s80p53.txt]
#######################################################################
echo "77) hping2 (ack src:80, dst:53) [${FILE}_hping2ack-s80p53.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p53.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p53.txt
echo "Result File Name = "${FILE}"_hping2ack-s80p53.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p53.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p53.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p53.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p53.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p53.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p53.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p53.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","80","53","'"${FILE}"'_hping2ack-s80p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","80","53","'"${FILE}"'_hping2ack-s80p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","80","53","'"${FILE}"'_hping2ack-s80p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","80","53","'"${FILE}"'_hping2ack-s80p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p53.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","80","53","'"${FILE}"'_hping2ack-s80p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","80","53","'"${FILE}"'_hping2ack-s80p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p53.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p53.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p53.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p53.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 78) hping2 (ack src:80, dst:80) [${FILE}_hping2ack-s80p80.txt]
#######################################################################
echo "78) hping2 (ack src:80, dst:80) [${FILE}_hping2ack-s80p80.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p80.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p80.txt
echo "Result File Name = "${FILE}"_hping2ack-s80p80.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p80.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p80.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p80.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p80.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p80.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p80.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p80.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","80","80","'"${FILE}"'_hping2ack-s80p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","80","80","'"${FILE}"'_hping2ack-s80p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","80","80","'"${FILE}"'_hping2ack-s80p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","80","80","'"${FILE}"'_hping2ack-s80p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p80.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","80","80","'"${FILE}"'_hping2ack-s80p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","80","80","'"${FILE}"'_hping2ack-s80p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p80.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p80.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p80.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p80.txt
echo ""
sleep 0.2
x=0

################################################################################
### 79) hping2 (ack src:80, dst:110) [${FILE}_hping2ack-s80p110.txt]
################################################################################
echo "79) hping2 (ack src:80, dst:110) [${FILE}_hping2ack-s80p110.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p110.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p110.txt
echo "Result File Name = "${FILE}"_hping2ack-s80p110.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p110.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p110.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p110.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p110.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p110.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p110.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p110.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","80","110","'"${FILE}"'_hping2ack-s80p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","80","110","'"${FILE}"'_hping2ack-s80p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","80","110","'"${FILE}"'_hping2ack-s80p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","80","110","'"${FILE}"'_hping2ack-s80p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p110.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","80","110","'"${FILE}"'_hping2ack-s80p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","80","110","'"${FILE}"'_hping2ack-s80p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p110.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p110.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p110.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p110.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 80) hping2 (ack src:80, dst:443) [${FILE}_hping2ack-s80p443.txt]
#######################################################################
echo "80) hping2 (ack src:80, dst:443) [${FILE}_hping2ack-s80p443.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p443.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p443.txt
echo "Result File Name = "${FILE}"_hping2ack-s80p443.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p443.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p443.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p443.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p443.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p443.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p443.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p443.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","80","443","'"${FILE}"'_hping2ack-s80p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","80","443","'"${FILE}"'_hping2ack-s80p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","80","443","'"${FILE}"'_hping2ack-s80p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","80","443","'"${FILE}"'_hping2ack-s80p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p443.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","80","443","'"${FILE}"'_hping2ack-s80p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","80","443","'"${FILE}"'_hping2ack-s80p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s80p443.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p443.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p443.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s80p443.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 81) hping2 (ack src:443, dst:0) [${FILE}_hping2ack-s443.txt]
#######################################################################
echo "81) hping2 (ack src:443, dst:0) [${FILE}_hping2ack-s443.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443.txt
echo "Result File Name = "${FILE}"_hping2ack-s443.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s443.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s443.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","443","0","'"${FILE}"'_hping2ack-s443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","443","0","'"${FILE}"'_hping2ack-s443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","443","0","'"${FILE}"'_hping2ack-s443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","443","0","'"${FILE}"'_hping2ack-s443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s443.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","443","0","'"${FILE}"'_hping2ack-s443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","443","0","'"${FILE}"'_hping2ack-s443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s443.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443.txt
echo ""
sleep 0.2
x=0

################################################################################
### 82) hping2 (ack src:443, dst:21) [${FILE}_hping2ack-s443p21.txt]
################################################################################
echo "82) hping2 (ack src:443, dst:21) [${FILE}_hping2ack-s443p21.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p21.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p21.txt
echo "Result File Name = "${FILE}"_hping2ack-s443p21.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p21.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p21.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p21.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p21.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p21.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p21.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p21.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","443","21","'"${FILE}"'_hping2ack-s443p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","443","21","'"${FILE}"'_hping2ack-s443p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","443","21","'"${FILE}"'_hping2ack-s443p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","443","21","'"${FILE}"'_hping2ack-s443p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p21.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","443","21","'"${FILE}"'_hping2ack-s443p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","443","21","'"${FILE}"'_hping2ack-s443p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p21.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p21.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p21.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p21.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 83) hping2 (ack src:443, dst:25) [${FILE}_hping2ack-s443p25.txt]
#######################################################################
echo "83) hping2 (ack src:443, dst:25) [${FILE}_hping2ack-s443p25.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p25.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p25.txt
echo "Result File Name = "${FILE}"_hping2ack-s443p25.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p25.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p25.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p25.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p25.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p25.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p25.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p25.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","443","25","'"${FILE}"'_hping2ack-s443p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","443","25","'"${FILE}"'_hping2ack-s443p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","443","25","'"${FILE}"'_hping2ack-s443p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","443","25","'"${FILE}"'_hping2ack-s443p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p25.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","443","25","'"${FILE}"'_hping2ack-s443p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","443","25","'"${FILE}"'_hping2ack-s443p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p25.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p25.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p25.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p25.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 84) hping2 (ack src:443, dst:53) [${FILE}_hping2ack-s443p53.txt]
#######################################################################
echo "84) hping2 (ack src:443, dst:53) [${FILE}_hping2ack-s443p53.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p53.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p53.txt
echo "Result File Name = "${FILE}"_hping2ack-s443p53.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p53.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p53.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p53.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p53.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p53.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p53.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p53.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","443","53","'"${FILE}"'_hping2ack-s443p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","443","53","'"${FILE}"'_hping2ack-s443p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","443","53","'"${FILE}"'_hping2ack-s443p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","443","53","'"${FILE}"'_hping2ack-s443p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p53.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","443","53","'"${FILE}"'_hping2ack-s443p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","443","53","'"${FILE}"'_hping2ack-s443p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p53.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p53.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p53.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p53.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 85) hping2 (ack src:443, dst:80) [${FILE}_hping2ack-s443p80.txt]
#######################################################################
echo "85) hping2 (ack src:443, dst:80) [${FILE}_hping2ack-s443p80.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p80.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p80.txt
echo "Result File Name = "${FILE}"_hping2ack-s443p80.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p80.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p80.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p80.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p80.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p80.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p80.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p80.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","443","80","'"${FILE}"'_hping2ack-s443p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","443","80","'"${FILE}"'_hping2ack-s443p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","443","80","'"${FILE}"'_hping2ack-s443p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","443","80","'"${FILE}"'_hping2ack-s443p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p80.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","443","80","'"${FILE}"'_hping2ack-s443p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","443","80","'"${FILE}"'_hping2ack-s443p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p80.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p80.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p80.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p80.txt
echo ""
sleep 0.2
x=0

##################################################################################
### 86) hping2 (ack src:443, dst:110) [${FILE}_hping2ack-s443p110.txt]
##################################################################################
echo "86) hping2 (ack src:443, dst:110) [${FILE}_hping2ack-s443p110.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p110.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p110.txt
echo "Result File Name = "${FILE}"_hping2ack-s443p110.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p110.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p110.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p110.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p110.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p110.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p110.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p110.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","443","110","'"${FILE}"'_hping2ack-s443p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","443","110","'"${FILE}"'_hping2ack-s443p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","443","110","'"${FILE}"'_hping2ack-s443p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","443","110","'"${FILE}"'_hping2ack-s443p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p110.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","443","110","'"${FILE}"'_hping2ack-s443p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","443","110","'"${FILE}"'_hping2ack-s443p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p110.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p110.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p110.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p110.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 87) hping2 (ack src:443, dst:443) [${FILE}_hping2ack-s443p443.txt]
#######################################################################
echo "87) hping2 (ack src:443, dst:443) [${FILE}_hping2ack-s443p443.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p443.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p443.txt
echo "Result File Name = "${FILE}"_hping2ack-s443p443.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p443.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p443.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p443.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p443.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p443.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p443.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p443.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","----","hping2","Ack","R","443","443","'"${FILE}"'_hping2ack-s443p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Unreachable(T_10)","443","443","'"${FILE}"'_hping2ack-s443p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/flags=R/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$2,"'"${dest_ip}"'","Diff","hping2","Ack","R","443","443","'"${FILE}"'_hping2ack-s443p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Unreachable(T_10)","443","443","'"${FILE}"'_hping2ack-s443p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p443.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","Ack","ICMP Packet filtered","443","443","'"${FILE}"'_hping2ack-s443p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","Ack","ICMP Packet filtered","443","443","'"${FILE}"'_hping2ack-s443p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2ack-s443p443.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p443.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p443.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2ack-s443p443.txt
echo ""
sleep 0.2
x=0

#=========================================================================
### UDP
#=========================================================================
#######################################################################
### 88) hping2 (udp src:53, dst:0) [${FILE}_hping2udp-s53.txt]
#######################################################################
echo "88) hping2 (udp src:53, dst:0) [${FILE}_hping2udp-s53.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53.txt
echo "Result File Name = "${FILE}"_hping2udp-s53.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2udp-s53.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2udp-s53.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Port Unreachable from /) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Port Unreachable","53","0","'"${FILE}"'_hping2udp-s53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Unreachable(T_10)","53","0","'"${FILE}"'_hping2udp-s53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Port Unreachable from /) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Port Unreachable","53","0","'"${FILE}"'_hping2udp-s53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Unreachable(T_10)","53","0","'"${FILE}"'_hping2udp-s53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2udp-s53.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Packet filtered","53","0","'"${FILE}"'_hping2udp-s53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Packet filtered","53","0","'"${FILE}"'_hping2udp-s53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2udp-s53.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53.txt
echo ""
sleep 0.2
x=0

##############################################################################
### 89) hping2 (udp src:53, dst:21) [${FILE}_hping2udp-s53p21.txt]
##############################################################################
echo "89) hping2 (udp src:53, dst:21) [${FILE}_hping2udp-s53p21.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p21.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p21.txt
echo "Result File Name = "${FILE}"_hping2udp-s53p21.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p21.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p21.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p21.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p21.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p21.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p21.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p21.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Port Unreachable from /) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Port Unreachable","53","21","'"${FILE}"'_hping2udp-s53p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Unreachable(T_10)","53","21","'"${FILE}"'_hping2udp-s53p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Port Unreachable from /) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Port Unreachable","53","21","'"${FILE}"'_hping2udp-s53p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Unreachable(T_10)","53","21","'"${FILE}"'_hping2udp-s53p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p21.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Packet filtered","53","21","'"${FILE}"'_hping2udp-s53p21.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Packet filtered","53","21","'"${FILE}"'_hping2udp-s53p21.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p21.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p21.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p21.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p21.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 90) hping2 (udp src:53, dst:25) [${FILE}_hping2udp-s53p25.txt]
#######################################################################
echo "90) hping2 (udp src:53, dst:25) [${FILE}_hping2udp-s53p25.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p25.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p25.txt
echo "Result File Name = "${FILE}"_hping2udp-s53p25.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p25.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p25.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p25.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p25.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p25.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p25.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p25.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Port Unreachable from /) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Port Unreachable","53","25","'"${FILE}"'_hping2udp-s53p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Unreachable(T_10)","53","25","'"${FILE}"'_hping2udp-s53p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Port Unreachable from /) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Port Unreachable","53","25","'"${FILE}"'_hping2udp-s53p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Unreachable(T_10)","53","25","'"${FILE}"'_hping2udp-s53p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p25.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Packet filtered","53","25","'"${FILE}"'_hping2udp-s53p25.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Packet filtered","53","25","'"${FILE}"'_hping2udp-s53p25.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p25.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p25.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p25.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p25.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 91) hping2 (udp src:53, dst:53) [${FILE}_hping2udp-s53p53.txt]
#######################################################################
echo "91) hping2 (udp src:53, dst:53) [${FILE}_hping2udp-s53p53.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p53.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p53.txt
echo "Result File Name = "${FILE}"_hping2udp-s53p53.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p53.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p53.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p53.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p53.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p53.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p53.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p53.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Port Unreachable from /) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Port Unreachable","53","53","'"${FILE}"'_hping2udp-s53p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Unreachable(T_10)","53","53","'"${FILE}"'_hping2udp-s53p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Port Unreachable from /) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Port Unreachable","53","53","'"${FILE}"'_hping2udp-s53p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Unreachable(T_10)","53","53","'"${FILE}"'_hping2udp-s53p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p53.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Packet filtered","53","53","'"${FILE}"'_hping2udp-s53p53.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Packet filtered","53","53","'"${FILE}"'_hping2udp-s53p53.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p53.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p53.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p53.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p53.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 92) hping2 (udp src:53, dst:80) [${FILE}_hping2udp-s53p80.txt]
#######################################################################
echo "92) hping2 (udp src:53, dst:80) [${FILE}_hping2udp-s53p80.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p80.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p80.txt
echo "Result File Name = "${FILE}"_hping2udp-s53p80.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p80.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p80.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p80.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p80.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p80.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p80.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p80.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Port Unreachable from /) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Port Unreachable","53","80","'"${FILE}"'_hping2udp-s53p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Unreachable(T_10)","53","80","'"${FILE}"'_hping2udp-s53p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Port Unreachable from /) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Port Unreachable","53","80","'"${FILE}"'_hping2udp-s53p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Unreachable(T_10)","53","80","'"${FILE}"'_hping2udp-s53p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p80.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Packet filtered","53","80","'"${FILE}"'_hping2udp-s53p80.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Packet filtered","53","80","'"${FILE}"'_hping2udp-s53p80.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p80.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p80.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p80.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p80.txt
echo ""
sleep 0.2
x=0

################################################################################
### 93) hping2 (udp src:53, dst:110) [${FILE}_hping2udp-s53p110.txt]
################################################################################
echo "93) hping2 (udp src:53, dst:110) [${FILE}_hping2udp-s53p110.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p110.txt														# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p110.txt
echo "Result File Name = "${FILE}"_hping2udp-s53p110.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p110.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p110.txt					# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p110.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p110.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p110.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p110.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p110.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Port Unreachable from /) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Port Unreachable","53","110","'"${FILE}"'_hping2udp-s53p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Unreachable(T_10)","53","110","'"${FILE}"'_hping2udp-s53p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Port Unreachable from /) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Port Unreachable","53","110","'"${FILE}"'_hping2udp-s53p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Unreachable(T_10)","53","110","'"${FILE}"'_hping2udp-s53p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p110.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Packet filtered","53","110","'"${FILE}"'_hping2udp-s53p110.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Packet filtered","53","110","'"${FILE}"'_hping2udp-s53p110.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p110.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p110.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p110.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p110.txt
echo ""
sleep 0.2
x=0

#######################################################################
### 94) hping2 (udp src:53, dst:443) [${FILE}_hping2udp-s53p443.txt]
#######################################################################
echo "94) hping2 (udp src:53, dst:443) [${FILE}_hping2udp-s53p443.txt]"
date > ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p443.txt															# Date
echo "" >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p443.txt
echo "Result File Name = "${FILE}"_hping2udp-s53p443.txt" >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p443.txt	# Result File Name
echo "IP List File Name = "${FILENAME} >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p443.txt						# IP List File Name
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p443.txt
printf "${PRINT_VAL_TITLE}" "Response_IP" "Dst_IP" "Diff" "Cmd" "Flag" "Res_Flag/Res_ICMP" "SrcPort" "DstPort" "File" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p443.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p443.txt
x=1
  for i in `less "$1" | xargs`; do
  HPING_Line_No=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print NR}' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p443.txt 2>&1`
  HPING_Line_No=`echo ${HPING_Line_No} | awk '(/[0-9]/) {print $'"${x}"'}'`
  dest_ip=`awk '(/^HPING [0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $2}' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p443.txt 2>&1`
  dest_ip=`echo ${dest_ip} | awk '(/[0-9]+\.[0-9]+\.[0-9]+\.[0-9]/) {print $'"${x}"'}'`
    if [ ${dest_ip} = ${i} ]; then
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Port Unreachable from /) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Port Unreachable","53","443","'"${FILE}"'_hping2udp-s53p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Unreachable(T_10)","53","443","'"${FILE}"'_hping2udp-s53p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Port Unreachable from /) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Port Unreachable","53","443","'"${FILE}"'_hping2udp-s53p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/ICMP Unreachable type\=10/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Unreachable(T_10)","53","443","'"${FILE}"'_hping2udp-s53p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p443.txt 2>&1 | cut -d"=" -f2 | uniq
    awk '{
    if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      if ((!/^DUP!/) && (/[ ]+ip='"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","----","hping2","UDP","ICMP Packet filtered","53","443","'"${FILE}"'_hping2udp-s53p443.txt"}
      if ((!/^DUP!/) && (/[ ]+ip=/) && (!/'"${i}"'/) && (/^ICMP Packet filtered/) && ('"${HPING_Line_No}"' <= NR) && (NR <= '"${HPING_Line_No}"'+3))
      {printf "'"${PRINT_VAL_DATA}"'",NR,":",$5,"'"${dest_ip}"'","Diff","hping2","UDP","ICMP Packet filtered","53","443","'"${FILE}"'_hping2udp-s53p443.txt"}
    }' ./${FILE}_hping2_results/${FILE}_hping2udp-s53p443.txt 2>&1 | cut -d"=" -f2 | uniq >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
    fi
  x=x+1
  done | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p443.txt ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" | tee -a ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p443.txt
date >> ./${FILE}_hping2_analysis/${FILE}_hping2udp-s53p443.txt
echo ""
sleep 0.2
x=0

#===============================================
# for ${FILE}_all_results.txt (END)
#===============================================
echo "${LINE}" >> ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "Abbreviation Explanation:" >> ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "Response_IP = Responsed IP Address,   Dst_IP = Destination IP Address" >> ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "Diff = When Responsed IP Address is different from Destination IP Addrss" >> ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "Res_Flag/Res_ICMP = Responsed Flag or Responsed ICMP Message" >> ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "SrcPort = Source Port,   DstPort = Destination Port" >> ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "File = Destination IP Address List File" >> ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "T_10 = ICMP Destination Unreachable Code, in this case, T_10 = Type 10 ()" >> ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "       The destination host is administratively prohibited. (Ref:http://en.wikipedia.org/wiki/ICMP_Destinatin_Unreachable/)" >> ./${FILE}_hping2_analysis/${FILE}_all_results.txt
echo "${LINE}" >> ./${FILE}_hping2_analysis/${FILE}_all_results.txt
date >> ./${FILE}_hping2_analysis/${FILE}_all_results.txt


#===============================================
# for ${FILE}_all_results_filtered.txt (END)
#===============================================
echo "${LINE}" >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
echo "Abbreviation Explanation:" >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
echo "Response_IP = Responsed IP Address,   Dst_IP = Destination IP Address" >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
echo "Diff = When Responsed IP Address is different from Destination IP Addrss" >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
echo "Res_Flag/Res_ICMP = Responsed Flag or Responsed ICMP Message" >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
echo "SrcPort = Source Port,   DstPort = Destination Port" >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
echo "File = Destination IP Address List File" >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
echo "${LINE}" >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt
date >> ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt


#===============================================
# Sort ${FILE}_all_results.txt
#===============================================
END_Line_No=`awk 'END{print NR;}' ./${FILE}_hping2_analysis/${FILE}_all_results.txt`
if [ ${END_Line_No} -gt 18 ]; then
awk '( 1 <= NR ) && ( NR <= 6 ) {print $0}' ./${FILE}_hping2_analysis/${FILE}_all_results.txt > ./${FILE}_hping2_analysis/${FILE}_all_results_header.txt
awk '( 7 <= NR ) && ( NR <= "'${END_Line_No}'"-11 ) {print $0}' ./${FILE}_hping2_analysis/${FILE}_all_results.txt > ./${FILE}_hping2_analysis/${FILE}_all_results_body.txt
awk '("'${END_Line_No}'"-10 <= NR ) && ( NR <= "'${END_Line_No}'") {print $0}' ./${FILE}_hping2_analysis/${FILE}_all_results.txt > ./${FILE}_hping2_analysis/${FILE}_all_results_footer.txt
#sort -k2 -k1 -k3 -k4 -k5 -k6 -k7 -k8 ./${FILE}_hping2_analysis/${FILE}_all_results.txt -o ./${FILE}_hping2_analysis/${FILE}_all_results_sorted.txt
sort -k2 -k1 -k3 -k4 -k5 -k6 -k7 -k8 ./${FILE}_hping2_analysis/${FILE}_all_results_body.txt -o ./${FILE}_hping2_analysis/${FILE}_all_results_body_sorted.txt
awk '{print $2 "\t" $3}' ./${FILE}_hping2_analysis/${FILE}_all_results_body_sorted.txt | uniq > ./${FILE}_hping2_analysis/${FILE}_all_results_sorted_uniq.txt
cat ./${FILE}_hping2_analysis/${FILE}_all_results_header.txt ./${FILE}_hping2_analysis/${FILE}_all_results_body_sorted.txt ./${FILE}_hping2_analysis/${FILE}_all_results_footer.txt > ./${FILE}_hping2_analysis/${FILE}_all_results_sorted.txt
rm -f ./${FILE}_hping2_analysis/${FILE}_all_results_header.txt ./${FILE}_hping2_analysis/${FILE}_all_results_body.txt ./${FILE}_hping2_analysis/${FILE}_all_results_body_sorted.txt ./${FILE}_hping2_analysis/${FILE}_all_results_footer.txt
fi


#===============================================
# Sort ${FILE}_all_results_filtered_sorted.txt
#===============================================
END_Line_No=`awk 'END{print NR;}' ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt`
if [ ${END_Line_No} -gt 16 ]; then
awk '( 1 <= NR ) && ( NR <= 6 ) {print $0}' ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt > ./${FILE}_hping2_analysis/${FILE}_all_results_filtered_header.txt
awk '( 7 <= NR ) && ( NR <= "'${END_Line_No}'"-9 ) {print $0}' ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt > ./${FILE}_hping2_analysis/${FILE}_all_results_filtered_body.txt
awk '("'${END_Line_No}'"-8 <= NR ) && ( NR <= "'${END_Line_No}'") {print $0}' ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt > ./${FILE}_hping2_analysis/${FILE}_all_results_filtered_footer.txt
#sort -k2 -k1 -k3 -k4 -k5 -k6 -k7 -k8 ./${FILE}_hping2_analysis/${FILE}_all_results_filtered.txt -o ./${FILE}_hping2_analysis/${FILE}_all_results_filtered_sorted.txt
sort -k2 -k1 -k3 -k4 -k5 -k6 -k7 -k8 ./${FILE}_hping2_analysis/${FILE}_all_results_filtered_body.txt -o ./${FILE}_hping2_analysis/${FILE}_all_results_filtered_body_sorted.txt
awk '{print $2 "\t" $3}' ./${FILE}_hping2_analysis/${FILE}_all_results_filtered_body_sorted.txt | uniq > ./${FILE}_hping2_analysis/${FILE}_all_results_filtered_sorted_uniq.txt
cat ./${FILE}_hping2_analysis/${FILE}_all_results_filtered_header.txt ./${FILE}_hping2_analysis/${FILE}_all_results_filtered_body_sorted.txt ./${FILE}_hping2_analysis/${FILE}_all_results_filtered_footer.txt > ./${FILE}_hping2_analysis/${FILE}_all_results_filtered_sorted.txt
rm -f ./${FILE}_hping2_analysis/${FILE}_all_results_filtered_header.txt ./${FILE}_hping2_analysis/${FILE}_all_results_filtered_body.txt ./${FILE}_hping2_analysis/${FILE}_all_results_filtered_body_sorted.txt ./${FILE}_hping2_analysis/${FILE}_all_results_filtered_footer.txt
fi


#===============================================
# END Message
#===============================================
echo "==== Analysis and Sort finished. ===="
echo "Analysis File: 				./"${FILE}"_hping2_analysis/"${FILE}"_all_results.txt"
echo "Sorted File: 				./"${FILE}"_hping2_analysis/"${FILE}"_all_results_sorted.txt"
echo "Sorted File (Unique IP): 		./"${FILE}"_hping2_analysis/"${FILE}"_all_results_sorted_uniq.txt"
echo ""
echo "==== 'ICMP Packet Filtered' is also analyzed and sorted. ===="
echo "'ICMP Packet Filtered' File: 	./"${FILE}"_hping2_analysis/"${FILE}"_all_results_filtered.txt"
echo "Sorted File: 				./"${FILE}"_hping2_analysis/"${FILE}"_all_results_filtered_sorted.txt"
echo "Sorted File (Unique IP): 		./"${FILE}"_hping2_analysis/"${FILE}"_all_results_filtered_sorted_uniq.txt"
echo "END"
echo ""
# END
