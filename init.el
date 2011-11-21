(defvar *emacs-load-start* (current-time))

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/modules/")
(add-to-list 'load-path "~/.emacs.d/modules/apel/")

;;(load "~/.emacs.d/setup/byte-code-setup.el")
(load "~/.emacs.d/setup/maxframe-setup.el")
(load "~/.emacs.d/setup/env.el")
(load "~/.emacs.d/setup/faces-setup.el")
(load "~/.emacs.d/setup/global-setup.el")
(load "~/.emacs.d/setup/mode-compile-setup.el")
(load "~/.emacs.d/setup/gnugo-setup.el")
(load "~/.emacs.d/setup/org-setup.el")
(load "~/.emacs.d/setup/sql-setup.el")
(load "~/.emacs.d/setup/elscreen-setup.el")
;;(load "~/.emacs.d/setup/jabber-setup.el")
(load "~/.emacs.d/setup/js2-setup.el")
(load "~/.emacs.d/setup/coffee-setup.el")
;;(load "~/.emacs.d/setup/php-setup.el")
(load "~/.emacs.d/setup/nxhtml-php-setup.el")
(load "~/.emacs.d/setup/ido-filecache-setup.el")
;;(load "~/.emacs.d/setup/lusty-setup.el")
(load "~/.emacs.d/setup/ibuffer-setup.el")
(load "~/.emacs.d/setup/scheme-setup.el")
(load "~/.emacs.d/setup/linum-setup.el")
(load "~/.emacs.d/setup/autocomplete-setup.el")
(load "~/.emacs.d/setup/moccur-setup.el")
(load "~/.emacs.d/setup/haskell-setup.el")
(load "~/.emacs.d/setup/color-theme-setup.el")
;;(load "~/.emacs.d/setup/emms-setup.el")
(load "~/.emacs.d/setup/erc-setup.el")
(load "~/.emacs.d/setup/yasnippet-setup.el")
(load "~/.emacs.d/setup/anything-setup.el")
(load "~/.emacs.d/setup/hideshow-setup.el")
(load "~/.emacs.d/setup/highlight-symbol-setup.el")
(load "~/.emacs.d/setup/html-setup.el")
(load "~/.emacs.d/setup/psvn-setup.el")
(load "~/.emacs.d/setup/shell-setup.el")
(load "~/.emacs.d/setup/user-func-setup.el")
(load "~/.emacs.d/setup/dired-x-setup.el")
(load "~/.emacs.d/setup/smerge-setup.el")
(load "~/.emacs.d/setup/postgresql-setup.el")
(load "~/.emacs.d/setup/git-setup.el")
(load "~/.emacs.d/setup/uniquify-setup.el")
(load "~/.emacs.d/setup/alias-setup.el")
(load "~/.emacs.d/setup/breadcrumb-setup.el")
(load "~/.emacs.d/setup/column-marker-setup.el")
(load "~/.emacs.d/setup/python-setup.el")
(load "~/.emacs.d/setup/ruby-mode-setup.el")
(load "~/.emacs.d/setup/narrow-setup.el")
(load "~/.emacs.d/setup/which-function-mode-setup.el")
;;(load "~/.emacs.d/setup/icicles-setup.el")
(load "~/.emacs.d/setup/jd-repo-setup.el")
(load "~/.emacs.d/setup/sml-setup.el")
;;(load "~/.emacs.d/setup/wanderlast-setup.el")
(load "~/.emacs.d/setup/unique-setup.el")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(default-input-method "russian-computer")
 '(display-time-mode t)
 '(quack-programs (quote ("mzscheme" "bigloo" "csi" "csi -hygienic" "gosh" "gracket" "gsi" "gsi ~~/syntax-case.scm -" "guile" "kawa" "mit-scheme" "racket" "racket -il typed/racket" "rs" "scheme" "scheme48" "scsh" "sisc" "stklos" "sxi"))))

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
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(diff-added ((t (:foreground "#559944"))))
 '(diff-context ((t nil)))
 '(diff-file-header ((((class color) (min-colors 88) (background dark)) (:foreground "RoyalBlue1"))))
 '(diff-function ((t (:foreground "#00bbdd"))))
 '(diff-header ((((class color) (min-colors 88) (background dark)) (:foreground "RoyalBlue1"))))
 '(diff-hunk-header ((t (:foreground "#fbde2d"))))
 '(diff-nonexistent ((t (:inherit diff-file-header :strike-through nil))))
 '(diff-refine-change ((((class color) (min-colors 88) (background dark)) (:background "#182042"))))
 '(diff-removed ((t (:foreground "#de1923"))))
 '(linum ((t (:inherit (shadow default) :foreground "#8b8bcd"))))
 '(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) (:background "black"))))
 '(mumamo-background-chunk-submode1 ((((class color) (min-colors 88) (background dark)) (:background "#002b36"))))
 '(trailing-whitespace ((t (:inherit font-lock-warning-face :background "red")))))
