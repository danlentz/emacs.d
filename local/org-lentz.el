
;;; ORG-MODE

(require 'org-bullets)

(add-hook 'org-mode-hook
          (lambda ()
            (org-bullets-mode 1)))

; (load-theme 'org-beautify-theme t)

(global-unset-key [(control o)])

(global-set-key [(control o) ?l]          'org-store-link)
(global-set-key [(control o) (control l)] 'org-store-link)

(global-set-key [(control o) ?a]          'org-agenda)
(global-set-key [(control o) (control a)] 'org-agenda)

(global-set-key [(control o) ?b]          'org-iswitchb)
(global-set-key [(control o) (control b)] 'org-iswitchb)

(setq org-todo-keywords
      '((sequence
         "TODO(t)"
         "STARTED(s)"
         "WAITING(w@/!)"
         "|"
         "DONE(d!)"
         "CANCELLED(c!)")))

(setq org-use-fast-todo-selection t)

(provide 'org-lentz)
