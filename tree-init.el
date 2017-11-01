(provide `tree-init)

(unless (package-installed-p `neotree) (package-install `neotree))

;; DIRECTORY TREE
(require 'neotree)
(neotree-toggle) ;; show on startup

;; set working dir
(if  (getenv "WORKSPACE")
  (setq startdir (getenv "WORKSPACE"))
  (setq startdir (getenv "HOME"))
)
(neotree-dir startdir)

(global-set-key [f8] 'neotree-toggle) ;; set keybinding



