;;(set-default-font "Inconsolata-12")

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
;; '(default ((t (:inherit nil :stipple nil :background "#0C1021" :foreground "#F8F8F8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "microsoft" :family "Consolas"))))
;; '(mmm-cleanup-submode-face ((t nil)))
;; '(mumamo-background-chunk-submode ((((class color) (min-colors 88) (background dark)) nil)))
;; '(mumamo-border-face-out ((t (:inherit font-lock-preprocessor-face :slant italic :weight bold))))

 ;; diff
 '(diff-added ((t (:foreground "#559944"))))
 '(diff-context ((t nil)))
 '(diff-file-header ((((class color) (min-colors 88) (background dark)) (:foreground "RoyalBlue1"))))
 '(diff-function ((t (:foreground "#00bbdd"))))
 '(diff-header ((((class color) (min-colors 88) (background dark)) (:foreground "RoyalBlue1"))))
 '(diff-hunk-header ((t (:foreground "#fbde2d"))))
 '(diff-nonexistent ((t (:inherit diff-file-header :strike-through nil))))
 '(diff-refine-change ((((class color) (min-colors 88) (background dark)) (:background "#182042"))))
 '(diff-removed ((t (:foreground "#de1923"))))
 '(linum ((t (:inherit (shadow default) :foreground "#8b8bcd"))))
 '(trailing-whitespace ((t (:inherit font-lock-warning-face :background "red"))))
 )
