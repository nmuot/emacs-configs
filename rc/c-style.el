
; Inspired from: Baris Yuksel (2014) http://barisyuksel.com/cppmode/.emacs

(setq auto-mode-alist (cons '("\.inc$" . c++-mode) auto-mode-alist))


; start google-c-style with emacs
(use-package google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
(setq c-default-style "bsd")


; start flymake-google-cpplint-load
; let's define a function for flymake initialization
(defun my:flymake-google-init () 
  (require 'flymake-google-cpplint)
  (custom-set-variables
   '(flymake-google-cpplint-command "~/.local/bin/cpplint")
   '(flymake-google-cpplint-verbose "3")
   '(flymake-google-cpplint-linelength "100")
   ;; '(flymake-google-cpplint-filter "-whitespace/line_length")
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

