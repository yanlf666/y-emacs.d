;;elpa插件包安装地址
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://elpa.emacs-china.org/melpa-stable/") t )
(package-initialize)


;;company
;;rainbow-delimiters
;; flycheck 
;; helm



;;彩虹括号
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(helm-mode 1)
(require 'helm)
(global-set-key (kbd "M-x") 'helm-M-x)

;; company-mode config
;;要查看或更改已启用的后端列表，请键入 M-x customize-variable RET company-backends 
;;全局启动
(add-hook 'after-init-hook 'global-company-mode)
;; 立即显示建议
(setq company-idle-delay 0)
;;输入一个字符后显示建议
(setq company-minimum-prefix-length 1)
;;循环tab
(setq company-selection-wrap-around t)
;; tab选择
( company-tng-configure-default)
;; 显示数字
(setq company-show-numbers t)
;; 补全后端使用 组合后端 ：with
(add-to-list 'company-backends 
	     '(
		company-clang
		:with company-files
       		:with company-dabbrev
		:with company-dabbrev-code
		:with company-keywords
		))

;;关闭flymake 使用flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)






;;(add-to-list 'load-path "~/.emacs.d/elpa/neotree-20181121.2026/")
;;(require 'neotree)
;;(add-hook 'after-init-hook '(lambda () (neotree-toggle)))

;;(add-to-list 'load-path "~/.emacs.d/elpa/neotree/")
;;(require 'neotree)
;;(add-hook 'after-init-hook '(lambda () (neotree-toggle)))

;;目录树配置
;;(require 'sr-speedbar)
;;(setq sr-speedbar-width 18)
;;(add-hook 'after-init-hook '(lambda () (sr-speedbar-toggle)))

;;(setq sr-speedbar-right-side nil)
;;(global-set-key (kbd "<f2>") (lambda()
;;          (interactive)
;;          (sr-speedbar-toggle)))
;;(setq dframe-update-sr-speedbar t)

;;自动补全C关键字auto-complete
;;(ac-config-default)
;;(setq ac-auto-start 1)
