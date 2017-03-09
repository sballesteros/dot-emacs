;;web-mode
(require-package 'web-mode)
(add-to-list 'auto-mode-alist '("\\.ejs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js?\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.json?\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.jsonld?\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; disable smart quote
(setq web-mode-enable-auto-quoting nil)

;;apply jsx mode to js files
(setq web-mode-content-types-alist
  '(("jsx" . "\\.js\\'")))


;; adjust indents for web-mode to 2 spaces
(defun my-web-mode-hook ()
  "Hooks for Web mode. Adjust indents"
  ;;; http://web-mode.org/
  (setq web-mode-attr-indent-offset 2)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))
(add-hook 'web-mode-hook  'my-web-mode-hook)



(provide 'init-web-mode)
