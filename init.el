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
