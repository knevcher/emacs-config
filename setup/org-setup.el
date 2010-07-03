(setq load-path (cons "~/.emacs.d/modules/org/lisp" load-path))
(require 'org-install)

(setq org-log-done 'time)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; (global-set-key "\C-c o" 'org-open-at-point-global)
;; (setq org-log-done 'note)
;; (defun org-summary-todo (n-done n-not-done)
;;   "Switch entry to DONE when all subentries are done, to TODO otherwise."
;;   (let (org-log-done org-log-states)   ; turn off logging
;;     (org-todo (if (= n-not-done 0) "DONE" "TODO"))))

;; (add-hook 'org-after-todo-statistics-hook 'org-summary-todo)

;; (org-remember-insinuate)
;;      (setq org-directory "~/docs/org/")
;;      (setq org-default-notes-file (concat org-directory "/notes.org"))
;;      (define-key global-map "\C-cr" 'org-remember)

;; (setq org-remember-templates
;;       '(("Todo" ?t "* TODO %?\n  %i\n  %a %T" "~/docs/org/TODO.org" "Tasks")
;;         ("Journal" ?j "* %U %?\n\n  %i\n %T " "~/docs/org/life.org")
;;         ("Idea" ?i "* %^{Title}\n  %i\n %T " "~/docs/org/life.org" "New Ideas")))


;;org-mobile-setup
;; Set to the location of your Org files on your local system
(setq org-directory "/media/truecrypt1/docs")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "/media/truecrypt1/docs/notes.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/MobileOrg")
