(provide `python-mode)

(unless (package-installed-p `elpy) (package-install `elpy))
(unless (package-installed-p `flycheck) (package-install `flycheck))
(unless (package-installed-p `py-autopep8) (package-install `py-autopep8))
(unless (package-installed-p `jedi) (package-install `jedi))

;; PYTHON
(setq py-python-command "/usr/bin/python3")
(elpy-enable)
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; AUTOCOMPLETION
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)
