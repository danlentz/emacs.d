;; NUMBERIC KEYPAD. nice number pad conveniences as extra function keys

;; (global-set-key (kbd "<kp-subtract>") 'ergoemacs-close-current-buffer)


(global-set-key (kbd "<kp-5>")   'make-frame)
(global-set-key (kbd "C-<kp-5>") 'find-file-other-frame)
(global-set-key [kp-enter]       'save-buffer)
(global-set-key [home]           'beginning-of-buffer)
(global-set-key [end]            'end-of-buffer)

(global-set-key [kp-enter]       'save-buffer)
(global-set-key [kp-2]           'other-window)
(global-set-key [kp-8]           'delete-window)

(global-set-key [kp-6]           'other-frame)
(global-set-key [clear]          'delete-frame)




(provide 'keypad)
