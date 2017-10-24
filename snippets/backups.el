;;; backups --- configure backup files in emacs
;;
;;; Commentary:
;;
;;   Don't create #file# and put all backups in ~/.emacs.d/backup
;;
;;; Code:
;;
(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.emacs.d/backup"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups

(setq auto-save-default nil) ; stop creating #autosave# files

(provide 'backups)
;;; backups.el ends here
