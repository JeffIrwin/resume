#!/bin/bash

NAME=resume
COMPILER=xelatex
READER="/c/Program Files (x86)/Adobe/Acrobat Reader DC/Reader/AcroRd32.exe"

SRC=$NAME.tex
THIS=`basename "$0"`
TMPSRC=$(mktemp)

function finish ()
{
	rm $TMPSRC
	exit
}

function subenv ()
{
	eval ENV=\$$1
	if [[ "$ENV" == "" ]]; then
		echo $THIS:  Error:  environment variable $1 is not defined.
		finish
	fi
	sed -i "s/\<ENV\\\_$1\>/$ENV/g" $TMPSRC
}

function main ()
{

	cp $SRC $TMPSRC

	# Keep private information out of github source.  Substitute with environment variables.
	subenv EMAIL
	subenv MOBILE
	subenv ADDRESSL1
	subenv ADDRESSL2
	subenv ADDRESSL3

	$COMPILER -job-name=$NAME $TMPSRC || finish
	"$READER" $NAME.pdf || finish

	finish
}

main
