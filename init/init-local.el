

;;窗口大小
(setq default-frame-alist
      '((height . 20) (width . 60) (menu-bar-lines . 8) (tool-bar-lines . 8)))




;;(global-set-key "\C-h" 'backward-delete-char-untabify)  
;;(global-set-key "\d" 'delete-char)  
;;状态栏显示行列信息
(column-number-mode t)
;;15妙无动作自动保存
(setq-default auto-save-timeout 15)

;;100个字符间隔，自动保存
(setq-default auto-save-interval 100)

;;关闭自动备份
(setq make-backup-files nil)

;;工具栏隐藏
;;(tool-bar-mode 0)

;;括号补全
(electric-pair-mode t)

;;配对括号高亮
;;(electric-pair-mode t)
(show-paren-mode 1)

;;当前行高亮
;;(global-hl-line-mode 1)

;;行号
(global-linum-mode t)

;;显示时间
(display-time-mode t)


(fset 'yes-or-no-p 'y-or-n-p)
;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no。

;;光标变竖线
;;(setq-default cursor-type 'bar )

;;防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动，可以很好的看到上下文。
(setq scroll-margin 3 scroll-conservatively 10000)


 ;;把c语言风格设置为k&r风格
(add-hook 'c-mode-hook
	  '(lambda ()
	     (c-set-style "k&r")))




