# emacs_python
Configure GNU Emacs as Python3 editor.

GNU Emacs is a free, open source programming editor: https://www.gnu.org/software/emacs/

This is a configuration file for using emacs as Python3 editor. It includes:
* Styling
* Python-mode, syntax checking, code style (pep8)
* Directory navigation tree
* Tabs for open files
* Autocompletion

![Screenshot](https://user-images.githubusercontent.com/679068/32171165-8b0b3728-bd77-11e7-8ca4-ad460faa6a11.png)

# Prerequisites
* Python3, pip3
* virtualenv (required by the autocompletion server)
* GNU Emacs 2.4 or newer

# Usage
1. Get the [emacs cheat sheet](https://www.gnu.org/software/emacs/refcards/pdf/refcard.pdf). Remember, `C-x` generally stands for Ctrl-x and `M-x` for Alt-x. 
2. Install required Python3 packages: `pip3 install -r requirements.txt`
3. put init.el in ~/.emacs.d
4. Restart emacs. After the first restart, emacs will download and install the necessary packages.
5. Once Emacs starts, do `M-x jedi:install-server`

# References
Golubev, M. (2011) Emacs tabbar-mode visual tweaks. Online: https://gist.github.com/3demax/1264635 

Moore, A.D: (2013) Python Code completion in Emacs — at last! Online: http://www.alandmoore.com/blog/2013/07/31/python-code-completion-in-emacs-at-last/

Purdon​, K. (2015) Emacs - the Best Python Editor? Online: https://realpython.com/blog/python/emacs-the-best-python-editor/
