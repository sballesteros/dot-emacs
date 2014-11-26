(setq inhibit-startup-message t)

(blink-cursor-mode 0)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;replace a region in emacs with yank buffer contents?
(delete-selection-mode 1)

;;time
(display-time)
(setq display-time-24hr-format t)

;;shorter yes-no
(fset 'yes-or-no-p 'y-or-n-p)

;; Pour enregistrer automatiquement la position du curseur quand on quitte un
;; fichier, et y retourner automatiquement à la réouverture
(require 'saveplace)
(setq-default save-place t)

;;save all tmp files (~...) in one directory
(setq backup-directory-alist
'(("." . "~/.emacs-backup-files/")))

(setq frame-title-format '(buffer-file-name "Emacs: %b (%f)" "Emacs: %b"))

(provide 'init-misc)
