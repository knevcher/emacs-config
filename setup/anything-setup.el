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
