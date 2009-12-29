(add-to-list 'load-path "~/.emacs.d/modules/python/")
(autoload 'python-mode "python-mode" "Python Mode." t)
(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

(require 'python-init)
(require 'ipython)
(setq py-python-command-args '( "-colors" "Linux"))
(defadvice py-execute-buffer (around python-keep-focus activate)
"return focus to python code buffer"
(save-excursion ad-do-it))

(load-library "pylint")
(load-library "pylint-flymake")
