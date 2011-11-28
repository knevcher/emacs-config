(add-to-list 'load-path "~/.emacs.d/elpa/slime-20100404/")
(require 'slime-autoloads)

(setq inferior-lisp-program "/usr/bin/sbcl")
(require 'slime)
(slime-setup)

