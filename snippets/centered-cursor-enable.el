;; Center your cursor while moving around in a text file
;;
(require 'centered-cursor-mode)
(define-global-minor-mode my-global-centered-cursor-mode centered-cursor-mode
  (lambda ()
    (when (not (memq major-mode
		     (list 'shell-mode 'gud-mode 'sql-mode )))
      (centered-cursor-mode))))
(my-global-centered-cursor-mode +1)

(provide 'centered-cursor-enable)
