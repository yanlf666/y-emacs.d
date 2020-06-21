

;; init-base.el

;;fonts 字体配置文件 fonts-fira 字体  fonts-hack
(set-default-font "hack 16")

;;窗口大小
(setq initial-frame-alist
      '((top . 100)(left . 100)(width . 80)(height . 20)))

;; 默认工作目录
(setq command-line-default-directory "~/y-msp430-c/" )

;;状态
;;状态栏显示行列信息
(column-number-mode t)
;;工具栏隐藏
(tool-bar-mode 0)
;;显示时间
(display-time-mode t)

;;保存
;;15妙无动作自动保存
(setq-default auto-save-timeout 15)
;;100个字符间隔，自动保存
(setq-default auto-save-interval 100)
;;关闭自动备份
(setq make-backup-files nil)

;;功能
;;括号补全
(electric-pair-mode t)
;;配对括号高亮
(show-paren-mode 1)
;;当前行高亮
(global-hl-line-mode 1)
;;行号
(global-linum-mode t)
;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no。
(fset 'yes-or-no-p 'y-or-n-p)
;;光标变竖线
;;(setq-default cursor-type 'bar )
;;防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动，可以很好的看到上下文。
(setq scroll-margin 3 scroll-conservatively 10000)

;;把c语言风格设置为k&r风格
(add-hook 'c-mode-hook
	  '(lambda ()
	     (c-set-style "k&r")))

(provide 'init-base)


