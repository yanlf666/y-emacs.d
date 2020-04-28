

;;需要PACK安装：
;;1:sr-speedbar
;;2:auto-complete
;;3:rainbow-delimiters


;;elpa插件包安装地址
;;(require 'package)
;;(add-to-list 'package-archives
;;	     '("melpa" . "http://elpa.emacs-china.org/melpa/") t)
;;(package-initialize)


(add-to-list 'load-path "~/y-emacs.d/package/")
(load "elpa.el")

(add-to-list 'load-path "~/y-emacs.d/init/")
(load "init-local.el")

(add-to-list 'load-path "~/y-emacs.d/theme/")


(load "labburn-theme-source-code.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 150 :width normal)))))
