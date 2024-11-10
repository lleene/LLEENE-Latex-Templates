#!/usr/bin/env bash

for font_file in $(find . -regextype posix-extended -iregex ".*-(italic|bold|regular)+.ttf");
	do fontforge -lang=ff -c "Open(\"$font_file\");Generate(\"${font_file/ttf/pfa}\")"; 
done

MAP_FILE="/usr/share/groff/current/font/devps/generate/textmap"
ENC_FILE="/usr/share/groff/current/font/devps/text.enc"
FONT_FAMILY="${PWD##*/}"

for afm_file in ./*afm; do 
	FONT_TYPE="R"
	if [[ "${afm_file,,}" == *"italic"* ]] ; then FONT_TYPE="I" ; fi
	if [[ "${afm_file,,}" == *"bold"* ]] ; then FONT_TYPE="B" ; fi
	if [[ "${afm_file,,}" == *"bolditalic"* ]] ; then FONT_TYPE="BI" ; fi
	afmtodit -e $ENC_FILE $afm_file $MAP_FILE "${FONT_FAMILY}${FONT_TYPE}"
done
