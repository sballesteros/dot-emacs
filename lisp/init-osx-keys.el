(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'none)
(setq default-input-method "MacOSX")
;; Make mouse wheel / trackpad scrolling less jerky
(setq mouse-wheel-scroll-amount '(1
                                  ((shift) . 5)
                                  ((control))))
(dolist (multiple '("" "double-" "triple-"))
  (dolist (direction '("right" "left"))
    (global-set-key (kbd (concat "<" multiple "wheel-" direction ">")) 'ignore)))
(global-set-key (kbd "M-`") 'ns-next-frame)
(global-set-key (kbd "M-h") 'ns-do-hide-emacs)
(global-set-key (kbd "M-˙") 'ns-do-hide-others)



(provide 'init-osx-keys)
