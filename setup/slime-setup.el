(add-to-list 'load-path "~/.emacs.d/modules/slime/")
(require 'slime-autoloads)

(setq inferior-lisp-program "/usr/bin/sbcl")
(require 'slime)
(slime-setup)

;;(swank:create-server :port 4005 :style :spawn :dont-close t)

