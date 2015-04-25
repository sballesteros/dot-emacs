(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))
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

(require-package 'better-defaults)

(require 'init-osx-keys)
(require 'init-flyspell)
(require 'init-css)
;;(require 'init-javascript)
(require 'init-web-mode)
(require 'init-markdown)
(require 'init-misc)

;; default theme
(require-package 'color-theme-solarized)
(require-package 'zenburn-theme) ;;second favorite
(load-theme 'zenburn t)
