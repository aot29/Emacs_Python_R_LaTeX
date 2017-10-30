# emacs_python
Configure emacs as python3 editor.

GNU Emacs is a free, open source programming editor: https://www.gnu.org/software/emacs/

This is a configuration file for using emacs as Python3 editor. It includes:
* Styling
* Python-mode, syntax checking, code style (pep8)
* Directory navigation tree
* Tabs for open files

![Screenshot](https://user-images.githubusercontent.com/679068/32171165-8b0b3728-bd77-11e7-8ca4-ad460faa6a11.png)

# Prerequisites
* Python3, pip3
* virtualenv (required by the autocompletion server)
* GNU Emacs 2.4 or newer

# Usage
2. install flake8 and jedi using pip3
3. put init.el in ~/.emacs.d
4. restart emacs. After the first restart, emacs will download and install the necessary packages.
5. Once Emacs starts, do M-x jedi:install-server (in Emacs, M-x generally stands for Alt-x)

# References
Golubev, M. (2011) Emacs tabbar-mode visual tweaks. Online: https://gist.github.com/3demax/1264635 

Purdon​, K. (2015) Emacs - the Best Python Editor? Online: https://realpython.com/blog/python/emacs-the-best-python-editor/

Moore, A.D: (2013) Python Code completion in Emacs — at last! Online: http://www.alandmoore.com/blog/2013/07/31/python-code-completion-in-emacs-at-last/
