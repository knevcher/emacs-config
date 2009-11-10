(add-to-list 'load-path "~/.emacs.d/modules/yasnippet/")

(require 'yasnippet-bundle)
(yas/initialize)
(yas/load-directory "~/.emacs.d/modules/yasnippet")
;; I don't like using partial words for completion
(setq yas/key-syntaxes '("w_" "w_." "^ "))