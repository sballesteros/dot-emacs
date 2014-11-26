(setq inhibit-startup-message t)

(blink-cursor-mode 0)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq js2-strict-inconsistent-return-warning nil)
(setq js2-include-node-externs t)
;;couchDB
(setq js2-additional-externs '("require" "respond" "getRow" "emit" "send" "start" "sum" "log" "provides"))

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
