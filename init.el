(setq mac-command-modifier 'meta) ; sets the Command key to Meta
(setq mac-option-modifier 'super)

(add-to-list 'load-path "/Users/harrison/.emacs.d")
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(add-to-list 'load-path "/Users/harrison/.emacs.d/")
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)

(add-to-list 'load-path "/Users/harrison/.emacs.d/elpa/scala-mode-2.11.2")
(require 'scala-mode-auto)

(setq user-extempore-directory "/usr/local/Cellar/extempore/0.53/")
(autoload 'extempore-mode "extempore.el" "" t)
(add-to-list 'auto-mode-alist '("\\.xtm$" . extempore-mode))

(load "comment-or-uncomment-region-or-line.el")

(require 'key-chord)
(key-chord-mode 1)

(key-chord-define-global "jk" 'ace-jump-mode)
;; (define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 80))

(delete-selection-mode 1)
(column-number-mode 1)
(ido-mode 1)

(global-set-key (kbd "C-;") 'comment-or-uncomment-region-or-line)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tsdh-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa-stable.milkbox.net/packages/") t)

(package-initialize)
