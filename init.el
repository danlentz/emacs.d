(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
 '(custom-safe-themes
   (quote
    ("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default)))
 '(indicate-buffer-boundaries (quote left))
 '(save-place t nil (saveplace))
 '(show-paren-mode t)
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
 '(italic ((t (:family "menlo" :slant italic))))
 '(mode-line ((t (:family "monaco" :height 90 :foreground "honeydew" :background "gray0"))))
 '(mode-line-inactive ((t (:inherit mode-line :foreground "gray45" :background "gray30"))))
 '(variable-pitch ((t (:family "Tahoma")))))

(require 'cl)
(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
;;	     '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)
(add-to-list 'load-path "/Users/dan.lentz/.emacs.d/local/")


;;; GLOBAL


(require 'account)
(require 'mac)
(require 'git)
(require 'text)
(require 'theme)
(require 'backup)
;; (require 'complete-ac)
(require 'complete-company)
(require 'yas)
(require 'undo)
(require 'lisp)
(require 'slime-quicklisp)
(require 'clojure)
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


;; (put 'downcase-region 'disabled nil)
;; (put 'upcase-region 'disabled nil)
