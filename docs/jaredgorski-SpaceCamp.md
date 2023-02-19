![SpaceCamp logo](https://github.com/jaredgorski/SpaceCamp/raw/master/.media/spacecamp_header_lt.svg?sanitize=true)

<div align="center">
  <h3>
    SpaceCamp is an attractive, comfortable, and legible colorscheme for Vim.
  </h3>
</div>

![SpaceCamp preview](https://github.com/jaredgorski/SpaceCamp/raw/master/.media/spacecamp_preview.png)
![SpaceCamp colors](https://github.com/jaredgorski/SpaceCamp/raw/master/.media/spacecamp_colors.svg?sanitize=true)

<div align="center">
  <h2>
    Flight Instructions
  </h2>
</div>

### Basic Install (recommended if you're unfamiliar with plugin managers)
1) Download this repository
2) Unzip the downloaded file
3) Copy the files `/colors/spacecamp.vim` and `/colors/spacecamp_lite.vim` into your Vim colors folder (found at `~/.vim/colors/`)
4) Add the following to your `.vimrc`:
```vim
colorscheme spacecamp
```
...or, for a slightly lighter background:
```vim
colorscheme spacecamp_lite
```

### Vim Plug
1) Add the following to your plugs in your `.vimrc`:
```vim
Plug 'jaredgorski/spacecamp'
```
2) Run `:PlugInstall`
3) Follow **step 4** in the basic install (above) to load the desired colorscheme via your `.vimrc`

<div align="center">
  <h2>
    Outside of Vim
  </h2>
</div>

### Ports to other editors

- [Kakoune](https://github.com/haukkagu/spacecamp.kak) by [@haukkagu](https://github.com/haukkagu)

### Terminal emulator themes
```NOTE: These files may need to be renamed or pasted as snippets into the appropriate config file for your terminal emulator. See documentation for your particular terminal emulator. ```

- [Alacritty](https://github.com/jaredgorski/SpaceCamp/raw/master/.terminal_themes/spacecamp_alacritty.yaml)
- [Chrome Secure Shell](https://github.com/jaredgorski/SpaceCamp/raw/master/.terminal_themes/spacecamp_chrome-secure-shell.config)
- [Gnome Terminal](https://github.com/jaredgorski/SpaceCamp/raw/master/.terminal_themes/spacecamp_gnome-terminal.sh)
- [Guake](https://github.com/jaredgorski/SpaceCamp/raw/master/.terminal_themes/spacecamp_guake.config)
- [Kitty: spacecamp-kitty](https://github.com/sebkolind/spacecamp-kitty) by [@sebkolind](https://github.com/sebkolind)
- [Konsole](https://github.com/jaredgorski/SpaceCamp/raw/master/.terminal_themes/spacecamp_konsole.config)
- [Linux Console](https://github.com/jaredgorski/SpaceCamp/raw/master/.terminal_themes/spacecamp_linux-console.sh)
- [MinTTY](https://github.com/jaredgorski/SpaceCamp/raw/master/.terminal_themes/spacecamp_mintty.config)
- [Putty](https://github.com/jaredgorski/SpaceCamp/raw/master/.terminal_themes/spacecamp.reg)
- [Terminal.app](https://github.com/jaredgorski/SpaceCamp/raw/master/.terminal_themes/spacecamp.terminal)
- [Terminator](https://github.com/jaredgorski/SpaceCamp/raw/master/.terminal_themes/spacecamp_terminator.config)
- [Termite](https://github.com/jaredgorski/SpaceCamp/raw/master/.terminal_themes/spacecamp_termite.config)
- [XFCE4 Terminal](https://github.com/jaredgorski/SpaceCamp/raw/master/.terminal_themes/spacecamp_xfce4.terminalrc)
- [Xresources](https://github.com/jaredgorski/SpaceCamp/raw/master/.terminal_themes/spacecamp.Xresources)
- [Xshell](https://github.com/jaredgorski/SpaceCamp/raw/master/.terminal_themes/spacecamp.xcs)
- [iTerm2](https://github.com/jaredgorski/SpaceCamp/raw/master/.terminal_themes/spacecamp.itermcolors)
- [iTerm2: spacecamp-iterm](https://github.com/reobin/spacecamp-iterm) by [@reobin](https://github.com/reobin)
- [st](https://github.com/jaredgorski/SpaceCamp/raw/master/.terminal_themes/spacecamp_st.c)
- [Windows Terminal](https://github.com/jaredgorski/SpaceCamp/tree/master/.terminal_themes/spacecamp_windows_terminal.json) by [@techtuner](https://github.com/techtuner)

### Colors

```yaml
colors:
  background: '#121212'
  foreground: '#D0D0D0'

  text:       '#0D0D0D'
  cursor:     '#D0D0D0'

  0:          '#282828'   # black
  1:          '#D71A1A'   # red
  2:          '#57BA37'   # green
  3:          '#F0D50C'   # yellow
  4:          '#91AADF'   # blue
  5:          '#CF73E6'   # magenta
  6:          '#B7CBF4'   # cyan
  7:          '#DEDEDE'   # white

  8:          '#666666'   # bright black
  9:          '#FF0000'   # bright red
  10:         '#D8FA3B'   # bright green
  11:         '#E7C547'   # bright yellow
  12:         '#B7CBF4'   # bright blue
  13:         '#B77EE0'   # bright magenta
  14:         '#A9C1DE'   # bright cyan
  15:         '#EEEEEE'   # bright white
```

![SpaceCamp preview](https://github.com/jaredgorski/SpaceCamp/raw/master/.media/spacecamp_termcolors.png)

---

### Contributing

Please send me an email at jaredgorski6@gmail.com or open an issue. If you're feeling extra motivated, feel free to send pull requests and I'll review them. Keep in mind that I'll be fairly strict about changes, **but** I love contributors and definitely want to get _your_ name in there :smiley:

### Acknowledgements

- The [Blackboard](https://github.com/textmate/themes.tmbundle/blob/master/Themes/Blackboard.tmTheme) theme for textmate, which inspired the SpaceCamp look and feel
- [@cocopon](https://github.com/cocopon)'s [iceberg.vim](https://github.com/cocopon/iceberg.vim), which is inspiring in general
- [@zenorocha](https://github.com/zenorocha), for blessing us all with [Dracula](https://github.com/dracula/dracula-theme)
- [@reobin](https://github.com/reobin/), for showing up on Reddit and kindly giving us [spacecamp-iterm](https://github.com/reobin/spacecamp-iterm)
- [@sebkolind](https://github.com/sebkolind), for the random email and kindly giving us [spacecamp-kitty](https://github.com/sebastianks/spacecamp-kitty)
- [terminal.sexy](https://terminal.sexy), for helping me generate all the terminal themes
- [@haukkagu](https://github.com/haukkagu), for emailing me and writing a great [port for Kakoune](https://github.com/haukkagu/spacecamp.kak)
- [@techtuner](https://github.com/techtuner), for showing up in my email inbox and submitting the [Windows Terminal](https://github.com/jaredgorski/SpaceCamp/tree/master/.terminal_themes/spacecamp_windows_terminal.json) theme

---

Please feel free to drop a note to jaredgorski6@gmail.com if you have kudos or complaints. Now go push some code!
