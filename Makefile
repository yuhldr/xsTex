TEX_PATH = /usr/local/texlive/texmf-local/tex/latex/yuh/
CLS_PATH = ../../../../../../my/tex/cls/

rm:
	sudo rm -rf ${TEX_PATH}


install: rm
	sudo mkdir ${TEX_PATH}

	sudo ln -s ${CLS_PATH}ldrsimple.cls ${TEX_PATH}
	sudo ln -s ${CLS_PATH}pythonhighlight.sty ${TEX_PATH}
	sudo ln -s ${CLS_PATH}figures ${TEX_PATH}

	sudo mktexlsr
