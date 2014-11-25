(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(require 'ido)
(ido-mode t)

(defun py-jedi-mode-keys ()
      (local-set-key (kbd "C-c g") 'jedi:goto-definition)
)

(load-theme 'zenburn t)
(add-hook 'python-mode-hook 'linum-mode)

(evil-mode 1)

(powerline-default-theme)

(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'jedi:ac-setup)
(add-hook 'python-mode-hook 'show-paren-mode)
(add-hook 'python-mode-hook 'py-jedi-mode-keys)

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
(add-hook 'python-mode-hook (lambda () (interactive) (column-marker-1 80)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("b7d8113de2f7d9a3cf42335d8eed8415b5a417e7f6382e59076f9f4ae4fa4cee" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq backup-directory-alist `(("." . "~/.saves")))

;; плавный скролл
(setq scroll-conservatively 50)
(setq scroll-margin 4)
