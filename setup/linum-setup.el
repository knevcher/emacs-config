(require 'linum)
(add-hook 'emacs-lisp-mode-hook
          '(lambda() (linum-mode 1)))
(add-hook 'python-mode-hook
          '(lambda() (linum-mode 1)))
(add-hook 'php-mode-hook
          '(lambda() (linum-mode 1)))
(add-hook 'js2-mode-hook
          '(lambda() (linum-mode 1)))

