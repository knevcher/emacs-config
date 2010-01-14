(add-to-list 'load-path "~/.emacs.d/modules/anything/")
(add-to-list 'load-path "~/.emacs.d/modules/anything-config/")

(require 'anything-config)

;;sourses

(defun anything-c-define-dummy-source (name func &rest other-attrib)
  `((name . ,name)
    (candidates "dummy")
    ,@other-attrib
    (filtered-candidate-transformer
     . (lambda (candidates source)
         (funcall ',func)))
    (requires-pattern . 1)
    (volatile)
    (category create)))

(defun anything-c-dummy-candidate ()
  ;; `source' is defined in filtered-candidate-transformer
  (list (cons (concat (assoc-default 'name source)
                      " '" anything-input "'")
              anything-input)))
(defvar anything-c-source-register
  '((name . "Registers")
    (candidates . anything-c-registers)
    (action ("insert" . insert))))

;; based on list-register.el
(defun anything-c-registers ()
  (loop for (char . val) in register-alist
        collect
        (let ((key (single-key-description char))
              (string (cond
                       ((numberp val)
                        (int-to-string val))
                       ((markerp val)
                        (let ((buf (marker-buffer val)))
                          (if (null buf)
                              "a marker in no buffer"
                            (concat
                             "a buffer position:"
                             (buffer-name buf)
                             ", position "
                             (int-to-string (marker-position val))))))
                       ((and (consp val) (window-configuration-p (car val)))
                        "conf:a window configuration.")
                       ((and (consp val) (frame-configuration-p (car val)))
                        "conf:a frame configuration.")
                       ((and (consp val) (eq (car val) 'file))
                        (concat "file:"
                                (prin1-to-string (cdr val))
                                "."))
                       ((and (consp val) (eq (car val) 'file-query))
                        (concat "file:a file-query reference: file "
                                (car (cdr val))
                                ", position "
                                (int-to-string (car (cdr (cdr val))))
                                "."))
                       ((consp val)
                        (let ((lines (format "%4d" (length val))))
                          (format "%s: %s\n" lines
                                  (truncate-string
                                   (mapconcat (lambda (y) y) val
                                              "^J") (- (window-width) 15)))))
                       ((stringp val)
                        val)
                       (t
                        "GARBAGE!"))))
          (cons (format "register %3s: %s" key string) string))))
