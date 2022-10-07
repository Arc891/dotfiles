### -- GLOBAL --
:h keyword - open help for keyword
:sav[eas] file - save file as
:clo[se] - close current pane
:ter[minal] - open a terminal window
K - open man page for word under cursor


### -- CURSOR MOVEMENT --
h - move left
j - move down
k - move up
l - move right

H - move to top of screen
M - move to middle of screen
L - move to bottom of screen

w - jump forwards to start of word
e - jump forwards to end of word
b - jump backwards to start of word

0 - move to start of line
$ - move to end of line

gg - go to first line of document
G -  go to last line of document

Ctrl + e - move screen down one line (without moving cursor)
Ctrl + y - move screen up one line (without moving cursor)
Ctrl + b - move back one full screen (u for half)
Ctrl + f - move forward one full screen (d for half)


### -- INSERT MODE --
i - insert before cursor
I - insert at beginning of line
a - insert after cursor
A - insert at end of line
o - append (open) a new line below the current line
O - append (open) a new line above the current line
ea - append at the end of word

Ctrl + w - delete word before cursor during insert mode 
Ctrl + n - insert (auto-complete) next match before cursor


### -- EDITING --
r - replace a single character
R - replace more than one character until ESC is pressed

J - join line below to the current one with a space in between
gJ - join line below to the current one without a space in between

cc - change (replace) an entire line
C - replace to the end of a line
ciw - replace an entire word
cw - replace to the end of a word

s - delete a character and subsitute text

u - undo
U - restore lsat changed line
Ctrl + R - redo

. - repeat last command


### -- VISUAL MODE --
v - start visual mode, mark lines, then do a command (like y-yank)
V - start linewise visual mode
o - move to other end of marked area
Esc - exit visual mode

y - copy marked text
d - delete marked text
u - change marked text to lowercase
U - change marked text to uppercase


### -- REGISTERS --
:reg[isters] - show registers content
"xy - yank into register x
"xp - paste from register x
"+y - yank into system clipboard register
"+p - paste system clipboard register


### -- MARKS AND POSITIONS --
:marks - list of marks
ma - set current position for mark A
`a - jump to position of mark A
y`a - yank text to position of mark A
`0 - go to the position where Vim was previously exited
`" - go to the position when last editing this file
`. - go to the position of the last change in thie file
`` - go to the position before the last jump

:ju[mps] - list of jumps
Ctrl + i - go to newer position in jump list
Ctrl + o - go to older position in jump list

:changes - list of changes
g, - go to newer position in jump list
g; - go to older position in jump list


### -- MACROS --
qa - record macro a
q - stop recording macro
@a - run macro a
@@ - rerun last macro


### -- CUT AND PASTE --
yy - yank (copy) a line
2yy - yank 2 lines'
yw - yank the characters of the word from the cursor position to the start of the next word
yiw - yank the word under the cursor
yaw - yank the word under the cursor and the space after or before it
Y - yank to the end of the line
p - paste the clipboard after cursor
P - paste the clipboard before cursor
gp - paste after cursor and leave cursor after new
gP - paste before cursor and leave cursor after new
dd - delete a line
2dd - delete 2 lines
dw - delete the characters of the word from the cursor position to the start of the next word
diw - delete word under cursor
daw - delete word under cursor and space before or after it
D - delete to end of line
x - delete character


### -- EXITING --
:w - save, but dont exit
:w !sudo tee % - write out the current file using sudo
:wq, :x, ZZ - save and quit
:q - quit (fails if unsaved changes)
:q!, ZQ - quit and delete unsaved changes


### -- SEARCH AND REPLACE --
/pattern - search for pattern
?pattern - search backwards for pattern
\vpattern - 'very magic' pattern: non-alphanumeric characters don't need escaping
n - repeat search in same direction
N - repeat search in opposite direction
:%s/old/new/g - replace all old with new throughout file
:%s/old/new/gv - replace all old with new throughout file with confirmations


### -- TABS --
:tabnew - open a file in a new tab
Ctrl + wT - move the current split window into its own tab
gt - move to next tab
gT - move to previous tab
\#gt - move to tab number #
:tabc - close the current tab and all its windows
:tabo - close all tabs except for the current one
:tabdo cmd - runs cmd on all tabs (e.g. :tabdo q - closes all opened tabs)


### -- MULTIPLE FILES --
:e file - edit file in new buffer
:bn - go to next buffer
:bp - go to previous buffer
:bd - delete a buffer (close file)
:b# - go to buffer index #
:b file - go to buffer by file
:ls - list all open buffers
:sp file - open a file in a new buffer and split window
:vs file - open a file in a new buffer and vertically split window
:tab ba - open all buffers as tabs
:vert ba - open all tabs as vertical windows

Ctrl + ws - split window
Ctrl + wv - split vertically
Ctrl + ww - switch windows
Ctrl + wq - quit a window
Ctrl + wh - move cursor to left window
Ctrl + wl - move cursor to right window

Ctrl + w= - make all wubdiws equal height & width
