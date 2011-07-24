(setq-default py-indent-offset 4)

(add-hook 'python-mode-hook
    (function (lambda ()
                (setq indent-tabs-mode nil)
                (setq c-indent-level 4))))

(add-hook 'python-mode-hook
  (function (lambda ()
    (setq indent-tabs-mode nil
       tab-width 4))))

(add-to-list 'load-path "~/.emacs.d/modules/python/")
(add-to-list 'load-path "~/.emacs.d/modules/pymacs")
(add-to-list 'load-path "~/.emacs.d/elpa/guess-style-0.1/")

(autoload 'python-mode "python-mode" "Python Mode." t)
(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

(require 'guess-style-autoloads)
(require 'guess-style)

(autoload 'guess-style-set-variable "guess-style" nil t)
(autoload 'guess-style-guess-variable "guess-style")
(autoload 'guess-style-guess-all "guess-style" nil t)

(add-hook 'python-mode-hook 'guess-style-guess-all)
(global-guess-style-info-mode 1)

;;(require 'python-init)
(require 'ipython)
(setq py-python-command-args '( "-colors" "Linux"))
(defadvice py-execute-buffer (around python-keep-focus activate)
"return focus to python code buffer"
(save-excursion ad-do-it))

(add-hook 'python-mode
          '(lambda ()
             (highlight-symbol-mode 1)
             ))

;;(load-library "pylint")
;;(load-library "pylint-flymake")

(require 'python-pylint)
(require 'python-pep8)

