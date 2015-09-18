
;;; ORG-MODE

(require 'org-bullets)

(add-hook 'org-mode-hook (lambda ()
                           (org-bullets-mode 1)))

(add-hook 'org-mode-hook 'imenu-add-menubar-index)
(add-hook 'org-mode-hook 'yas/minor-mode-on)
(add-hook 'org-mode-hook 'turn-on-eldoc-mode)
(add-hook 'org-mode-hook 'flyspell-mode-off)
(add-hook 'org-mode-hook (lambda()
                           (setq show-trailing-whitespace nil)))

(setq org-insert-mode-line-in-empty-file t)
(setq org-log-done-with-time t)
(setq org-insert-heading-respect-content t)
(setq org-M-RET-may-split-line '((default . nil)))
(setq org-imenu-depth 3)

;;(org-remember-insinuate)

                                        ; (load-theme 'org-beautify-theme t)
                                        ; (require 'org-beautify-theme)

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
