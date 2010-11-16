;;(add-to-list 'load-path "~/.emacs.d/modules/magit/")
(add-to-list 'load-path "~/.emacs.d/modules/egg/")
(add-to-list 'load-path "~/.emacs.d/modules/gitsum/")

(require 'egg)
(global-set-key (kbd "<f4>") 'egg-status)

;;git-blame
(require 'git-blame)
(autoload 'git-blame-mode "git-blame"
  "Minor mode for incremental blame for Git." t)
(require 'gitsum)

