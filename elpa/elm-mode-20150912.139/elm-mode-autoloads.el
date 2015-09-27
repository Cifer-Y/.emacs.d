;;; elm-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "elm-indent" "elm-indent.el" (22010 31813 0
;;;;;;  0))
;;; Generated autoloads from elm-indent.el

(autoload 'turn-on-elm-indent "elm-indent" "\
Turn on ``intelligent'' Elm indentation mode.

\(fn)" nil nil)

(autoload 'elm-indent-mode "elm-indent" "\
``Intelligent'' Elm indentation mode.

This deals with the layout rules of Elm.

\\[elm-indent-cycle] starts the cycle which proposes new
possibilities as long as the TAB key is pressed.  Any other key
or mouse click terminates the cycle and is interpreted except for
RET which merely exits the cycle.

Other special keys are:

    \\[elm-indent-insert-equal]
      inserts an =
    \\[elm-indent-insert-guard]
      inserts an |
    \\[elm-indent-insert-otherwise]
      inserts an | otherwise =
these functions also align the guards and rhs of the current definition
    \\[elm-indent-insert-where]
      inserts a where keyword
    \\[elm-indent-align-guards-and-rhs]
      aligns the guards and rhs of the region

Invokes `elm-indent-hook' if not nil.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "elm-interactive" "elm-interactive.el" (22010
;;;;;;  31813 0 0))
;;; Generated autoloads from elm-interactive.el

(autoload 'elm-interactive-mode "elm-interactive" "\
Major mode for `run-elm-interactive'.

\\{elm-interactive-mode-map}

\(fn)" t nil)

(autoload 'run-elm-interactive "elm-interactive" "\
Run an inferior instance of `elm-repl' inside Emacs.

\(fn)" t nil)

(autoload 'load-elm-repl "elm-interactive" "\
Load an interactive REPL if there isn't already one running.
Changes the current root directory to be the directory with the closest
package json if one exists otherwise sets it to be the working directory
of the file specified.

\(fn)" t nil)

(autoload 'push-elm-repl "elm-interactive" "\
Push the selected region to an interactive REPL.

\(fn)" t nil)

(autoload 'push-decl-elm-repl "elm-interactive" "\
Push the current top level declaration to the REPL.

\(fn)" t nil)

(autoload 'run-elm-reactor "elm-interactive" "\
Run the Elm reactor process.

\(fn)" t nil)

(autoload 'elm-preview-buffer "elm-interactive" "\
Preview the current buffer using Elm reactor (in debug mode if DEBUG is truthy).

\(fn DEBUG)" t nil)

(autoload 'elm-preview-main "elm-interactive" "\
Preview the Main.elm file using Elm reactor (in debug mode if DEBUG is truthy).

\(fn DEBUG)" t nil)

(autoload 'elm-compile-buffer "elm-interactive" "\
Compile the current buffer into OUTPUT.

\(fn &optional OUTPUT)" t nil)

(autoload 'elm-compile-main "elm-interactive" "\
Compile the Main.elm file into OUTPUT.

\(fn &optional OUTPUT)" t nil)

(autoload 'elm-package-catalog "elm-interactive" "\
Show the package catalog, refreshing the list if REFRESH is truthy.

\(fn REFRESH)" t nil)

(autoload 'elm-package-refresh-contents "elm-interactive" "\
Refresh the package list.

\(fn)" t nil)

(autoload 'elm-import "elm-interactive" "\
Import a module, refreshing if REFRESH is truthy.

\(fn REFRESH)" t nil)

(autoload 'elm-documentation-lookup "elm-interactive" "\
Lookup the documentation for a function, refreshing if REFRESH is truthy.

\(fn REFRESH)" t nil)

(autoload 'elm-package-mode "elm-interactive" "\
Special mode for elm-package.

\\{elm-package-mode-map}

\(fn)" t nil)

(autoload 'elm-oracle-get-completions "elm-interactive" "\
Get elm-oracle completions for PREFIX.

\(fn PREFIX)" nil nil)

(autoload 'elm-oracle-get-documentation "elm-interactive" "\
Get elm-oracle documentation for ITEM.

\(fn ITEM)" nil nil)

(autoload 'elm-oracle-type-at-point "elm-interactive" "\
Print the type of the function at point to the minibuffer.

\(fn)" t nil)

(autoload 'elm-oracle-completion-at-point-function "elm-interactive" "\
Completion at point function for elm-oracle.

\(fn)" nil nil)

(autoload 'elm-oracle-setup-completion "elm-interactive" "\
Setup standard completion.

\(fn)" nil nil)

(autoload 'elm-oracle-setup-ac "elm-interactive" "\
Setup auto-complete support.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "elm-mode" "elm-mode.el" (22010 31813 0 0))
;;; Generated autoloads from elm-mode.el

(autoload 'elm-mode "elm-mode" "\
Major mode for editing Elm source code.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.elm\\'" . elm-mode))

;;;***

;;;### (autoloads nil nil ("elm-font-lock.el" "elm-mode-pkg.el" "elm-util.el")
;;;;;;  (22010 31813 28678 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; elm-mode-autoloads.el ends here
