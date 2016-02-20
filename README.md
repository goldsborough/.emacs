# .emacs

This repo contains the continuously growing organism that is my emacs
configuration. In this README I document (most of) the shortcuts and stuff I'm
learning about emacs.

## Search

Regular Search: C-s

Regex Search: C-M-s

Type C-s to go next.

Backwards: r instead of s

## Search and Replace

Search and replace (query): M-%, replaced by C-R

Then:

SPC: Replace text and find the next occurrence

DEL: Leave text as is and find the next occurrence

.: Replace text, then stop looking for occurrences

!: Replace all occurrences without asking

^ Return the cursor to previously replaced text

https:/ www.gnu.org/software/emacs/manual/html_node/emacs/Regexp-Search.html#Regexp-Search

## Whitespace

Remove all but one space between two words : M-SPC

Remove all whitespace between two words (or the start of line): M-\

## Indenting

Indent intelligently: C-M-q
Indent rigidly (whole buffer, no fancy shit): C-u TAB

__Use this__:
Mark for indenting: C-x TAB
Then use arrow keys to move left or right.

##Erasing

Erase next word : M-d
Erase backwards to start of line: M-0 C-k
Erase word backward: M-DEL

## Mark

Mark whole buffer: C-h

Set mark: C-SPC

## Copy & Paste

To cut text: C-w.
To copy text: M-w.
To paste text: C-y.

## Kill Buffer

Kill the current buffer: C-x k RET ;; optionally write the buffer name before hitting RET

## Navigate

### Files

C-x C-f: Open (Find) a file
C-x C-s: Save the current file
C-x C-w: Save As
C-x s: Save any unsaved files

C-x C-j: open file browser
R (capital): rename file

### Windows

Split vertically: C-x 2
Split horizontally: C-x 3

Next window: C-x o

Close current window: C-x 0

Close all windows except current: C-x 1

Re-balance Buffers to fit screen: C-x +

Increase height by one: C-x ^
Increase height by argument: C-u -?\d C-x ^

### One Buffer

C-a: Move the cursor to the beginning of the line
C-e: Move the cursor to the end of the line

M-f/M-RIGHTARROW: Move the cursor forward to the next word
M-b/M-LEFTARROW: Move the cursor backward to the previous word

M-a: Move the cursor to the beginning of the paragraph
M-e: Move the cursor to the end of the paragraph
C-v: Move the cursor one page down
M-v: Move the cursor one page up

M-g: Goto line

### Many Buffers

List open buffers: C-x C-b
Prompt to open a buffer: C-x b

Where the columns stand for:

C: . for current
R: An asterisk (*) is displayed in this column if the buffer has been modified since it was last saved
M: A percent sign (%) is displayed in this column if the buffer is read-only
Buffer: The name of the buffer
Size: Size of the buffer in Bytes
Mode: The Major mode active in the buffer.
File: The name of the file, if any, load into the buffer.

## magit

M-x magit-status: to see git status, and in the status buffer

s: stage files
c c: commit (type the message then C-c C-c to actually commit)
b b: switch to another branch
Other handy keys:

P P: to do a git push
F F: to do a git pull
TAB: diff on a file
