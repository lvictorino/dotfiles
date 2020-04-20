;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;; SEARCH

;; Ivy, Counsel and Swiper come together for better completion and search options.
;; Better file/buffer search completion
(use-package counsel
  :ensure t)

;; Better matching in buffer names
(use-package ivy
  :ensure t
  :diminish (ivy-mode)
  :bind (("C-x b" . ivy-switch-buffer))
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-display-style 'fancy))

;; Better in file search options
(use-package swiper
  :ensure t
  :bind (("C-s" . swiper)                 ;; In-file search
	 ("C-r" . swiper)                 ;; In-file search
	 ("C-c C-r" . ivy-resume)         ;; 
	 ("M-x" . counsel-M-x)            ;; Command search
	 ("C-x C-f" . counsel-find-file)) ;; File search
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq ivy-display-style 'fancy)
    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
    ))

;; Allows smart character search in buffers
(use-package avy
  :ensure t
  :bind ("M-s" . avy-goto-char))

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;; UTILS

;; Allows package testing
(use-package try
  :ensure t)
