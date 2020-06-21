

;; plugins.el

;; 模板yasnippet包配置
(add-to-list 'load-path
	     "~/y-emacs.d/plugins/yasnippet/")
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/y-emacs.d/y-config/snippets/ "))
(yas-global-mode 1)


;; google-c-style
;;(add-to-list 'load-path
;;	     (expand-file-name "~/y-emacs.d/plugins/styleguide/"))
;;(require 'google-c-style)
;;(add-hook 'c-mode-common-hook 'google-set-c-style)
;;(add-hook 'c-mode-common-hook 'google-make-newline-indent)

(provide 'plugins)





        
