(load "~/.emacs.d/modules/nxhtml/autostart.el")

(add-to-list 'load-path "~/.emacs.d/modules/nxhtml/related/")
(add-to-list 'load-path "~/.emacs.d/modules/geben/")

(require 'php-mode)

(setq c-basic-offset 2)
;;(require 'php-electric)

(add-hook 'php-mode-hook
          '(lambda () ;;(php-electric-mode 1)
             (highlight-symbol-mode 1)
             ))
(add-hook 'php-mode-hook
     (lambda ()
       (c-set-offset 'arglist-intro '+)
       (c-set-offset 'arglist-close 0)))

;; debugging php
;;(autoload 'geben "geben" "PHP Debugger on Emacs" t)
