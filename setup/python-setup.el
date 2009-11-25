(add-to-list 'load-path "~/.emacs.d/modules/python/")

(require 'python-mode)

;;(require 'pymacs)
;;(pymacs-load "ropemacs" "rope-")

(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist (cons '("python" . python-mode)
                                   interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)