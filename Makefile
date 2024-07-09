TEX_PATH = /home/yuh/code/apps/texlive/texmf-local/
CLS_PATH = /home/yuh/code/my/tex/xsTex/

rm:
	rm -rf ${TEX_PATH}/tex/ldr/
	rm -rf ${TEX_PATH}/bibtex/bst/ldr/

install: rm
	mkdir ${TEX_PATH}/tex/ldr/

	ln -s ${CLS_PATH}figures ${TEX_PATH}/tex/ldr/
	ln -s ${CLS_PATH}ppt ${TEX_PATH}/tex/ldr/
	ln -s ${CLS_PATH}poster ${TEX_PATH}/tex/ldr/
	ln -s ${CLS_PATH}book ${TEX_PATH}/tex/ldr/	
	ln -s ${CLS_PATH}article ${TEX_PATH}/tex/ldr/
	ln -s ${CLS_PATH}resume ${TEX_PATH}/tex/ldr/

	mkdir ${TEX_PATH}/bibtex/bst/ldr/

	ln -s ${CLS_PATH}data ${TEX_PATH}/bibtex/bst/ldr/

	sudo mktexlsr
	# texhash
