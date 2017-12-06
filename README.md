# Emacs_Python_R_LaTeX
Configure GNU Emacs as Python3, R and LaTeX editor.

GNU Emacs is a free, open source programming editor: https://www.gnu.org/software/emacs/

This is a configuration for using Emacs as Python3, R and LaTeX editor. It includes:

__UI__
* Styling (material-theme)
* Directory navigation tree (neotree)
* Tabs for open files (tabbar)
* Standard copy+paste keybindings (cua-mode)
* Support for makefiles (make-mode)
* Built-in with Emacs: syntax highlighting for bash, xml, html, css, ini

__Python 3__
* Python development environment (elpy)
* Syntax checking (flycheck)
* Code style (py-autopep8)
* Autocompletion (jedi)

__R__
* Autocompletion (ess auto-complete)
* Integrated R console (ess-mode)

__Data__
* Working with csv data: align columns, sort fields etc. (csv-mode)

__LaTeX__
* Editing LaTeX files (auctex)

# Screenshots

![Screenshot Python](https://user-images.githubusercontent.com/679068/32175197-7c48b802-bd84-11e7-8828-650a30a0c368.png)
_Editing a Python file, showing autocompletion._

![Screenshot R](https://user-images.githubusercontent.com/679068/32298019-58b13a4e-bf51-11e7-9bf4-55ec4a0c3127.png)
_Editing an R file, showing a plot and an R console._

![Screenshot LaTeX](https://user-images.githubusercontent.com/679068/33244916-3fd226f6-d300-11e7-864b-cbc8b387b110.png)
_Editing a LaTeX file, showing PDF output._

# Prerequisites
* Python3, pip3
* virtualenv (required by the autocompletion server)
* GNU Emacs 2.4 or newer
* R and ESS.

To install e.g. on Debian do:
```
apt-get install emacs python3 virtualenv ess r-recommended
```

* If you want to use LaTeX, you will need to install a LaTeX distribution, e.g. on Debian, do
```
apt-get install texlive-full
```
(the Texlive distribution will use approximately 3GB of disk space).

# Installation
1. Install required Python3 packages: `pip3 install -r requirements.txt`
2. Add the following lines to your initialization file in  `~ /.emacs.d/init.el` (or create it if it doesn't exist):
```
(setenv "WORKSPACE" "<path_to_your_workspace_dir>")
(add-to-list 'load-path "<path_to_where_you_cloned_emacs_python_r_latex>")
(load "init.el")
```
The directory $WORKSPACE will be shown in the tree when you start Emacs.

3. Start Emacs. After the first (re)start, Emacs will download and install the necessary packages.
4. Restart Emacs. In Emacs, do `M-x jedi:install-server`
5. Restart Emacs

Take a look at a [list of common commands](https://github.com/alvarosaurus/Emacs_Python_R_LaTeX/wiki). 

# Known issues
Please add your issues to the [list of known issues](https://github.com/alvarosaurus/Emacs_Python_R_LaTeX/issues).

# References
Golubev, M. (2011) Emacs tabbar-mode visual tweaks. Online: https://gist.github.com/3demax/1264635 

Hocking, T. (2012) Using R with Emacs and ESS. Online: http://members.cbio.mines-paristech.fr/~thocking/primer.html

Kastrup, D. (2017) AUCTeX – Sophisticated document creation. Online: https://www.gnu.org/software/auctex/index.html

Moore, A.D: (2013) Python Code completion in Emacs — at last! Online: http://www.alandmoore.com/blog/2013/07/31/python-code-completion-in-emacs-at-last/

Patel, A. (2015) Tab Bar Mode, Emacs Wiki. Online: https://www.emacswiki.org/emacs/TabBarMode 

Purdon​, K. (2015) Emacs - the Best Python Editor? Online: https://realpython.com/blog/python/emacs-the-best-python-editor/

Spinu, V. (2013) ESSAuto-complete, Emacs Wiki. Online: https://www.emacswiki.org/emacs/ESSAuto-complete