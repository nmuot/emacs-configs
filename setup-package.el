;;; Emacs is not a package manager, and here we load its package manager!

(require 'package)
(dolist (source '(;("gnu" . "http://elpa.gnu.org/packages/")
                  ;("marmalade" . "http://marmalade-repo.org/packages/")
                  ;("elpa" . "http://tromey.com/elpa/")
                  ;("elpy" . "https://jorgenschaefer.github.io/packages/")
                  ;; TODO: Maybe, use this after emacs24 is released
                  ;; (development versions of packages)
                  ("melpa" . "http://melpa.org/packages/")
                  ))
  (add-to-list 'package-archives source t))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; Old style prefers use-package
(defvar myPackages
  '(better-defaults
    material-theme
    column-marker
    ido
    ispell
    ein  ;; jupyter notebook
    let-alist
    cl-generic
    seq
    pyvenv
    elpy  ;; python mode
    flycheck
    py-autopep8
    magit  ;; Git
    markdown-mode
    auctex
    auto-yasnippet
    ))


(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)