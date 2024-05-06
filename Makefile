TEX_PATH = /usr/share/texmf-dist/tex/ldr/
CLS_PATH = /home/yuh/code/my/tex/xsTex/
# TEX_PATH = /usr/local/texlive/texmf-local/tex/latex/yuh/
# CLS_PATH = ../../../../../../my/tex/cls/

rm:
	sudo rm -rf ${TEX_PATH}


install: rm
	sudo mkdir ${TEX_PATH}

	sudo ln -s ${CLS_PATH}figures ${TEX_PATH}

	sudo ln -s ${CLS_PATH}ppt ${TEX_PATH}
	sudo ln -s ${CLS_PATH}poster ${TEX_PATH}
	sudo ln -s ${CLS_PATH}book ${TEX_PATH}

	sudo mktexlsr
	# sudo texhash
