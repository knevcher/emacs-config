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

(setq-default indent-tabs-mode nil)

(global-hl-line-mode 1)
;;(set-face-background 'hl-line "#00556A")
(set-face-background 'hl-line "#292b38")
(setq require-final-newline t)

;;delete trailing whitespaces before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; обязательная завершающая строка в конце файла
(setq require-final-newline t)

;; Flash instead of that annoying bell
(setq visible-bell t)

(setq split-width-threshold nil)

;; режим перехода по строкам, так как они открыты в буфере без переносов
(setq line-move-visual 1)
