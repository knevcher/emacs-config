(add-to-list 'load-path "~/.emacs.d/modules/gitsum/")

(global-set-key (kbd "<f4>") 'magit-status)

;;git-blame
(require 'git-blame)
(autoload 'git-blame-mode "git-blame"
  "Minor mode for incremental blame for Git." t)
(require 'gitsum)

