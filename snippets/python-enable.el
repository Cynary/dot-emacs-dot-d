;;; python-enable --- config for python development
;;
;;; Commentary:
;;
;;; Code:

;; (elpy-enable)
(require 'elpy)

(defun python-layout ()
  "Automatic newlines in python, when 'electric-layout-mode' is enabled."
  (setq-local electric-layout-rules
	      '((?: . (lambda ()
			(and (zerop (car (syntax-ppss)))
			     (python-info-statement-starts-block-p)
			     'after))))))

(add-hook 'python-mode-hook 'python-layout)
(add-hook 'python-mode-hook 'electric-layout-mode)
(add-hook 'python-mode-hook 'elpy-mode)

(provide 'python-enable)
;;; python-enable.el ends here
