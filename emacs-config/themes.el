

;; themes.el

;; themes 色调配置文件
;;(add-to-list 'load-path
;;             "~/y-emacs/themes/")
;;(add-to-list 'custom-theme-load-path
;;	     "~/y-emacs/themes/zenburn-emacs")
;;(load-theme 'zenburn t)

;;(add-to-list 'custom-theme--load-path
;;             "~/y-emacs/themes/emacs-color-theme-solarized/ ")
;;(load-theme 'solarized-theme t)

(add-to-list `custom-theme-load-path
	     "~/y-emacs/themes/melancholy-theme")
(load-theme 'melancholy t)

(provide 'themes)
