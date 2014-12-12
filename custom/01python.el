(defun py-jedi-mode-keys ()
      (local-set-key (kbd "C-c g") 'jedi:goto-definition)
)

(add-hook 'python-mode-hook 'linum-mode)

(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'jedi:ac-setup)
(add-hook 'python-mode-hook 'show-paren-mode)
(add-hook 'python-mode-hook 'py-jedi-mode-keys)

(add-hook 'python-mode-hook (lambda () (interactive) (column-marker-1 80)))
