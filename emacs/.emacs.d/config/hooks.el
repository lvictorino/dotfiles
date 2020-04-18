(defun emacs-config-reload-hook()
  "Reload ~/.emacs.d/init.el on save."
  (if (cl-search ".emacs.d/" (file-name-as-directory buffer-file-name)) 1)
    (load-file "~/.emacs.d/init.el")
)
(add-hook 'after-save-hook 'emacs-config-reload-hook)

(defun xresources-reload-hook()
  "Reload ~/.Xresources on save."
  (if (string=(file-name-nondirectory buffer-file-name) ".Xresources")
      (start-process "run xrdb on .Xresources saved buffer"
		     (get-buffer-create "*xresources-reload*")
		     "/usr/bin/xrdb"
		     buffer-file-name)
    )
  )
(add-hook 'after-save-hook 'xresources-reload-hook)

;; Linum is only hooked on markdown, programming and org
(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'markdown-mode-hook 'linum-mode)
(add-hook 'org-mode-hook 'linum-mode)
