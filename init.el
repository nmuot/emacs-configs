;; init.el --- Emacs configuration

;; Author: Nathanael MUOT <nathanael.muot@gmail.com>
;;
;;(user-mail-address "Nathanaël MUOT <nathanael.muot@axessim.fr>")


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq user-full-name "Nathanaël MUOT")
(setq user-mail-address "nathanael.muot@axessim.fr")


;; J'ai pillé le travail de nombreuses personnes pour réaliser ce .emacs
;; En voici la liste non exhaustive : 

;; https://realpython.com/blog/python/emacs-the-best-python-editor/
;; Alex (Alexey) Ott http://alexott.net/en/index.html
;; Philippe Dumont
;; Jonathan Bailleul
;; Laurent Schurter 
;; Stéphane Levant
;; Philippe Marquet 
;; Pierre Boulet
;; Sébastien Dinot

;;##########################################################
;; Configure some major and minor mode
(load "~/.emacs.d/setup-package.el")
(add-to-list 'load-path "~/.emacs.d/rc")

(require 'setup-general)
(require 'setup-theme)
(require 'setup-ido)
(require 'setup-ispell)

(require 'setup-markdown)

(require 'setup-python)

(require 'setup-c)
(require 'setup-cl)
(require 'setup-cmake)

;; Experiement https://tuhdo.github.io/c-ide.html
;; https://github.com/tuhdo/emacs-c-ide-demo
(require 'setup-helm)
(require 'setup-helm-gtags)
(require 'setup-cedet)
(require 'setup-editing)



;; function-args
;; (require 'function-args)
;; (fa-config-default)
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (zygospore helm-gtags helm yasnippet ws-butler volatile-highlights use-package undo-tree iedit dtrt-indent counsel-projectile company clean-aindent-mode anzu))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
