;;; parens --- autopair + show-paren

;;; Commentary:

;;; Code:
(require 'autopair)
(add-hook 'prog-mode-hook #'autopair-mode)

(require 'paren)
(setq show-paren-delay 0)
(show-paren-mode t)

(set-face-background 'show-paren-match 'unspecified)
(set-face-background 'show-paren-mismatch 'unspecified)
(set-face-foreground 'show-paren-match "brightgreen")
(set-face-foreground 'show-paren-mismatch "brightred")

(provide 'parens)
;;; parens.el ends here
