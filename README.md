# Learning LISP !

The environment looks like it’s (a bit of) a mess.
Probably the result of the fact that there is no _Benevolent Dictator_, or any single entity steering the wheel. LISP is just a (ANSI) standard, so everyone can write an implementation for it, which is way you have all of this variants..

[Some say](https://lispers.org/) that learning LISP will give you "profound enlightenment" so I hope all that of the initial suffering in setting of the dev environment will pay off in the end.

Most of the examples in this repo are coming from knowledge scattered online and here gathered, or from the book 'Artificial Intelligence Programming: Common Case Studies in Common Lisp' (ISBN 978-1-55860-191-8).

## Core Concepts

### Symbols

- Symbols are used to name functions and variables
- Evaluating a symbol means getting the value of that symbol
- Symbols are not case sensitive in Common Lisp. JOHN, john and John all refer to the same symbol.
- Symbols can include a variety of characters: numbers, letters, puntuation marks (+!) and many other things are allowed, and the exact rules for what's not allowed are a bit complex. The convention is to mostly use letters, separated by the `-` (dash) character.

### Special Forms

- They are syntactic expressions that return a value
- They might look like functions, but they're not. They serve the same goal of 'statements' in other programming languages
- They're always lists where the first element is one of a small number of privileged symbols
- For example, `(setf y 42)` is a Special Form
- Confusingly, the term Special Form is used to refer both to symbols like `setf` and the actual expression that starts with them: `(setf y 42)`. Wilensky resolves this ambiguity by calling setf a Special Function, and reserving Special Form to the whole expression. More modern views think that `setf` should not be considered some kind of abnormal function, but just a marker of special syntax that will be handled specially by the compiler. To resolve this ambiguity, another way is to call `setf` the Special Form Operator and `(setf y 42)` the Special Form Expression.


## How to even start

### The emacs way
Going with https://lisp-lang.org/learn/getting-started/ and Emacs seems to be the suggested way. I will consider it on the long run but for now emacs was driving my brain crazy, since I'm mostly used to how vim works.

The Emacs preinstalled with macOS is 22, SLIME needs at least 23..
https://apple.stackexchange.com/questions/229669/update-emacs-that-comes-with-os-x

- `brew install emacs`
Then, to make `left alt` (the Option Key) the Meta key for emacs when using iTerm2:
Select iTerm -> Preferences -> Profiles Brings up the profiles view.
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

## How to run LISP scripts

#### Steel Bank Common Lisp
`$ sbcl --script name-of-the-script.lisp`

#### Common LISP
`$ clisp name-of-the-script.lisp`

#### Clozure Common Lisp
I haven't really found a way..? The best is

`$ ccl --load name-of-the-script.lisp`

But you will still get a REPL after it..