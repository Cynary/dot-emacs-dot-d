;;; flycheck-enable -- enable flycheck everywhere
;;

;;; Commentary:
;;

;;; Code:
;;
(require 'flycheck)
(global-flycheck-mode)
(add-hook 'c++-mode-hook (lambda ()
			   (setq flycheck-clang-language-standard "c++11")
			   (setq flycheck-gcc-language-standard "c++11")
			   (setq flycheck-clang-analyzer-executable "clang -std=c++11")
			   ))

(require 'flycheck-clang-analyzer)
(flycheck-clang-analyzer-setup)

(provide 'flycheck-enable)
;;; flycheck-enable.el ends here
