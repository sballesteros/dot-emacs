;;; for prog modes turn on flyspell-prog-mode (checks spell only in comments)
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

;;disable flyspell for string in programming languages
(setq flyspell-prog-text-faces '(font-lock-comment-face font-lock-doc-face))

(provide 'init-flyspell)
