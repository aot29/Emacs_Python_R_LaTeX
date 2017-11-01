# emacs_python
Configure GNU Emacs as Python3 editor.

GNU Emacs is a free, open source programming editor: https://www.gnu.org/software/emacs/

This is a configuration file for using emacs as Python3 editor. It includes:
* Styling
* Standard copy+paste keybindings (aka Cua-Mode)
* Python-mode, syntax checking, code style (pep8)
* Autocompletion
* Directory navigation tree
* Tabs for open files

![Screenshot](https://user-images.githubusercontent.com/679068/32175197-7c48b802-bd84-11e7-8828-650a30a0c368.png)

# Prerequisites
* Python3, pip3
* virtualenv (required by the autocompletion server)
* GNU Emacs 2.4 or newer
* R and ESS. To install e.g. on Debian do: `apt-get install ess r-recommended`, or else follow the instruction [here](http://members.cbio.mines-paristech.fr/~thocking/primer.html).

# Installation
1. Get the [Emacs cheat sheet](https://www.gnu.org/software/emacs/refcards/pdf/refcard.pdf). Remember, `C-x` generally stands for Ctrl-x and `M-x` for Alt-x. 
2. Install required Python3 packages: `pip3 install -r requirements.txt`
3. Add the following lines to your initialization file in  `~ /.emacs.d/init.el` (or create it if it doesn't exist):
```
(setenv "WORKSPACE" "<path_to_your_workspace_dir>")
(add-to-list 'load-path "<path_to_where_you_cloned_emacs_python>")
(load "init.el")
```
The directory $WORKSPACE will be shown in the tree when you start Emacs.

4. Start Emacs. After the first (re)start, Emacs will download and install the necessary packages.
5. Restart Emacs. In Emacs, do `M-x jedi:install-server`
6. Restart Emacs

# References
Golubev, M. (2011) Emacs tabbar-mode visual tweaks. Online: https://gist.github.com/3demax/1264635 

Hocking, T. (2012) Using R with Emacs and ESS. Online: http://members.cbio.mines-paristech.fr/~thocking/primer.html

Moore, A.D: (2013) Python Code completion in Emacs — at last! Online: http://www.alandmoore.com/blog/2013/07/31/python-code-completion-in-emacs-at-last/

Patel, A. (2015) Tab Bar Mode, Emacs Wiki. Online: https://www.emacswiki.org/emacs/TabBarMode 

Purdon​, K. (2015) Emacs - the Best Python Editor? Online: https://realpython.com/blog/python/emacs-the-best-python-editor/
