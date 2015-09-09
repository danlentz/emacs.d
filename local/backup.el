

;; Backup Directory

(add-to-list 'backup-directory-alist '("." . "~/tmp/"))
;; (setq version-control t)


;; Autosave

(defvar autosave-dir  (expand-file-name "~/tmp/autosave/"))
(make-directory autosave-dir t)
(setq auto-save-file-name-transforms
      `(("\\(?:[^/]*/\\)*\\(.*\\)" ,(concat autosave-dir "\\1") t)))

(provide 'backup)
