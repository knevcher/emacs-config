(add-to-list 'load-path "~/.emacs.d/modules/anything/")

(require 'anything-config)

(defun my-anything ()
  (interactive)
  (anything-other-buffer
   '(anything-c-source-buffers
     anything-c-source-file-name-history
     anything-c-source-info-pages
     anything-c-source-info-elisp
     anything-c-source-man-pages
     anything-c-source-locate
     anything-c-source-emacs-commands)
   " *my-anything*"))
