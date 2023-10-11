TEX_PATH = ~/.texlive/texmf-var/yuh/
CLS_PATH = ../../../code/my/tex/xsTex/

rm:
	rm -rf ${TEX_PATH}


install: rm
	mkdir ${TEX_PATH}
	ln -s ${CLS_PATH}figures ${TEX_PATH}
	ln -s ${CLS_PATH}ppt ${TEX_PATH}
	ln -s ${CLS_PATH}poster ${TEX_PATH}

	mktexlsr
	# sudo texhash
