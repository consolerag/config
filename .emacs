(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode 0)
(setq inhibit-startup-screen t)
(defun display-startup-echo-area-message ()
  (message ""))
(electric-pair-mode t)
(require 'evil)
(evil-mode 1)
(require 'key-chord)
(key-chord-mode 1)
(require 'powerline-evil)
(powerline-evil-vim-color-theme)
(require 'heroku-theme)
(load-theme 'heroku t)
(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))
(add-hook 'window-setup-hook 'on-after-init)
(set-face-attribute 'mode-line nil
		    :foreground "Black"
		    :background "Grey"
		                        :box nil)
(display-time-mode t)
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(setq scroll-margin 5
  scroll-conservatively 9999
  scroll-step 1)
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(defun sudo-edit (&optional arg)
    (interactive "P")
    (if (or arg (not buffer-file-name))
	(find-file (concat "/sudo:root@localhost:"
			   (ido-read-file-name "Find file(as root): ")))
      (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))
(global-set-key (kbd "C-x C-r") 'sudo-edit)
(global-set-key (kbd "<C-up>") 'shrink-window)
(global-set-key (kbd "<C-down>") 'enlarge-window)
(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)

(desktop-save-mode 1)
(require 'helm-config)
(require 'helm)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scss?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js?\\'" . web-mode))

(require 'zone)
(zone-when-idle 120)
(setq linum-format "%4d   ")
(add-hook 'after-change-major-mode-hook
   '(lambda ()
      (linum-mode (if (or (equal major-mode 'lisp-interaction-mode)(equal major-mode 'text-mode) (equal major-mode 'term-mode) (equal major-mode 'help-mode)) 0 1))))
(setq initial-scratch-message "\


     
     
                 .s    s.                                                    
                       SS. .s5SSSs.  .s5SSSs.  .s    s.  .s    s.  .s5SSSs.  
       .sSs.     sSs.  S%S       SS.       SS.       SS.       SS.       SS. 
       S%%%S     SS`S. S%S sS    S%S sS    S%S sS    S%S sS    S%S sS    S%S 
       `:;:'     SS `S.S%S SS    S%S SS    S%S SSSs. S%S SS    S%S SS .sSSS  
                 SS  `sS%S SS    S%S SS    S%S SS    S%S SS    S%S SS    S%S 
       .sSs.     SS    `:; SS    `:; SS    `:; SS    `:; SS    `:; SS    `:; 
       S%%%S     SS    ;,. SS    ;,. SS    ;,. SS    ;,. SS    ;,. SS    ;,. 
       `:;:'     :;    ;:' `:;;;;;:' `:;;;;;:' :;    ;:' `:;;;;;:' `:;;;;;:'
     






")

