### -- GLOBAL --
`:h keyword` - open help for keyword      						<br>
`:sav[eas] file` - save file as           						<br>
`:clo[se]` - close current pane           						<br>
`:ter[minal]` - open a terminal window    						<br>
`K` - open man page for word under cursor 						<br>


### -- CURSOR MOVEMENT --
`h` - move left                           						<br>
`j` - move down                           						<br>
`k` - move up                             						<br>
`l` - move right                          						<br>

`H` - move to top of screen               						<br>
`M` - move to middle of screen            						<br>
`L` - move to bottom of screen            						<br>

`w` - jump forwards to start of word      						<br>
`e` - jump forwards to end of word        						<br>
`b` - jump backwards to start of word     						<br>

`0` - move to start of line               						<br>
`$` - move to end of line                 						<br>

`gg` - go to first line of document       						<br>
`G` -  go to last line of document        						<br>

`Ctrl + e` - move screen down one line (without moving cursor)  				<br>
`Ctrl + y` - move screen up one line (without moving cursor)    				<br>
`Ctrl + b` - move back one full screen (u for half)             				<br>
`Ctrl + f` - move forward one full screen (d for half)          				<br>


### -- INSERT MODE --
`i` - insert before cursor                						<br>
`I` - insert at beginning of line         						<br>
`a` - insert after cursor                 						<br>
`A` - insert at end of line               						<br>
`o` - append (open) a new line below the current line           				<br>
`O` - append (open) a new line above the current line           				<br>
`ea` - append at the end of word          						<br>

`Ctrl + w` - delete word before cursor during insert mode       				<br>
`Ctrl + n` - insert (auto-complete) next match before cursor    				<br>


### -- EDITING --
`r` - replace a single character                                      			<br>
`R` - replace more than one character until ESC is pressed            			<br>

`J` - join line below to the current one with a space in between      			<br>
`gJ` - join line below to the current one without a space in between  			<br>

`cc` - change (replace) an entire line    						<br>
`C` - replace to the end of a line        						<br>
`ciw` - replace an entire word            						<br>
`cw` - replace to the end of a word       						<br>

`s` - delete a character and subsitute text 						<br>

`u` - undo                                						<br>
`U` - restore lsat changed line           						<br>
`Ctrl + R` - redo                         						<br>

`.` - repeat last command                 						<br>


### -- VISUAL MODE --
`v` - start visual mode, mark lines, then do a command (like y-yank)  			<br>
`V` - start linewise visual mode                                      			<br>
`o` - move to other end of marked area                                			<br>
`Esc` - exit visual mode                                              			<br>

`y` - copy marked text                    						<br>
`d` - delete marked text                  						<br>
`u` - change marked text to lowercase     						<br>
`U` - change marked text to uppercase     						<br>


### -- REGISTERS --
`:reg[isters]` - show registers content   						<br>
`"xy` - yank into register x              						<br>
`"xp` - paste from register x             						<br>
`"+y` - yank into system clipboard register 						<br>
`"+p` - paste system clipboard register   						<br>


### -- MARKS AND POSITIONS --
`:marks` - list of marks                  						<br>
`ma` - set current position for mark A    						<br>
```\`a``` - jump to position of mark A        						<br>
```y\`a``` - yank text to position of mark A  						<br>
```\`0``` - go to the position where Vim was previously exited  				<br>
```\`"``` - go to the position when last editing this file      				<br>
```\`.``` - go to the position of the last change in thie file  				<br>
```\`\` ``` - go to the position before the last jump            				<br>

`:ju[mps]` - list of jumps                                  				<br>
`Ctrl + i` - go to newer position in jump list              				<br>
`Ctrl + o` - go to older position in jump list              				<br>

`:changes` - list of changes                                				<br>
`g,` - go to newer position in jump list                    				<br>
`g;` - go to older position in jump list                    				<br>


### -- MACROS --
`qa` - record macro a           								<br>
`q` - stop recording macro      								<br>
`@a` - run macro a              								<br>
`@@` - rerun last macro         								<br>


### -- CUT AND PASTE --
`yy` - yank (copy) a line     								<br>
`2yy` - yank 2 lines'         								<br>
`yw` - yank the characters of the word from the cursor position to the start of the next word <br>
`yiw` - yank the word under the cursor      						<br>
`yaw` - yank the word under the cursor and the space after or before it   		<br>
`Y` - yank to the end of the line           						<br>
`p` - paste the clipboard after cursor      						<br>
`P` - paste the clipboard before cursor     						<br>
`gp` - paste after cursor and leave cursor after new    					<br>
`gP` - paste before cursor and leave cursor after new   					<br>
`dd` - delete a line      								<br>
`2dd` - delete 2 lines    								<br>
`dw` - delete the characters of the word from the cursor position to the start of the next word  <br>
`diw` - delete word under cursor    							<br>
`daw` - delete word under cursor and space before or after it   				<br>
`D` - delete to end of line   								<br>
`x` - delete character        								<br>


### -- EXITING --
`:w` - save, but dont exit    								<br>
`:w !sudo tee %` - write out the current file using sudo  				<br>
`:wq`, `:x`, `ZZ` - save and quit 								<br>
`:q` - quit (fails if unsaved changes)      						<br>
`:q!`, `ZQ` - quit and delete unsaved changes 						<br>


### -- SEARCH AND REPLACE --
`/pattern` - search for pattern             						<br>
`?pattern` - search backwards for pattern   						<br>
`\vpattern` - 'very magic' pattern: non-alphanumeric characters don't need escaping 	<br>
`n` - repeat search in same direction       						<br>
`N` - repeat search in opposite direction   						<br>
`:%s/old/new/g` - replace all old with new throughout file                          	<br>
`:%s/old/new/gv` - replace all old with new throughout file with confirmations      	<br>


### -- TABS --
`:tabnew` - open a file in a new tab        						<br>
`Ctrl + wT` - move the current split window into its own tab    				<br>
`gt` - move to next tab                     						<br>
`gT` - move to previous tab                 						<br>
`\#gt` - move to tab number #               						<br>
`:tabc` - close the current tab and all its windows             				<br>
`:tabo` - close all tabs except for the current one             				<br>
`:tabdo cmd` - runs cmd on all tabs (e.g. :tabdo q - closes all opened tabs)        	<br>


### -- MULTIPLE FILES --
`:e file` - edit file in new buffer     							<br>
`:bn` - go to next buffer               							<br>
`:bp` - go to previous buffer           							<br>
`:bd` - delete a buffer (close file)    							<br>
`:b#` - go to buffer index #            							<br>
`:b file` - go to buffer by file        							<br>
`:ls` - list all open buffers           							<br>
`:sp file` - open a file in a new buffer and split window             			<br>
`:vs file` - open a file in a new buffer and vertically split window  			<br>
`:tab ba` - open all buffers as tabs    							<br>
`:vert ba` - open all tabs as vertical windows  						<br>

`Ctrl + ws` - split window                  						<br>
`Ctrl + wv` - split vertically              						<br>
`Ctrl + ww` - switch windows                						<br>
`Ctrl + wq` - quit a window                 						<br>
`Ctrl + wh` - move cursor to left window    						<br>
`Ctrl + wl` - move cursor to right window   						<br>

`Ctrl + w=` - make all wubdiws equal height & width 					<br>
