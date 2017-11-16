(provide `r-stuff)

;; ESS mode configuration (only if ess is in a nonstandard place)
;;(add-to-list 'load-path "/path/to/ess-5.3.4/lisp");;<<CHANGE
(autoload 'R-mode "ess-site.el" "ESS" t)
(add-to-list 'auto-mode-alist '("\\.R$" . R-mode))
;;(setq inferior-R-program-name "/path/to/R");;<<CHANGE
;;R stuff
(setq ess-eval-visibly-p nil)
(setq ess-ask-for-ess-directory nil)
(require 'ess-eldoc)
;;compile the first target in the Makefile in the current directory using F9
(global-set-key [f9] 'compile)
(setq compilation-read-command nil)
;;show matching parentheses
(show-paren-mode 1)

