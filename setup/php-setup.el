(add-to-list 'load-path "~/.emacs.d/modules/php-mode/")
(add-to-list 'load-path "~/.emacs.d/modules/geben/")

(require 'php-mode)

(setq c-basic-offset 2)
(require 'php-electric)

(add-hook 'php-mode-hook
          '(lambda () (php-electric-mode 1)))

;; debugging php
(autoload 'geben "geben" "PHP Debugger on Emacs" t)