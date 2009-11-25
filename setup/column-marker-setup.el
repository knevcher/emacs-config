(require 'column-marker)

(add-hook 'php-mode-hook
          '(lambda () (interactive) (column-marker-1 80)))

(add-hook 'python-mode-hook
          '(lambda () (interactive) (column-marker-1 79)))

(add-hook 'js2-mode-hook
          '(lambda () (interactive) (column-marker-1 80)))

(add-hook 'html-mode-hook
          '(lambda () (interactive) (column-marker-1 80)))

