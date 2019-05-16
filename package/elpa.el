;;elpa插件包安装地址
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://elpa.emacs-china.org/melpa/") t)
(package-initialize)


;;(add-to-list 'load-path "~/.emacs.d/elpa/neotree-20181121.2026/")
;;(require 'neotree)
;;(add-hook 'after-init-hook '(lambda () (neotree-toggle)))


;;目录树配置
(require 'sr-speedbar)
(setq sr-speedbar-right-side nil)
(setq sr-speedbar-width 25)
;;(setq dframe-update-sr-speedbar t)
(add-hook 'after-init-hook '(lambda () (sr-speedbar-toggle)))
;;(global-set-key (kbd "<f2>") (lambda()
;;          (interactive)
;;          (sr-speedbar-toggle)))





;;自动补全C关键字auto-complete
(ac-config-default)


;;彩虹括号
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)