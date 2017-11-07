;; init.el --- Emacs configuration

;; INSTALL PACKAGES
(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p `better-defaults) (package-install `better-defaults))
(unless (package-installed-p `material-theme) (package-install `material-theme))

;; BASIC CUSTOMIZATION
(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally
(set-default 'truncate-lines t) ;; do not wrap

;; Set copy+paste
 (cua-mode t)
    (setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
    (transient-mark-mode 1) ;; No region when it is not highlighted
    (setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; REMOVE THE SCRATCH BUFFER AT STARTUP
;; Makes *scratch* empty.
(setq initial-scratch-message "")

;; Removes *scratch* from buffer after the mode has been set.
(defun remove-scratch-buffer ()
  (if (get-buffer "*scratch*")
      (kill-buffer "*scratch*")))
(add-hook 'after-change-major-mode-hook 'remove-scratch-buffer)

;; customize powerline
;; (line above the command line at the bottom of the screen)
(use-package powerline
  :ensure t)
(require 'powerline)
(powerline-default-theme)

;; highlight current line
(global-hl-line-mode +1)
(set-face-background hl-line-face "#1c1f26")

;; Load remaining initailization files
(require `python-mode) ;; load ./python-mode.el
(require `tree-init)   ;; load ./tree-init.el
(require `tabbar-init) ;; load ./tabbar-init.el
(require `r-stuff)     ;; load ./r-stuff.el

