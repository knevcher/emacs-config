(require 'ibuffer)

(global-set-key (kbd "C-x C-b") 'ibuffer)


;; setup ibuffer groups
(setq ibuffer-saved-filter-groups
      (quote (("default"
               ("ATS"
                (filename . "www/ats/ats/"))
               ("Employer"
                (filename . "www/ats/employer/"))
               ("Makeup"
                (filename . "www/ats/makeup/"))
               ("Fav-folders"
                (filename . "www/ats/fav-folders/"))
               ("hh-ats-base"
                (filename . "www/ats/lib/base/"))
               ("hh-ats-limb"
                (filename . "www/ats/lib/limb/"))
               ("Org" ;; all org-related buffers
                (mode . org-mode))
               ("dired"
                (mode . dired-mode))

               ;; ("Mail"
               ;;   (or  ;; mail-related buffers
               ;;    (mode . message-mode)
               ;;    (mode . mail-mode)
               ;;    ;; etc.; all your mail related modes
               ;;    ))
               ;; ("MyProject1"
               ;;   (filename . "src/myproject1/"))
               ;; ("MyProject2"
               ;;   (filename . "src/myproject2/"))
               ;; ("Programming" ;; prog stuff not already in MyProjectX
               ;;   (or
               ;;     (mode . c-mode)
               ;;     (mode . perl-mode)
               ;;     (mode . python-mode)
               ;;     (mode . emacs-lisp-mode)
               ;;     ;; etc
               ;;     ))

               ("PHP" ;; prog stuff not already in MyProjectX
                (mode . php-mode)
                ;; etc
                )
               ("ERC"   (mode . erc-mode))))))

(add-hook 'ibuffer-mode-hook
          (lambda ()
            (ibuffer-switch-to-saved-filter-groups "default")))



