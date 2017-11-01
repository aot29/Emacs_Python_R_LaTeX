# emacs_python
Configure GNU Emacs as Python3 editor.

GNU Emacs is a free, open source programming editor: https://www.gnu.org/software/emacs/

This is a configuration file for using emacs as Python3 editor. It includes:
* Styling
* Python-mode, syntax checking, code style (pep8)
* Directory navigation tree
* Tabs for open files
* Autocompletion
* Standard copy+paste keys (aka Cua-Mode)

![Screenshot](https://user-images.githubusercontent.com/679068/32175197-7c48b802-bd84-11e7-8828-650a30a0c368.png)

# Prerequisites
* Python3, pip3
* virtualenv (required by the autocompletion server)
* GNU Emacs 2.4 or newer

# Installation
1. Get the [Emacs cheat sheet](https://www.gnu.org/software/emacs/refcards/pdf/refcard.pdf). Remember, `C-x` generally stands for Ctrl-x and `M-x` for Alt-x. 
2. Install required Python3 packages: `pip3 install -r requirements.txt`
3. copy init.el in ~/.emacs.d (or customize an existing initialization file, see below)
4. Restart Emacs. After the first restart, emacs will download and install the necessary packages.
5. Restart Emacs. In Emacs, do `M-x jedi:install-server`
6. Restart Emacs

# Customizing

To set a specific directory as your working directory, set the WORKSPACE environment variable when you launch emacs.

e.g. if you cloned emacs_python to "~/workspace", create a file ~/.emacs.d/init.el with the following contents:
```
(setenv "WORKSPACE" "~/workspace")
(load "~/workspace/emacs_python/init.el")
```
The directory "~/workspace" will be shown in the tree when you start Emacs.

# References
Golubev, M. (2011) Emacs tabbar-mode visual tweaks. Online: https://gist.github.com/3demax/1264635 

Moore, A.D: (2013) Python Code completion in Emacs — at last! Online: http://www.alandmoore.com/blog/2013/07/31/python-code-completion-in-emacs-at-last/

Patel, A. (2015) Tab Bar Mode, Emacs Wiki. Online: https://www.emacswiki.org/emacs/TabBarMode 

Purdon​, K. (2015) Emacs - the Best Python Editor? Online: https://realpython.com/blog/python/emacs-the-best-python-editor/
