;; (setq auto-mode-alist
;;       (append '(("SConstruct\\'" . python-mode)
;; 		("SConscript\\'" . python-mode))
;;               auto-mode-alist))

(require-package 'pip-requirements)
(require-package 'elpy)
;; (require-package 'py-autopep8)
(elpy-enable)
;; (require-package 'ein) ;; add the ein package (Emacs ipython notebook)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
(setq elpy-rpc-python-command "python3")
(setq python-shell-interpreter "ipython3"
      python-shell-interpreter-args "-i")
(setq python-shell-prompt-detect-failure-warning nil)
;; (setq python-shell-interpreter "ipython3"
;;       python-shell-interpreter-args "--pylab=osx --pdb --nosep --classic"
;;       python-shell-prompt-regexp ">>> "
;;       python-shell-prompt-output-regexp ""
;;       python-shell-completion-setup-code "from IPython.core.completerlib import module_completion"
;;       python-shell-completion-module-string-code "';'.join(module_completion('''%s'''))\n"
;;       python-shell-completion-string-code "';'.join(get_ipython().Completer.all_completions('''%s'''))\n"
;;       )
(setq tab-width 4)
(set-variable 'py-indent-offset 4)
(set-variable 'python-indent-guess-indent-offset nil)

(provide 'init-python-mode)

