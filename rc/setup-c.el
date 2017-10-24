
; Inspired from: Baris Yuksel (2014) http://barisyuksel.com/cppmode/.emacs

(setq auto-mode-alist (cons '("\.inc$" . c++-mode) auto-mode-alist))


; start google-c-style with emacs
(use-package google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
(setq c-default-style "bsd")


;; start flymake-google-cpplint-load
;; let's define a function for flymake initialization
(use-package flymake-google-cpplint)
(defun my:flymake-google-init ()
  (custom-set-variables
   '(flymake-google-cpplint-command "~/local/bin/cpplint")
   '(flymake-google-cpplint-verbose "3")
   '(flymake-google-cpplint-linelength "100")
   '(flymake-google-cpplint-filter "-whitespace/line_length")
   )
  (flymake-google-cpplint-load)
)
;(add-hook 'c-mode-common-hook 'my:flymake-google-init)
;(add-hook 'c-mode-hook 'my:flymake-google-init)
(add-hook 'c++-mode-hook 'my:flymake-google-init)
(add-hook 'cc-mode-hook 'my:flymake-google-init)


;; company-c-headers
(use-package company-c-headers
  :init
  (add-to-list 'company-backends 'company-c-headers))

;; hs-minor-mode for folding source code
(add-hook 'c-mode-common-hook 'hs-minor-mode)

;; doxymacs configure
(require 'doxymacs)

(setq doxymacs-doxygen-style "C++")

(defconst doxymacs-my-file-comment-template
 '("///" > n
   "/// " (doxymacs-doxygen-command-char) "file      "
   (if (buffer-file-name)
       (file-name-nondirectory (buffer-file-name))
     "") > n
   "/// " (doxymacs-doxygen-command-char) "author    "
   (user-full-name) (doxymacs-user-mail-address) > n
   "/// " (doxymacs-doxygen-command-char) "date      " (current-time-string) > n
   "/// " (doxymacs-doxygen-command-char) "copyright "
   "(c) 2017 AxesSim. All right reserved." > n
   "///" > n
   "/// " (doxymacs-doxygen-command-char) "brief     "
   (p "Brief description of this file: ") > n
   "///" >)
 "Default my template for file documentation.")

(custom-set-variables
 '(doxymacs-file-comment-template doxymacs-my-file-comment-template)
)

(defun my-doxymacs-font-lock-hook ()
  (if (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode))
      (doxymacs-font-lock)))
(add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)

(provide 'setup-c)

