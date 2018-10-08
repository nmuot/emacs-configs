;;; Emacs is not a package manager, and here we load its package manager!

(require 'package)
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)


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
    ;; column-marker
    ido
    ispell
    ;; ein  ;; jupyter notebook
    ;; let-alist
    ;; cl-generic
    ;; seq
    ;; pyvenv
    yasnippet
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
