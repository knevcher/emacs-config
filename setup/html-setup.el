(setq auto-mode-alist (cons '("\\.phtml$" . html-mode) auto-mode-alist))

(add-hook 'html-mode
          '(lambda ()
             (highlight-symbol-mode 1)
             ))

(add-hook 'html-mode-hook #'(lambda nil (setq sgml-xml-mode t)))
