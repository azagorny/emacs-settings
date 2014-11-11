(add-to-list 'load-path "~/.emacs.d/")
(load "package")
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
    (with-current-buffer
            (url-retrieve-synchronously
                     "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
                (goto-char (point-max))
                    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

(add-to-list 'load-path "~/.emacs.d/evil" )
(add-to-list 'load-path "~/.emacs.d/emacs-powerline" )
(add-to-list 'load-path "~/.emacs.d/color-themes")
(require 'powerline)
(require 'evil)
(require 'color-theme)
(require 'ido)
(require 'highlight-chars)
(evil-mode 1)
(ido-mode t)
(color-theme-initialize)
(color-theme-almost-monokai)
(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'jedi:ac-setup)
(iswitchb-mode 1)
