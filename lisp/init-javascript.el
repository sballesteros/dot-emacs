;;js2-mode
;;(require-package 'js2-mode)

;;(add-hook 'js-mode-hook
;;          (lambda ()
;;            (require 'js2-mode)
;;            (setq indent-line-function 'js2-indent-line)))

;;I find js2-mode too slow to be turned on by default
;;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;;(add-to-list 'interpreter-mode-alist '("node" . js2-mode))


(setq js2-highlight-level 3)
(setq js2-pretty-multiline-declarations t)
(setq js2-mode-show-parse-errors nil)
(setq js2-mode-show-strict-warnings nil)
(setq js2-strict-inconsistent-return-warning nil)
(setq js2-include-node-externs t)

(setq js-indent-level 2)
(setq-default js2-basic-indent 2)
(setq-default js2-basic-offset 2)

(provide 'init-javascript)
