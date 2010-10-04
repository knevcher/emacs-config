(add-to-list 'load-path "~/.emacs.d/elpa/highlight-symbol-1.1")
(require 'highlight-symbol-autoloads)

(global-set-key [(control f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-prev)
