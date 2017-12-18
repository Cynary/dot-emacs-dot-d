;;; memsql-c-style.el --- MemSQL's C/C++ style for c-mode
;;
;; `memsql-set-c-style' to your `c-mode-common-hook' after requiring this
;; file. For example:
;;
;;    (add-hook 'c-mode-common-hook 'memsql-set-c-style)
;;
;; If you want the RETURN key to go to the next line and space over
;; to the right place, add this to your .emacs right after the load-file:
;;
;;    (add-hook 'c-mode-common-hook 'memsql-make-newline-indent)

;;; Code:

;; For some reason 1) c-backward-syntactic-ws is a macro and 2)  under Emacs 22
;; bytecode cannot call (unexpanded) macros at run time:
(eval-when-compile (require 'cc-defs))

(defun dont-do-it()
  'stop)

;;;###autoload
(defconst memsql-c-style
  `(
    (c-basic-offset . 4)
    (c-hanging-braces-alist . (
			       (statement-open . (before))
			       (substatement-open . (before))
			       (defun-open . (before))
			       (defun-close . (before))
			       (block-open)
			       (block-close)
			       (class-open . (before))
			       (inline-open . (before))
			       (brace-list-open . (before))
			      ))
    (c-hanging-colons-alist . (
			       (member-init-intro . (before))
			      ))
    (c-offsets-alist . (
			(substatement-open . 0)
			(inline-open . 0)
			(cpp-define-intro . 0)
			(label . 0)
			))
    (c-hanging-semi&comma-criteria . (dont-do-it))
    (c-cleanup-list . (
		       empty-defun-braces
		       defun-close-semi
		       list-close-comma
		      ))
   )
  "MemSQL C/C++ Programming Style.")

;;;###autoload
(defun memsql-set-c-style ()
  "Set the current buffer's c-style to MemSQL C/C++ Programming
  Style. Meant to be added to `c-mode-common-hook'."
  (interactive)
  (make-local-variable 'c-tab-always-indent)
  (setq c-tab-always-indent t)
  (c-add-style "MemSQL" memsql-c-style t))

;;;###autoload
(defun memsql-make-newline-indent ()
  "Sets up preferred newline behavior. Not set by default. Meant
  to be added to `c-mode-common-hook'."
  (interactive)
  (define-key c-mode-base-map "\C-m" 'newline-and-indent)
  (define-key c-mode-base-map [ret] 'newline-and-indent))

(provide 'memsql-c-style)
;;; memsql-c-style.el ends here
