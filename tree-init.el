(provide `tree-init)

(unless (package-installed-p `neotree) (package-install `neotree))

;; DIRECTORY TREE
(require 'neotree)
(setq neo-theme  'arrow)
(neotree-toggle) ;; show on startup

;; set working dir
(if  (getenv "WORKSPACE")
  (setq startdir (getenv "WORKSPACE"))
  (setq startdir (getenv "HOME"))
)
(neotree-dir startdir)

(global-set-key [f8] 'neotree-toggle) ;; set keybinding

(custom-set-faces
 '(neo-root-dir-face ((t (:foreground "gray80"))))
 '(neo-dir-link-face ((t (:foreground "white"))))
 '(neo-file-link-face ((t (:foreground "gray80"))))
 '(neo-button-face ((t (:foreground "gray80"))))
 '(neo-expand-btn-face ((t (:foreground "gray80"))))
 )

(setq neo-hidden-regexp-list '("^\\." "\\.cs\\.meta$" "\\.pyc$" "~$" "^#.*#$" "\\.elc$" "__pycache__"))
(setq neo-window-width 30)
