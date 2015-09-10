(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-matching-paren t)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
 '(custom-safe-themes
   (quote
    ("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default)))
 '(eldoc-minor-mode-string " d")
 '(indicate-buffer-boundaries (quote left))
 '(lisp-el-font-lock-keywords lisp-font-lock-keywords-2 t)
 '(lisp-indent-function (quote common-lisp-indent-function))
 '(lisp-indent-maximum-backtracking 6)
 '(package-selected-packages
   (quote
    (rainbow-delimiters recentf-ext redo+ paredit-menu undo-tree smartparens outorg osx-dictionary osx-clipboard osx-browse orgtbl-ascii-plot org-mac-link org-link-travis org-fstree org-elisp-help org-cliplink org-caldav org-bullets org-beautify-theme markdown-mode+ magit-gh-pulls magit-find-file java-snippets haml-mode dropdown-list docbook-snippets dired-imenu dired+ datomic-snippets company common-lisp-snippets color-theme-sanityinc-solarized clojure-snippets clojure-quick-repls clojure-mode-extra-font-locking clojure-cheatsheet clj-refactor cider-eval-sexp-fu ac-cider)))
 '(save-place t nil (saveplace))
 '(show-paren-delay 0.1)
 '(show-paren-highlight-openparen t)
 '(show-paren-mode t)
 '(show-paren-ring-bell-on-mismatch nil)
 '(show-paren-style (quote expression))
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "menlo" :height 96))))
 '(bold ((t (:family "menlo" :weight bold))))
 '(company-template-field ((t (:background "#EAE5CC" :foreground "black"))))
 '(company-tooltip ((t (:background "#0"))))
 '(font-lock-builtin-face ((t (:inherit default :foreground "LightSteelBlue3"))))
 '(font-lock-comment-face ((t (:inherit italic :foreground "azure4"))))
 '(font-lock-constant-face ((t (:inherit default :foreground "SlateBlue2"))))
 '(font-lock-doc-face ((t (:inherit font-lock-string-face :inherit italic :foreground "PaleVioletRed"))))
 '(font-lock-function-name-face ((t (:inherit default :inherit underline :foreground "DeepSkyBlue"))))
 '(font-lock-keyword-face ((t (:inherit bold :foreground "dodgerBlue"))))
 '(font-lock-preprocessor-face ((t (:inherit default :foreground "SpringGreen"))))
 '(font-lock-type-face ((t (:inherit default :foreground "MediumSeaGreen"))))
 '(font-lock-variable-name-face ((t (:inherit default :foreground "khaki"))))
 '(highlight ((t (:background "skyblue4"))))
 '(hl-line ((t (:background "gray10"))))
 '(italic ((t (:family "menlo" :slant italic))))
 '(mode-line ((t (:family "monaco" :height 90 :foreground "honeydew" :background "gray0"))))
 '(mode-line-inactive ((t (:inherit mode-line :foreground "gray45" :background "gray30"))))
 '(show-paren-match ((t (:background "gray10"))))
 '(show-paren-mismatch ((t (:background "dimgray" :foreground "firebrick1"))))
 '(variable-pitch ((t (:family "Tahoma")))))

(require 'cl)
(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
;;	     '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)
(add-to-list 'load-path
 (expand-file-name "~/.emacs.d/local/"))


;;; GLOBAL

(require 'session-init)
(require 'account)
(require 'mac)
(require 'git)
(require 'text)
(require 'theme)
(require 'backup)
(require 'recently)
(require 'fixme)
;; (require 'complete-ac)
(require 'complete-company)
(require 'yas)
(require 'undo)
(require 'lisp)
(require 'slime-quicklisp)
(require 'clojure)
(require 'paredit-menu)
(require 'keyboard)
(require 'keypad)


(column-number-mode 1)
(line-number-mode t)
(set-default 'indent-tabs-mode nil)
(set-default 'indicate-empty-lines t)
(set-default 'imenu-auto-rescan t)
(defalias 'yes-or-no-p 'y-or-n-p)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'markup)
(require 'org-lentz)
(require 'server-init)

;; (put 'downcase-region 'disabled nil)
;; (put 'upcase-region 'disabled nil)
