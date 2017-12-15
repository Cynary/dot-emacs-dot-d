;;; rtags-enable --- enable memslq's rtags

;;; Commentary:

;;; Code:
(defconst memsql-path (getenv "PATH_TO_MEMSQL"))

(defun setup-flycheck-rtags ()
  "Use rtags as the checker for flycheck."
  (interactive)
  (flycheck-select-checker 'rtags)

  ;; RTags creates more accurate overlays.
  ;;
  (setq-local flycheck-highlighting-mode nil)
  (setq-local flycheck-check-syntax-automatically nil))

(when memsql-path
  (add-to-list 'load-path (expand-file-name "./utils/private/emacs/rtags" memsql-path))
  (require 'rtags)
  (define-key c-mode-base-map (kbd "M-.") (function rtags-find-symbol-at-point))
  (define-key c-mode-base-map (kbd "C-j C-s") (function rtags-find-symbol))
  (define-key c-mode-base-map (kbd "C-j C-r") (function rtags-find-references))
  (define-key c-mode-base-map (kbd "C-j C-f") (function rtags-find-file))
  (define-key c-mode-base-map (kbd "M-,") (function rtags-find-references-at-point))
  (define-key c-mode-base-map (kbd "M-[") (function rtags-location-stack-back))
  (define-key c-mode-base-map (kbd "M-]") (function rtags-location-stack-forward))

  (setq rtags-autostart-diagnostics t)
  (rtags-diagnostics)

  (require 'helm-rtags)
  (setq rtags-display-result-backend 'helm)

  (require 'flycheck-rtags)
  (add-hook 'c-mode-common-hook #'setup-flycheck-rtags)
)

(provide 'rtags-enable)
;;; rtags-enable.el ends here
