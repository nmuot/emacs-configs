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
(load "~/.emacs.d/rc/package.el")
(load "~/.emacs.d/rc/general.el")
(load "~/.emacs.d/rc/theme.el")
(load "~/.emacs.d/rc/ido-mode.el")
(load "~/.emacs.d/rc/ispell.el")

(load "~/.emacs.d/rc/python.el")
(load "~/.emacs.d/rc/markdown.el")
(load "~/.emacs.d/rc/c-style.el")
(load "~/.emacs.d/rc/cl.el")
(load "~/.emacs.d/rc/cmake.el")

