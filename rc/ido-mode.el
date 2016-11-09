;; Configure the ido mode

(use-package ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(setq ido-file-extensions-order
'(".py" ".c" ".cpp" ".h" ".f90" ".rst" ".txt" ".el" ".ini" ".cfg" ".cnf"))
