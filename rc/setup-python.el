;; Configure python mode
;; --> https://github.com/jorgenschaefer/elpy
;;
;; Dependencies:
;; # Either of these
;; pip install rope
;; pip install jedi
;; # flake8 for code checks
;; pip install flake8
;; # importmagic for automatic imports
;; pip install importmagic
;; # and autopep8 for automatic PEP8 formatting
;; pip install autopep8
;; # and yapf for code formatting
;; pip install yapf
;; 


(elpy-enable)
(elpy-use-ipython)
(setq elpy-set-backend "jedi")

;; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(add-hook 'python-mode-hook (lambda () (interactive) (column-marker-1 79)))
(add-hook 'python-mode-hook 'flyspell-prog-mode)

;; python debuger
(defun python-add-breakpoint ()
  "Add a break point"
  (interactive)
  (newline-and-indent)
  (insert "import ipdb; ipdb.set_trace()")
  (highlight-lines-matching-regexp "^[ ]*import ipdb; ipdb.set_trace()"))

;; (define-key python-mode-map (kbd "C-c C-b") 'python-add-breakpoint)

(provide 'setup-python)
