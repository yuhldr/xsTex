TEX_PATH = /usr/share/texmf-dist/tex/ldr/
CLS_PATH = /home/yuh/code/my/tex/xsTex/

rm:
	rm -rf ${TEX_PATH}

install: rm
	mkdir -p ${TEX_PATH}

	ln -s ${CLS_PATH}figures ${TEX_PATH}
	ln -s ${CLS_PATH}ppt ${TEX_PATH}
	ln -s ${CLS_PATH}poster ${TEX_PATH}
	ln -s ${CLS_PATH}book ${TEX_PATH}
	ln -s ${CLS_PATH}article ${TEX_PATH}
	# ln -s ${CLS_PATH}resume ${TEX_PATH}

	mktexlsr
	# texhash
