

;; elpa.el

;;elpa插件包安装地址
(require 'package)


(setq package-archives '(
;;			("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
                       	("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
;;                    	 ("melpa-stable" . "http://mirrors.ustc.edu.cn/elpa/melpa-stable/")
;;                       ("org" . "http://mirrors.ustc.edu.cn/elpa/org/")
))
(package-initialize)


;;company
;;rainbow-delimiters



;; 补全
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; C头文件
(add-to-list 'company-backends 'company-c-headers)
;;本地头文件
;;(add-to-list 'company-c-headers-path-user "/home/y/msp430-gcc-9.3/msp430-elf/include/devices/")



;;彩虹括号
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)



(provide 'elpa)
