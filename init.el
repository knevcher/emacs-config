(defvar *emacs-load-start* (current-time))

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/modules/")
(add-to-list 'load-path "~/.emacs.d/modules/apel/")

(load "~/.emacs.d/setup/maxframe-setup.el")
(load "~/.emacs.d/setup/env.el")
(load "~/.emacs.d/setup/faces-setup.el")
(load "~/.emacs.d/setup/global-setup.el")
;;(load "~/.emacs.d/setup/gnugo-setup.el")
(load "~/.emacs.d/setup/org-setup.el")
(load "~/.emacs.d/setup/elscreen-setup.el")
;;(load "~/.emacs.d/setup/jabber-setup.el")
(load "~/.emacs.d/setup/js2-setup.el")
(load "~/.emacs.d/setup/php-setup.el")
(load "~/.emacs.d/setup/ido-filecache-setup.el")
(load "~/.emacs.d/setup/scheme-setup.el")
(load "~/.emacs.d/setup/linum-setup.el")
(load "~/.emacs.d/setup/python-setup.el")
(load "~/.emacs.d/setup/autocomplete-setup.el")
(load "~/.emacs.d/setup/haskell-setup.el")
(load "~/.emacs.d/setup/color-theme-setup.el")
;;(load "~/.emacs.d/setup/emms-setup.el")
(load "~/.emacs.d/setup/erc-setup.el")
(load "~/.emacs.d/setup/yasnippet-setup.el")
;;(load "~/.emacs.d/setup/anything-setup.el")
(load "~/.emacs.d/setup/hideshow-setup.el")
(load "~/.emacs.d/setup/html-setup.el")
(load "~/.emacs.d/setup/psvn-setup.el")
(load "~/.emacs.d/setup/shell-setup.el")
(load "~/.emacs.d/setup/user-func-setup.el")
(load "~/.emacs.d/setup/dired-x-setup.el")
(load "~/.emacs.d/setup/postgresql-setup.el")
(load "~/.emacs.d/setup/git-setup.el")
(load "~/.emacs.d/setup/uniquify-setup.el")
(load "~/.emacs.d/setup/alias-setup.el")
(load "~/.emacs.d/setup/breadcrumb-setup.el")
(load "~/.emacs.d/setup/column-marker-setup.el")
(load "~/.emacs.d/setup/unique-setup.el")
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(default-input-method "russian-computer")
 '(display-time-mode t))

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs

(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(message "My init.el loaded in %ds. \n Ok." (destructuring-bind (hi lo ms) (current-time) (- (+ hi lo) (+ (first *emacs-load-start*) (second *emacs-load-start*)))))
