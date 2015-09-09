(defun slime-repl-quickload ()
  (interactive)
  (let* ((completings
          (slime-repl-shortcut-eval
           `(cl:mapcar 'ql-dist:system-file-name (ql:system-list))))
         (system (completing-read "System: " completings)))
    (slime-repl-shortcut-eval-async
     `(cl:progn
       (ql:quickload ,system)
       (cl:format t "; System ~a loaded.~%" ,system)))))

(add-hook 'slime-mode-hook '(lambda ()
 (defslime-repl-shortcut slime-quickload ("quickload")
   (:handler 'slime-repl-quickload)
   (:one-liner "Quickload a Lisp system."))))

;; (load (expand-file-name "~/quicklisp/slime-helper.el"))

;; Replace "sbcl" with the path to your implementation

(setq inferior-lisp-program "sbcl")


(load (expand-file-name "~/quicklisp/clhs-use-local.el") t)


(defun slime-quicklisp-open-inspector-if (inspected-parts)
  (or
   (and inspected-parts (or (slime-open-inspector inspected-parts) t))
   (minibuffer-message "nothing to inpsect, declining to display with *slime-inspector*")))

;; (defun slime-inspect-quicklisp-release ()
;;   ;; (slime-inspect-quicklisp-release "yason")
;;   (interactive)
;;   (if (slime-connected-p)
;;       (let ((inspect-if (slime-get-quicklisp-system-completions)))
;;         (and inspect-if
;;              ;; (prog1
;;              ;;     inspect-if
;;           (slime-eval-async `(swank:find-ql-release ,inspect-if)
;;             'slime-quicklisp-open-inspector-if)))
;;     (message (concat ":FUNCTION `slime-inspect-quicklisp-release' -- "
;;                      "not currently `slime-connected-p'"))))

;; (add-hook 'slime-mode-hook
;;   '(lambda ()
;;      (defslime-repl-shortcut ql-release ("ql-release")
;;        (:handler 'slime-inspect-quicklisp-release)
;;        (:one-liner "Inspect a quicklisp release."))))

(provide 'slime-quicklisp)
