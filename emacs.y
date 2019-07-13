

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


(add-to-list 'load-path "~/y-emacs.d/theme/")

(load "init-local.el")


(load "labburn-theme-source-code.el")
