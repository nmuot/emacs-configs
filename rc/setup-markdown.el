;; http://jblevins.org/projects/markdown-mode/

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; (use-package markdown-preview-mode)
;; (add-to-list
;;  'markdown-preview-stylesheets
;;  "https://raw.githubusercontent.com/richleland/pygments-css/master/emacs.css")
;; (setq markdown-preview-stylesheets
;;       (list "http://thomasf.github.io/solarized-css/solarized-light.min.css"))
;; (add-to-list
;;  'markdown-preview-javascript
;;  "http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-MML-AM_CHTML")
;; (add-to-list
;;  'markdown-preview-javascript
;;  '("http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-MML-AM_CHTML" . async))

(provide 'setup-markdown)
