;;; c-styling --- options for programming in c/c++

;;; Commentary:

;;; Code:
(require 'dtrt-indent)
(require 'memsql-c-style)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-hook 'c-mode-common-hook (lambda ()
				(memsql-make-newline-indent)
				(memsql-set-c-style)
				(dtrt-indent-mode)
				(setq c-progress-internal 1)
				(c-toggle-auto-newline)
				(subword-mode)
				(auto-fill-mode)
				(setq fill-column 112)
				(setq column-enforce-column fill-column)
				))

(setq indent-tabs-mode nil)
(provide 'c-styling)
;;; c-styling.el ends here
