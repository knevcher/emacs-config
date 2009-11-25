(require 'emms-setup)
(emms-devel)
(emms-default-players)
;;Show the current track each time EMMS
starts to play a track with "NP : "
(add-hook 'emms-player-started-hook 'emms-show)
(setq emms-show-format "NP: %s")

;;Want to use alsa with mpg321 ?
(setq emms-player-mpg321-parameters '("-o" "alsa"))
(setq emms-player-mpg123-parameters '("-o" "alsa"))