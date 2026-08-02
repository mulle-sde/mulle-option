# A multi-select option picker with bitmask output

... for Android, BSDs, Linux, macOS, SunOS, Windows (MinGW, WSL)







## Usage

```
   Usage:
   mulle-option [flags] <option> ...

   Present a multi-select menu on the command line. The user can navigate
   with cursor keys (or SHIFT-'J' / SHIFT-'K'), toggle options with SPACE,
   select all with 'a', clear all with 'c', confirm with ENTER, and quit
   with ESC (or 'q').

   Options can specify a mask value with <name>=<value> syntax (e.g.
   name=0x100 for bit 8). Values not specified are implicit: if the previous
   option has explicit value P, the next implicit value is (P << 1);
   otherwise bits are sequential (1, 2, 4, 8...).

   The result is the combined bitmask printed as hex (e.g. 0x5). Up to 64
   options (fits in a 64-bit mask).

   Exit codes:
    0      : user confirmed a selection (bitmask on stdout)
    128    : user opted out
    130    : user pressed CTRL-C
    131    : options are empty
    132    : too many options (64 max)
    141    : EOF encountered

Flags:
   --cursor-prefix <c>    : set prefix for the current line ("> ")
   --final-title <s>      : set string for final result output ("" to suppress)
   --no-ctrl-c            : do not trap CTRL-C, this disables polling
   --no-cursor-prefix <c> : set prefix for non-current lines ("  ")
   --no-search            : disable search functionality when typing characters
   --option <s>           : you can also add options by an option string
   --options <s>          : as option, pass multiple options separated by '\n'
   --select <mask>        : pre-select options by a bitmask (decimal)
   --selected-prefix <c>  : set prefix for selected options ("[x] ")
   --sv-rc                : trust tput sv/rc, which seems to be broken often
   --timeout <n>          : auto-select after n seconds (selects current mask)
   --title <s>            : set string for initial prompt ("" to suppress)
   --unselected-prefix <c>: set prefix for unselected options ("[ ] ")
   --visible-items <n>    : number of items to present at once (7)
   -ld                    : additional debug output
   -le                    : additional environment debug output
   -lt                    : trace through bash code
   -lx                    : external command execution log output
   -n                     : dry run
   -s                     : be silent
   -v                     : be verbose (increase with -vv, -vvv)

```








## Install

See [mulle-sde-developer](//github.com/mulle-sde/mulle-sde-developer) how to
install mulle-sde, which will also install mulle-option with required
dependencies.

The command to install only the latest mulle-option into
`/usr/local` (with **sudo**) is:

``` bash
curl -L 'https://github.com/mulle-sde/mulle-option/archive/latest.tar.gz' \
 | tar xfz - && cd 'mulle-option-latest' && sudo ./bin/installer /usr/local
```



## Author

[Nat!](https://mulle-kybernetik.com/weblog) for Mulle kybernetiK


