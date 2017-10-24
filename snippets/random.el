;;; random.el --- random small snippets with no common theme.

;;; Commentary:

;;; Code:

;; No more menu bar
;;
(menu-bar-mode -1)
(global-prettify-symbols-mode t)
(setq column-number-mode t)

(defun back-to-indentation-or-beginning ()
  "Go back to the first non-whitespace character of the line or if already there to the start."
  (interactive)
  (if (= (point) (progn (back-to-indentation) (point)))
      (beginning-of-line)))
(global-set-key (kbd "C-a") 'back-to-indentation-or-beginning)
(delete-selection-mode 1)

;; Highlight current line cursor is on.
;;
(global-hl-line-mode +1)

(require 'whitespace)
(setq whitespace-line-column 120)

;; Move terminals
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

(defalias 'yes-or-no-p 'y-or-n-p)

(global-set-key "\C-s" 'isearch-forward-regexp)
(global-set-key "\C-r" 'isearch-backward-regexp)

(add-hook 'before-save-hook 'whitespace-cleanup)
(add-hook 'after-init-hook 'whitespace-cleanup)

(setq-default fill-column 100)

(global-set-key (kbd "C-c C-x C-c") 'save-buffers-kill-emacs)

(setq require-final-newline t)

(provide 'random)
;;; random.el ends here
