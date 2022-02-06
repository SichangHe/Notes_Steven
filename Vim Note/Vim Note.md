# movement
## arrow equivalent
>            ↑
>      ← h j k l →
>          ↓

## by word
### to start of word
> <–b– ○ –w–>
> word word word
### to end of word
> ㅤㅤ<–ge–○ –e–>
> word word word
### by WORD
same as **by word** but capitalize the last letter
a **WORD** contains any consecutive non-whitespace character

## search
### search character
type a character in replace of `w` below
#### move to result
> ○–fw–>
> word word
#### move to left of result
> ○–tw–>
> word sword
#### backward
capitalize the letter
### search expression
- `/…` + `enter` search forward
- `?…` + `enter` search backward
#### repeat
- `n` next match
- `N` last match
#### expression
- exact
- regex

## end of line
### the end character
> <–0– ○ –$–>
> ㅤㅤlineㅤㅤ
### the end non-whitespace character
> ㅤㅤ<–^–– ○ ––g_–>
> ㅤㅤnot whitespaceㅤㅤ

## by chunk
### by paragraph
> paragraph 1
> stuff
> <–––– { ––––-+
> paragraph 2 ○
> more stuff ㅤ|
> <–––– } ––––-+
> paragraph 3
### by page
#### half page
- up `^u`
- down `^d`
#### whole page
- up `^b`
- down `^f`

# count
`number` + `keys` is the same as pressing `keys` for `number` times
