(setq ansi-color-names-vector ; better contrast colors
      ["black" "red4" "green4" "yellow4"
       "blue3" "magenta4" "cyan4" "white"])
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(add-hook 'shell-mode-hook '(lambda () (toggle-truncate-lines 1)))
(setq comint-prompt-read-only t)

;; shell-pop
(require 'shell-pop)
(shell-pop-set-internal-mode "terminal")
(shell-pop-set-internal-mode-shell "/bin/bash")
(shell-pop-set-window-height 60)
(shell-pop-set-window-position "bottom")
(global-set-key [f8] 'shell-pop)

