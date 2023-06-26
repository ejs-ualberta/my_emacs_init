conf_dir = ~/.emacs.d
file = ./init.el

dir:
	[ -d $(conf_dir) ] || mkdir $(conf_dir)
	[ -d $(conf_dir)/$(file) ] || mv $(conf_dir)/$(file) $(conf_dir)/$(file).old
	cp $(file) $(conf_dir)

home:
	[ -d ~/$(file) ] || mv ~/$(file) ~/$(file).old
	cp $(file) ~
