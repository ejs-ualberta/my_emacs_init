conf_dir = ~/.emacs.d
file = init.el
install_path = ${conf_dir}"/"${file}

dir:
	[ -e ${conf_dir} ] || mkdir ${conf_dir}
	[ ! -e ${install_path} ] || mv ${install_path} ${install_path}".old"
	cp ./${file} ${conf_dir}

home:
	[ ! -e ~/${file} ] || mv ~/${file} ~/${file}".old"
	cp ./$(file) ~
