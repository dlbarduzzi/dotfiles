# Motions & Commands

## Examples

- `Ctrl + ng`: Show how many lines there are in a file.

- `0`: Bring cursor to the beginning of the line.
- `^`: Bring cursor to the first character of the line.
- `$`: Bring cursor to the end of the line.
- `w`: Move cursor word by word.
- `W`: Move cursor word by word ignoring non-characters.
- `b`: Move cursor word by word backwards.
- `B`: Move cursor word by word backwards ignoring non-characters.
- `r`: Replace word.
- `~`: Toggle word case (lower and upper).
- `i`: Enter insert mode.
- `I`: Enter insert mode in the beginning of the line.
- `a`: Enter insert mode after the cursor.
- `A`: Enter insert mode at the end of the line.
- `x`: Delete letter where cursor is.
- `X`: Delete letter to the left of the cursor.
- `o`: Insert into a new line.
- `O`: Insert into the line above.
- `.`: Repeat last command.

- `dw`: Delete word.
- `d0`: Delete everything from the cursor to the beginning of the line.
- `d$`: Delete everything from the cursor to the end of the line.
- `dd`: Delete current line.

## Modes

- Normal Mode: Default mode for navigation and commands
- Insert Mode: `i`, `I`, `a`, `A`
- Visual Mode: `v` (character), `V` (line), `Ctrl + v` (block)
- Command Mode: `:`

## Navigation

- Basic: `hjkl`
- Words: `w` (next word), `b` (previous word), `e` (end of word)
- Lines: `0` (start), `^` (first non-whitespace), `$` (end)
- Scrolling: `Ctrl + d` (down), `Ctrl + u` (up)
- File: `gg` (top), `G` (bottom)

## Actions

- `d`: Delete
- `c`: Change (delete and enter Insert Mode)
- `y`: Yank (copy)
- `v`: Visual selection

## Motions

- `i`: Inside
- `a`: Around

## Objects

- `w`: Word
- `p`: Paragraph
- `t`: Tag
- `q`: Quote (or `'`, `"`, ```)
- `b`: Bracket (or `(`, `{`, `[`, `<`)

## Examples

`dw` : Delete Word
`cw` : Change Word
`yy` : Copy Entire Line
`y$` : Copy To End Of Line
`diq`: Delete Inside Quotes
`ca{`: Change Around Braces
`ci(`: Change Inside Parenthesis
`yap`: Yank Paragraph
`dab`: Delete Around Brackets
`yiw`: Yank Inside Word
`ciw`: Change Inside Word
`vit`: Visual Selection Inside Tag
`ct"`: Change To Next " (leaving the ")
`df|`: Delete to Next | (including the |)

#### Reload file without exiting it

`:source %`

#### Bring current line to the top of the file

`z ENTER`

#### Move page up and down

`Ctrl + b` : Move page screen up
`Ctrl + f` : Move page screen down

#### Comment out a block of code

`Ctrl + v` : Enter visual block mode
`hjkl` : Select lines to be commented out
`Shift + i` : Enter insert mode
`#` : Enter the comment character (i.e. python)
`Esc` : Insert character on all selected lines

#### Indent a block of code

`Shift + v` : Enter visual line mode
`jk` : Move up or down to select code block
`> or <` : Indent forward or backward
`.` : Press dot to repeat indentation (or press > or < multiple times)
