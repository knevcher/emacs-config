;;убрать подсвечивание выделенной области
(transient-mark-mode nil)

;; Нормальная вставка
(setq x-select-enable-clipboard t)

;; Ненужные пробелы
(setq show-trailing-whitespace t)

;; unused lines
(setq indicate-empty-lines t)

(iswitchb-mode 1)

;; subword mode (Перемещение по частям слов lmbProjectController)
;;(subword-mode 1)

;; показывать соответствующие скобки
(show-paren-mode t)

(setq indicate-empty-lines nil)

(setq-default indent-tabs-mode nil)

(global-hl-line-mode 1)
(set-face-background 'hl-line "#00556A")