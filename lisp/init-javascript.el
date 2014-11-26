(setq js-indent-level 2)

;;js2-mode
(require-package 'js2-mode)

(add-hook 'js-mode-hook
          (lambda ()
            (require 'js2-mode)
            (setq indent-line-function 'js2-indent-line)))

;;too slow
;;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;;(add-to-list 'interpreter-mode-alist '("node" . js2-mode))
;;(setq js2-highlight-level 3)
;;(setq js2-pretty-multiline-declarations t)
;;(setq js2-mode-show-parse-errors nil)
;;(setq js2-mode-show-strict-warnings nil)
;;(setq js2-strict-inconsistent-return-warning nil)
;;(setq js2-include-node-externs t)
;;;;couchDB
;;(setq js2-additional-externs '("require" "respond" "getRow" "emit" "send" "start" "sum" "log" "provides"))

(provide 'init-javascript)
