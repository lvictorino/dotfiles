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
(load-file "~/.emacs.d/config/hooks.el")
(load-file "~/.emacs.d/config/packages.el")
(load-file "~/.emacs.d/config/theme.el")




