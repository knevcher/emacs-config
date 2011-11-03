(add-to-list 'load-path "~/.emacs.d/elpa/ruby-mode-1.1/")
(add-to-list 'load-path "~/.emacs.d/elpa/ruby-electric-1.1/")
(add-to-list 'load-path "~/.emacs.d/elpa/rspec-mode-0.2/")


(require 'ruby-mode-autoloads)
(require 'ruby-electric-autoloads)
(require 'rspec-mode-autoloads)

(add-hook 'ruby-mode-hook
          (lambda()
            (set (make-local-variable 'indent-tabs-mode) 'nil)
            (set (make-local-variable 'tab-width) 2)
            (ruby-electric-mode t)
            (linum-mode 1)
            ))



