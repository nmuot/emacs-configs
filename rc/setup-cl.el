;; My configuration for OpemCL

(use-package opencl-mode)
(add-to-list 'auto-mode-alist '("\\.cl\\'" . opencl-mode))
(add-to-list 'auto-mode-alist '("\\.ccl\\'" . opencl-mode))

(provide 'setup-cl)
