;;; projectile-enable --- Projectile is awesome - navigate projects much more efficiently.
;;
;;; Commentary:
;;
;; Main uses for this:
;;  C-c p f - type a file name and jump to it.
;;  C-c p s g - git grep the entire project.
;;
;; Combine with Helm: it becomes awesome.
;;
;;; Code:
;;
(require 'projectile)
(require 'helm-projectile)
(setq projectile-indexing-method 'alien)
(setq projectile-enable-caching t)
(setq projectile-use-git-grep t)
(projectile-mode t)
(helm-projectile-on)

;; Without this projectile keeps trying to reocmpute stuff every time the line changes which is
;; heavy on the CPU
;;
(setq projectile-mode-line
      '(:eval (format " Projectile[%s]"
		      (projectile-project-name))))

(provide 'projectile-enable)
;;; projectile-enable.el ends here
