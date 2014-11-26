(setq js-indent-level 2)

;;js2-mode
(setq js2-strict-inconsistent-return-warning nil)
(setq js2-include-node-externs t)
;;couchDB
(setq js2-additional-externs '("require" "respond" "getRow" "emit" "send" "start" "sum" "log" "provides"))


(provide 'init-javascript)
