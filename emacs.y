

;;需要PACK安装：
;;1:sr-speedbar
;;2:auto-complete
;;3:rainbow-delimiters


;;elpa插件包安装地址
;;(require 'package)
;;(add-to-list 'package-archives
;;	     '("melpa" . "http://elpa.emacs-china.org/melpa/") t)
;;(package-initialize)


(add-to-list 'load-path "~/y-emacs.d/melpa/")
(load "elpa.el")

(add-to-list 'load-path "~/y-emacs.d/plugins/")
     (load "plug.el")
(add-to-list 'load-path "~/y-emacs.d/init/")
     (load "init-local.el")

(add-to-list 'load-path "~/y-emacs.d/org-mode/")
(load "org-mode.el")


;; themes

(add-to-list 'load-path "~/y-emacs.d/themes/")

;;(load "jazz-theme.el")
;;(load "planet-theme.el")
;;(load "labburn-theme-source-code.el")
;;(load "monokai-theme.el")
;;(add-to-list 'custom-theme-load-path "/path/to/emacs-leuven-theme")
;;(load-theme 'leuven t) 

(add-to-list 'custom-theme-load-path "~/y-emacs.d/themes/zenburn-emacs")
(load-theme 'zenburn t)

;;(add-to-list 'load-path "~/y-emacs.d/themes/moe-theme.el/")
;;    (require 'moe-theme)

;;(add-to-list 'load-path "~/y-emacs.d/themes/ample-theme/")
;;(load "ample-theme.el")
;;(load "ample-flat-theme.el")
;;(load "ample-light-theme.el")
;;fonts

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(package-selected-packages
   (quote
    (company-ycmd company rainbow-delimiters company-tabnine auto-complete)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Code" :foundry "CTDB" :slant normal :weight normal :height 158 :width normal)))))
