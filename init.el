(require 'package)
(package-initialize)
(set-default-font "Monaco-12")
(fset 'yes-or-no-p 'y-or-n-p) ; 将yes/no替换为y/n
(display-time-mode 1) ; 显示时间
(setq display-time-24hr-format t) ; 24小时格式
(setq display-time-day-and-date t) ; 显示日期
(mouse-avoidance-mode 'animate)
(column-number-mode 1)
;;禁用工具栏
(tool-bar-mode 0)
;;禁用菜单栏，F10 开启关闭菜单
;;(menu-bar-mode 0)
;;禁用启动画面
(setq inhibit-startup-message t)
;; 去掉滚动栏
(scroll-bar-mode 0)
;;页宽
(setq default-fill-column 90)
;;以空行结束
(setq require-final-newline t)
;;指针不要闪，我的眼睛花了
(blink-cursor-mode -1)
(transient-mark-mode 1)
;;当指针到一个括号时，自动显示所匹配的另一个括号
(show-paren-mode 1)
;;高亮显示成对括号，但不来回弹跳
(show-paren-mode t)
(setq show-paren-style 'parentheses)
;;不生成临时文件
(setq-default make-backup-files nil)
;; 在标题栏提示你目前在什么位置
(setq frame-title-format "Cifer@%b")
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(setq package-archives
  '(("gnu" . "http://elpa.gnu.org/packages/")
    ("marmalade" . "http://marmalade-repo.org/packages/")
    ("melpa" . "http://melpa.org/packages/")))

;;helm
;;(require 'helm-config)

;;elixir mode
(require 'elixir-mode)
(global-company-mode t)
(require 'alchemist)
(require 'ruby-end)
(setq alchemist-project-compile-when-needed t)
(add-to-list 'elixir-mode-hook
  (defun auto-activate-ruby-end-mode-for-elixir-mode ()
    (set (make-variable-buffer-local 'ruby-end-expand-keywords-before-re)
    "\\(?:^\\|\\s-+\\)\\(?:do\\)")
    (set (make-variable-buffer-local 'ruby-end-check-statement-modifiers) nil)
       (ruby-end-mode +1)))

;;smex
;(require 'smex)
;(global-set-key (kbd "M-x") 'smex)
;(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
;(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;yasnippet
(yas-global-mode 1)
(setq yas-snippet-dirs '("/Users/cifer/.emacs.d/snippets"))

;;projectile
(projectile-global-mode)
(setq projectile-require-project-root nil)
(setq projectile-completion-system 'helm)
(require 'helm-projectile)
(helm-projectile-on)

;;ace-jump
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-c C-c SPC") 'ace-jump-char-mode)

;;powerline
(require 'powerline)


;;path
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;lua
(require 'lua-mode)

;;multiple
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


;;helm
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(helm-mode 1)
(helm-autoresize-mode 1)

;;theme
(load-theme 'base16-ocean-dark t)

;; no tabs
(setq-default indent-tabs-mode nil)

;;blank-mode
(require 'blank-mode)

;;proxy
(setq url-proxy-services '(("http" . "127.0.0.1:65432")))

;;elm
(require 'elm-mode)

;; indention
(highlight-indentation-mode)

;; hide menu bar
(menu-bar-mode -1)

;;whitespace
(global-whitespace-mode)

;; slime setup
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(require 'slime-autoloads)
;注意这里加载的是 slime-autoloads，而不是 slime，要不然C-c C-c等很多功能都没有
(slime-setup '(slime-fancy))
;(slime-setup)
