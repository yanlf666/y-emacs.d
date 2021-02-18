

;; org-mode.el

;;缩进
(setq org-startup-indented t)


;; 标题
;; #+TITLE: 标题
;; 制表C+c |

;; 分行区块 
;; #+BEGIN_VERSE
;; #+END_VERSE

;;  以# 开头的行作注释，不会导出
;;  列表
;;      有序和无序两种，
;;                 无序：以“-” “+”
;;                 有序：以“1” “1）”
;; 分割线  5条-----
;; 导出文件格式  C-c C-e h h


;; 缩进区块
;; #+BEGIN_QUOTE
;; #+END_QUOTE

;; 居中区块
;; #+BEGIN_CENTER
;; #+END_CENTER

;; 代码区块
;; #+BEGIN_SRC ruby
;; #+END_SRC


(provide 'org-mode)
