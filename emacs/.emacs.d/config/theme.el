;; Visual style
(custom-set-faces
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
 '(minibuffer-prompt ((t (:background "#436073" :foreground "#242526" :weight bold))))
 '(mode-line ((t (:background "#736565" :foreground "#242526"))))
 '(mode-line-inactive ((t (:background "#242526" :foreground "#8A9EA6"))))
 '(region ((t (:background "#436073" :foreground "#8A9EA6" ))))
 '(window-divider ((t (:background "#242526" :foreground "#242526"))))
 '(window-divider-first-pixel ((t (:background "#242526" :foreground "#242526"))))
 '(window-divider-last-pixel ((t (:background "#242526" :foreground "#242526"))))
 '(fringe ((t (:background "#242526"))))
 '(linum ((t (:foreground "#736565"))))
 )

;; Custom variables
(custom-set-variables
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(package-selected-packages (quote (avy counsel org dash)))
 '(tool-bar-mode nil)
 '(scroll-bar-mode nil)
 )

(setq linum-format "  %d   ")

(setq window-divider-default-places t
      window-divider-default-bottom-width 10
      window-divider-default-right-width 50)
(add-hook 'window-setup-hook #'window-divider-mode)

(set-window-fringes (selected-window) 20 20 nil)
