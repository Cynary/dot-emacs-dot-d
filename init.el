;;; init.el -- main emacs config
;;; Commentary:

;;; Code:
;;
(defconst init-path (file-name-directory load-file-name))
(add-to-list 'load-path (expand-file-name "./snippets" init-path))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
						 ("melpa" . "https://melpa.org/packages/")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8e3f020f1ce69cfa0c1ebee4e198feb28dd7eb31b7d77927e9c790819210c654" default)))
 '(custom-theme-directory (expand-file-name "./themes" init-path))
 '(package-selected-packages
   (quote
    (elpy whitespace-cleanup-mode flycheck-clang-analyzer autopair flycheck smartparens helm-projectile projectile helm helm-ebdb))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'base16-bright-dark)

(require 'random)
(require 'centered-cursor-enable)
(require 'xclip-enable)
(require 'comment-dwim-line)
(require 'c-styling)
(require 'helm-enable)
(require 'projectile-enable)
(require 'flycheck-enable)
(require 'parens)
(require 'python-enable)

(provide 'init)
;;; init.el ends here
