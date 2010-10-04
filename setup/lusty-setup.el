(add-to-list 'load-path "~/.emacs.d/modules/lusty/")

;;(load "~/.emacs.d/modules/lusty/lusty-ido.el")
(require 'lusty-explorer)

(global-set-key (kbd "C-x C-f")   'lusty-file-explorer)
(global-set-key (kbd "C-x b")     'lusty-buffer-explorer)
