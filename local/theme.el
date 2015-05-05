
(custom-set-faces
 '(default
   ((t (:family "menlo" :height 96))))
   '(bold
     ((t (:family "menlo" :weight bold))))
   '(italic
     ((t (:family "menlo" :slant italic))))    
   '(variable-pitch
     ((t (:family "Tahoma"))))
   '(font-lock-constant-face
     ((t (:inherit default :foreground "SlateBlue2"))))
   '(font-lock-preprocessor-face
     ((t (:inherit default :foreground "SpringGreen"))))
   '(font-lock-doc-face
     ((t (:inherit font-lock-string-face :inherit italic
                   :foreground "PaleVioletRed"))))
   '(font-lock-function-name-face
     ((t (:inherit default :inherit underline :foreground "DeepSkyBlue"))))
   '(font-lock-type-face
     ((t (:inherit default :foreground "MediumSeaGreen"))))  
   '(font-lock-variable-name-face
     ((t (:inherit default :foreground "khaki"))))
   '(font-lock-builtin-face
     ((t (:inherit default :foreground "LightSteelBlue3"))))
   '(font-lock-comment-face
     ((t (:inherit italic :foreground "azure4"))))
   '(font-lock-keyword-face
     ((t (:inherit bold :foreground "dodgerBlue"))))
   '(mode-line
     ((t (:family "monaco" :height 90 :foreground "honeydew"
		  :background "gray0"))))
   '(mode-line-inactive
     ((t (:inherit mode-line :foreground "gray45" :background "gray30")))))


;; (require 'solarized)
;; (global-hi-lock-mode 1)
;; (global-font-lock-mode t)  

;; (add-hook 'after-init-hook (lambda () (load-theme 'solarized-dark t)))

(add-hook 'after-init-hook (lambda ()
			     (color-theme-sanityinc-solarized-dark)))


(provide 'theme)
