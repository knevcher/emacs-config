(add-hook 'python-mode-hook
          (lambda ()
            (set-variable 'py-indent-offset 4)
            (set-variable 'indent-tabs-mode nil)
                                        ;(define-key py-mode-map [tab] 'yas/expand)
                                        ;(setq yas/after-exit-snippet-hook 'indent-according-to-mode)
            ))
;; pymacs
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
;;(eval-after-load "pymacs"
;; '(add-to-list 'pymacs-load-path YOUR-PYMACS-DIRECTORY"))
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Auto-completion
;;; Integrates:
;;; 1) Rope
;;; 2) Yasnippet
;;; all with AutoComplete.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun prefix-list-elements (list prefix)
(let (value)
(nreverse
(dolist (element list value)
(setq value (cons (format "%s%s" prefix element) value))))))
(defvar ac-source-rope
'((candidates
. (lambda ()
(prefix-list-elements (rope-completions) ac-target))))
"Source for Rope")
(defun ac-python-find ()
"Python `ac-find-function'."
(require 'thingatpt)
(let ((symbol (car-safe (bounds-of-thing-at-point 'symbol))))
(if (null symbol)
(if (string= "." (buffer-substring (- (point) 1) (point)))
(point)
nil)
symbol)))
(defun ac-python-candidate ()
"Python `ac-candidates-function'"
(let (candidates)
(dolist (source ac-sources)
(if (symbolp source)
(setq source (symbol-value source)))
(let* ((ac-limit (or (cdr-safe (assq 'limit source)) ac-limit))
(requires (cdr-safe (assq 'requires source)))
cand)
(if (or (null requires)
(>= (length ac-target) requires))
(setq cand
(delq nil
(mapcar (lambda (candidate)
(propertize candidate 'source source))
(funcall (cdr (assq 'candidates source)))))))
(if (and (> ac-limit 1)
(> (length cand) ac-limit))
(setcdr (nthcdr (1- ac-limit) cand) nil))
(setq candidates (append candidates cand))))
(delete-dups candidates)))
(add-hook 'python-mode-hook
(lambda ()
(auto-complete-mode 1)
(set (make-local-variable 'ac-sources)
(append ac-sources '(ac-source-rope)));;(append ac-sources '(ac-source-rope) '(ac-source-yasnippet)))
(set (make-local-variable 'ac-find-function) 'ac-python-find)
(set (make-local-variable 'ac-candidate-function) 'ac-python-candidate)
(set (make-local-variable 'ac-auto-start) nil)))
;;Ryan's python specific tab completion
(defun ryan-python-tab ()
; Try the following:
; 1) Do a yasnippet expansion
; 2) Do a Rope code completion
; 3) Do an indent
(interactive)
(if (eql (ac-start) 0)
(indent-for-tab-command)))
(defadvice ac-start (before advice-turn-on-auto-start activate)
(set (make-local-variable 'ac-auto-start) t))
(defadvice ac-cleanup (after advice-turn-off-auto-start activate)
(set (make-local-variable 'ac-auto-start) nil))
(define-key py-mode-map "\M-\C-i" 'ryan-python-tab)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; End Auto Completion
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Auto Syntax Error Hightlight

(provide 'python-init)
