;;; Colorize CSS colour literals
(require-package 'rainbow-mode)
(dolist (hook '(css-mode-hook html-mode-hook))
  (add-hook hook 'rainbow-mode))

(setq css-indent-offset 2)

(provide 'init-css)
