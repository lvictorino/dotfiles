(setq ring-bell-function 'ignore) ;; removes bell

;; Save temp files to ~/.emacs.d/backups
(make-directory "~/.emacs.d/backups" :parents)
(setq backup-directory-alist
      '(("." . "~/.emacs.d/backups/")))
(setq auto-save-file-name-transforms
      `((".*" ,"~/.emacs.d/backups/" t)))

;; Package manager settings
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Load custom configuration
(load-file "~/.emacs.d/config/bindings.el")
(load-file "~/.emacs.d/config/hooks.el")
(load-file "~/.emacs.d/config/packages.el")
(load-file "~/.emacs.d/config/theme.el")




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-hl-line-mode 1)
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(package-selected-packages (quote (wc-mode wc langtool avy counsel org dash)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#242526" :foreground "#8A9EA6" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight light :height 110 :width normal :foundry "outline" :family "FuraCode Nerd Font Mono"))))
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0))))
 '(cursor ((t (:background "#8C8C80"))))
 '(font-lock-builtin-face ((t (:foreground "#918080"))))
 '(font-lock-comment-face ((t (:foreground "#436073" :weight regular))))
 '(font-lock-constant-face ((t (:foreground "#9C77B2" :weight regular))))
 '(font-lock-function-name-face ((t (:foreground "#BFBDB0" :weight regular))))
 '(font-lock-keyword-face ((t (:foreground "#9DB270"))))
 '(font-lock-string-face ((t (:foreground "#6694B0"))))
 '(font-lock-type-face ((t (:foreground "#9DB250"))))
 '(font-lock-variable-name-face ((t (:foreground "#9C77B2"))))
 '(fringe ((t (:background "#242526"))))
 '(hl-line ((t (:background "#191919"))))
 '(linum ((t (:foreground "#736565"))))
 '(minibuffer-prompt ((t (:background "#436073" :foreground "#242526" :weight bold))))
 '(mode-line ((t (:background "#736565" :foreground "#242526"))))
 '(mode-line-inactive ((t (:background "#242526" :foreground "#8A9EA6"))))
 '(region ((t (:background "#436073" :foreground "#8A9EA6"))))
 '(window-divider ((t (:background "#242526" :foreground "#242526"))))
 '(window-divider-first-pixel ((t (:background "#242526" :foreground "#242526"))))
 '(window-divider-last-pixel ((t (:background "#242526" :foreground "#242526")))))
