(require 'ido)
(ido-mode t)

(evil-mode 1)

(load-theme 'zenburn t)
(powerline-default-theme)
(global-set-key [f8] 'neotree-toggle)
(add-hook 'neotree-mode-hook
          (lambda ()
            (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
            (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
            (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
            (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

(add-hook 'after-init-hook #'global-flycheck-mode)
(windmove-default-keybindings) 
(prefer-coding-system 'utf-8)

(custom-set-variables
 '(custom-safe-themes (quote ("b7d8113de2f7d9a3cf42335d8eed8415b5a417e7f6382e59076f9f4ae4fa4cee" default))))
(custom-set-faces
 )
(setq backup-directory-alist `(("." . "~/.saves")))

;; плавный скролл
(setq scroll-conservatively 50)
(setq scroll-margin 4)
