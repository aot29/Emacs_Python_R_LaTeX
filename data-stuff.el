(provide `data-stuff)

(unless (package-installed-p `csv-mode) (package-install `csv-mode))

;; add support for csv files
(require 'csv-mode)

