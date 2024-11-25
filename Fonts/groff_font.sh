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

# Place the generated font file in your .local directory 
# and set GROFF_FONT_PATH="$HOME/.local/share/groff/site-font" during compile
# 
# $HOME/.local/share/groff/site-font/devpdf:
# IBM-Plex-SansB  IBM-Plex-SansBI  IBM-Plex-SansI  IBM-Plex-SansR
# $HOME/.local/share/groff/site-font/devps:
# IBM-Plex-SansB  IBM-Plex-SansBI  IBM-Plex-SansI  IBM-Plex-SansR
