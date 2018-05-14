(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq package-archives '(
                         ("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;;; Fire up package.el: make sure that package installed with package-install are available (i.e to load theme...)
(setq package-enable-at-startup nil)
(package-initialize)

;;; On-demand installation of packages
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

(require 'better-defaults)
(require 'init-misc)

(require 'init-osx-keys)
(require 'init-flyspell)
(require 'init-css)
(require 'init-javascript)
(require 'init-web-mode)
(require 'init-markdown)
(require 'init-yaml)
(require 'prettier-js)
(add-hook 'web-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'prettier-before-save)))

;; http://stuff-things.net/2015/10/05/emacs-visible-bell-work-around-on-os-x-el-capitan/
(setq visible-bell nil)
(setq ring-bell-function (lambda ()
(invert-face 'mode-line)
(run-with-timer 0.1 nil 'invert-face 'mode-line)))

;;(require 'ess-site)

;; default theme
(require-package 'zenburn-theme) ;;second favorite
(load-theme 'zenburn t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fill-column 80)
 '(package-selected-packages
   (quote
    (zenburn-theme yaml-mode markdown-mode flycheck web-mode json-mode exec-path-from-shell better-defaults)))
 '(prettier-args (quote ("--single-quote")))
 '(prettier-target-mode "web-mode")
 '(prettier-width-mode (quote fill))
 '(safe-local-variable-values
   (quote
    ((eval progn
           (add-to-list
            (quote exec-path)
            (concat
             (locate-dominating-file default-directory ".dir-locals.el")
             "node_modules/.bin/")))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
