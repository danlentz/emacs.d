
 
(define-key emacs-lisp-mode-map [kp-add] 'eval-last-sexp)
(define-key emacs-lisp-mode-map [(control x) ?v] 'eval-buffer)
(define-key emacs-lisp-mode-map (kbd "C-\\") 'completion-at-point)
(define-key lisp-mode-shared-map (kbd "RET") 'reindent-then-newline-and-indent)

(add-hook 'emacs-lisp-mode-hook 'imenu-add-menubar-index)
(add-hook 'emacs-lisp-mode-hook 'lisp-mode-auto-fill)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)

(add-hook 'lisp-mode-hook 'imenu-add-menubar-index)
(add-hook 'lisp-mode-hook 'lisp-mode-auto-fill)
(add-hook 'lisp-mode-hook 'turn-on-eldoc-mode)

(setq lisp-indent-function 'common-lisp-indent-function)

(provide 'lisp)
