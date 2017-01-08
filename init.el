(setq mac-command-modifier 'meta) ; sets the Command key to Meta
(setq mac-option-modifier 'super)

(add-to-list 'load-path "~/.emacs.d/elisp/")
(let ((default-directory  "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)

(require 'scala-mode-auto)

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
