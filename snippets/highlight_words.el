;;; package -- highlight_words
;;;
;;; Commentary:
;;;  Highlights certain words in programming mode.
;;;
;;; Code:
;;;
(defun highlight_words ()
  "Highlight certain special keywords: FIXME, TODO, BUG, QQ."
  (font-lock-add-keywords nil '(("\\(FIXME\\|TODO\\|BUG\\|QQ\\):" 0 font-lock-warning-face t)))
)
(add-hook 'prog-mode-hook 'highlight_words)

(provide 'highlight_words)
;;; highlight_words.el ends here
