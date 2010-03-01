(add-to-list 'load-path "~/.emacs.d/modules/moccur/")

(require 'color-moccur)
(require 'moccur-edit)

;; automatically save buffer
(defadvice moccur-edit-change-file
  (after save-after-moccur-edit-buffer activate)
  (save-buffer))

(load "color-moccur")
(load "moccur-edit")

