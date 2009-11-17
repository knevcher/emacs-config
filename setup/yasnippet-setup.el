(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-bundle-0.6.1/")

(load "~/.emacs.d/elpa/yasnippet-bundle-0.6.1/yasnippet-bundle-autoloads.el")
(provide 'yasnippet-bundle-autoloads)
;;(require 'yasnippet-bundle)
;;(yas/initialize)
;;(yas/load-directory "~/.emacs.d/modules/yasnippet")
;; I don't like using partial words for completion
(setq yas/key-syntaxes '("w_" "w_." "^ "))