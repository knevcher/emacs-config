(add-to-list 'load-path "~/.emacs.d/modules/anything/")
(require 'anything-config)

(defun my-anything ()
  (interactive)
  (anything-other-buffer
   '(anything-c-source-buffers
     anything-c-source-recentf
     anything-c-source-files-in-current-dir+
     anything-c-source-file-name-history
     anything-c-source-locate
     anything-c-source-emacs-commands)
   " *my-anything*"))

(global-set-key (kbd "C-x b") 'my-anything)

(global-set-key (kbd "C-c I")  ;; i -> info
  (lambda () (interactive)
    (anything
      :prompt "Info about: "
      :candidate-number-limit 3
      :sources
      '(anything-c-source-info-pages
        anything-c-source-man-pages             ;; man pages
        anything-c-source-info-emacs))))        ;; emacs


;; (add-hook 'emacs-lisp-mode-hook
;;   (lambda()
;;   ;; other stuff...
;;   ;; ...
;;   ;; put useful info under C-c i
;;     (local-set-key (kbd "C-c i")
;;       (lambda() (interactive)
;;         (anything
;;           :prompt "Info about: "
;;           :candidate-number-limit 5
;;           :sources
;;           '( anything-c-source-emacs-functions
;;              anything-c-source-emacs-variables
;;              anything-c-source-info-elisp
;;              anything-c-source-emacs-commands
;;              anything-c-source-emacs-source-defun
;;              anything-c-source-emacs-lisp-expectations
;;              anything-c-source-emacs-lisp-toplevels
;;              anything-c-source-emacs-functions-with-abbrevs
;;              anything-c-source-info-emacs))))

