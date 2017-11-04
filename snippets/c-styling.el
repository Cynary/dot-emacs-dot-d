;;; c-styling --- options for programming in c/c++

;;; Commentary:

;;; Code:
(require 'dtrt-indent)
(require 'memsql-c-style)

(add-hook 'c-mode-common-hook (lambda ()
				(memsql-make-newline-indent)
				(memsql-set-c-style)
				(dtrt-indent-mode)
				(setq c-progress-internal 1)
				(c-toggle-auto-hungry-state)
				(subword-mode)
				(auto-fill-mode)
				(setq fill-column 120)
				(setq column-enforce-column fill-column)
				))

(setq indent-tabs-mode nil)
(provide 'c-styling)
;;; c-styling.el ends here
