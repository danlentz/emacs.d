

(require 'clojure-mode)
(require 'clojure-mode-extra-font-locking)
(require 'cider-eval-sexp-fu)
;; (require 'clojure-cheatsheet)
(require 'cider)
(require 'clj-refactor)


(require 'smartparens)
;; (smartparens-global-mode 1)

;; (require 'align-cljlet)

;; (require 'datomic-snippets-autoloads
;;  "/Volumes/u/dan/clj/datomic-snippets/datomic-snippets-autoloads.el")
;; (require 'datomic-snippets
;;  "/Volumes/u/dan/clj/datomic-snippets/datomic-snippets.el")


(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'clojure-mode-hook 'subword-mode)
(add-hook 'clojure-mode-hook 'ruler-mode)
(add-hook 'cider-repl-mode-hook 'subword-mode)
(add-hook 'nrepl-connected-hook 'cider-enable-on-existing-clojure-buffers)

;; (add-hook 'clojure-mode-hook 'clojure-test-maybe-enable)
;; (add-hook 'cider-repl-mode-hook 'paredit-mode)
;; (add-hook 'cider-repl-mode-hook 'smartparens-strict-mode)
;; (add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

(setq clojure-defun-style-default-indent t)

(setq cider-popup-stacktraces t)
(setq cider-stacktrace-default-filters '(tooling dup)) ; java, clj, repl
(setq cider-stacktrace-fill-column 80)

(setq cider-auto-select-error-buffer t)
(setq cider-lein-command "~/bin/lein")

(setq nrepl-buffer-name-separator "-")
(setq nrepl-buffer-name-show-port t)


(setq cider-repl-popup-stacktraces t)
(setq cider-repl-wrap-history t)
(setq cider-repl-history-size 1000)
(setq cider-repl-history-file "~/etc/cider-history")
(setq cider-repl-pop-to-buffer-on-connect t)
(setq cider-repl-display-in-current-window nil)
(setq cider-repl-print-length 256)
(setq cider-repl-result-prefix ";; => ")
(setq cider-repl-use-clojure-font-lock t)
(setq cider-repl-use-pretty-printing t)
(setq cider-repl-shortcut-dispatch-char ?\,)

(setq cider-test-show-report-on-success t)
(setq cider-interactive-eval-result-prefix ";; => ")

(define-key clojure-mode-map (kbd "C-c C-i") 'cider-inspect)
(define-key clojure-mode-map (kbd "M-q")     'indent-pp-sexp)

;; (define-key clojure-mode-map (kbd "C-M-q") 'align-cljlet)

(define-key clojure-mode-map [tab]
  'cider-repl-indent-and-complete-symbol)

(setq cider-repl-tab-command 'cider-repl-indent-and-complete-symbol)

;; (eval-after-load 'company '(add-to-list 'company-backends 'company-cider))

(define-key clojure-mode-map [(meta ?\r)]
  'cider-eval-last-sexp)

(define-key clojure-mode-map [(meta ?=)]
  'cider-eval-print-last-sexp)

(define-key clojure-mode-map [(control meta ?=)]
  'cider-eval-last-sexp-to-repl)

(define-key clojure-mode-map [(meta kp-add)]
  'cider-eval-print-last-sexp)

(define-key clojure-mode-map [(control meta kp-add)]
  'cider-eval-last-sexp-to-repl)

(define-key clojure-mode-map [(meta ?i)]
  'cider-inspect)

;; Deprecated
;; (setq clojure-font-lock-comment-sexp t)



;;;
;;; Clojure Refactor Mode
;;;

(setq cljr-favor-prefix-notation nil)

(dolist (mapping '(("pp" . "clojure.pprint")
                   ("fs" . "me.raynes.fs")
                   ("io" . "clojure.java.io")
                   ("log" . "clojure.tools.logging")
                   ("edn" . "clojure.edn")
                   ("jdbc" . "clojure.java.jdbc")
                   ("memo" . "clojure.core.memoize")
                   ("set" . "clojure.set")
                   ("uuid" . "clj-uuid")
                   ("http" . "clj-http.client")
                   ("time" . "clj-time.core")
                   ("json" . "cheshire.core")
                   ("table" . "table.core")
                   ("async" . "clojure.core.async")
                   ("string" . "clojure.string")))
  (add-to-list 'cljr-magic-require-namespaces mapping t))


(add-hook 'clojure-mode-hook
	  (lambda ()
	     (clj-refactor-mode 1)
	     (cljr-add-keybindings-with-prefix "C-c C-x")
	    ))




;;;
;;; Auto-Complete-Mode
;;;

;; (eval-after-load "auto-complete"
;;   '(progn
;;      (add-to-list 'ac-modes 'cider-mode)
;;      (add-to-list 'ac-modes 'cider-repl-mode)))

;; (require 'ac-cider)

;; (add-hook 'cider-mode-hook      'ac-flyspell-workaround)
;; (add-hook 'cider-mode-hook      'ac-cider-setup)
;; (add-hook 'cider-repl-mode-hook 'ac-cider-setup)

;; (add-hook 'cider-repl-mode-hook #'smartparens-strict-mode)


;; (defun set-auto-complete-as-completion-at-point-function ()
;;   (setq completion-at-point-functions '(auto-complete)))

;; (add-hook 'auto-complete-mode-hook
;; 	  'set-auto-complete-as-completion-at-point-function)

;; (add-hook 'cider-mode-hook
;; 	  'set-auto-complete-as-completion-at-point-function)




(provide 'clojure)
