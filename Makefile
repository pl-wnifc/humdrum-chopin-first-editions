##
## Programmer:    Craig Stuart Sapp <craig@ccrma.stanford.edu>
## Creation Date: Wed Jun  2 12:27:12 PDT 2021
## Last Modified: Wed Jun  2 13:02:37 PDT 2021
## Syntax:        GNU Makefile
## Filename:      humdrum-chopin-first-editions/Makefile
## vim:           ts=3
##
## Description:   Convert Humdrum data into MEI, MIDI, or MP3 files.
##

.PHONY: mei midi mp3

all:
	@echo ""
	@echo "make mei          == Convert to MEI data, using verovio."
	@echo "make midi         == Convert to Standard MIDI files, using hum2mid."
	@echo "make mp3          == Convert to MP3 audio files (generated from MIDI files), using timidity and lame."
	@echo ""


everything: mei midi mp3


mei:
	bin/makeMei


midi:
	bin/makeMidi


mp3:
	bin/makeMp3


clean:
	-rm -rf mei
	-rm -rf midi
	-rm -rf mp3



