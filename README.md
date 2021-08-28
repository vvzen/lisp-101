# Learning LISP !

The environment looks like it’s (a bit of) a mess.
Probably the result of the fact that there is no _Benevolent Dictator_, or any single entity steering the wheel. LISP is just a (ANSI) standard, so everyone can write an implementation for it, which is way you have all of this variants..

[Some say](https://lispers.org/) that learning LISP will give you "profound enlightenment" so I hope all that of the initial suffering in setting of the dev environment will pay off in the end.

## How to even start

### The emacs way
Going with https://lisp-lang.org/learn/getting-started/ and Emacs seems to be the suggested way. I will consider it on the long run but for now emacs was driving my brain crazy, since I'm mostly used to how vim works.

The Emacs preinstalled with macOS is 22, SLIME needs at least 23..
https://apple.stackexchange.com/questions/229669/update-emacs-that-comes-with-os-x

- `brew install emacs`
Then, to make `left alt` (the Option Key) the Meta key for emacs when using iTerm2:
Select Iterm2 -> Preferences -> Profiles Brings up the profiles view.
On that pane select Keys then Left option key acts as and select +Esc.
Solution found thanks to https://stackoverflow.com/questions/41987296/setting-alt-option-key-to-meta-in-emacs-on-osx

Emacs SLIME basic navigation (M- is the Meta key)

`emacs`
Then M-x slime to run slime.

Instead of the up/down arrow keys, you can use:
- M-p get previous command
- M-n get next command

### The non emacs way

- `brew install clisp`

This seems to kinda work, I have a repl (if I just type `clisp`) and I can write lisp scripts in vim/vscode and then just run `cslisp name-of-the-script.lisp` without having to deal with learning emacs (for now).

The vscode extension that I'm using is from Yasuhiro Matsumoto.

In vscode, to toggle focus between the terminal view and the editor you can do:

- CMD+J (toggle the terminal and bring focus to it)
- Or CTRL ` (focus terminal) and CTRL 1 (focus pane 1)
