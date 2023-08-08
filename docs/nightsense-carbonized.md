**This repository has been superseded by [vimspectr](https://github.com/nightsense/vimspectr).**

.

.

.

<h1 id="carbonized">carbonized</h1>

<p>A vim theme inspired by the <a href="https://geekhack.org/index.php?topic=79693.0">Carbon keycap set</a> by T0mb3ry.</p>

<h2 id="screenshots">screenshots</h2>

<table>
<tr><td align="center"><strong>carbonized-dark</strong></td><td align="center"><strong>carbonized-light</strong></td></tr>
<tr>
<td><img src="/img/screenshot-carbonized-dark.png" alt="screenshot of the carbonized-dark vim theme" width="282" /></td>
<td align="center"><img src="/img/screenshot-carbonized-light.png" alt="screenshot of the carbonized-light vim theme" width="282" /></td>
</tr>
</table>

<blockquote>
  <p>pictured font: <a href="http://input.fontbureau.com/">Input Mono Narrow</a> (1.2x line spacing)</p>
</blockquote>

<h2 id="setup">setup</h2>

<h3 id="installation">installation</h3>

<p>While vim themes can be installed manually (place <a href="https://github.com/nightsense/carbonized/tree/master/colors">theme file</a> in <code class="highlighter-rouge">~/.vim/colors/</code>), a <strong>plugin helper</strong> is recommended.</p>

<p>If you don’t have a preferred helper, consider trying <a href="https://github.com/junegunn/vim-plug">vim-plug</a>, which can be installed with:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
</code></pre></div></div>

<p>To install carbonized using vim-plug, add the following to the top of your <code class="highlighter-rouge">vimrc</code>:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>call plug#begin('~/.vim/plugged')
Plug 'nightsense/carbonized'
call plug#end()
</code></pre></div></div>

<p>Then restart vim and run <code class="highlighter-rouge">PlugUpdate</code> (from the vim command line).</p>

<h3 id="activation">activation</h3>

<p>To activate the carbonized theme, add one of the following lines to your <code class="highlighter-rouge">vimrc</code>:</p>

<ul>
  <li><code class="highlighter-rouge">colorscheme carbonized-light</code></li>
  <li><code class="highlighter-rouge">colorscheme carbonized-dark</code></li>
</ul>

<p>To activate the <a href="https://github.com/itchyny/lightline.vim">lightline</a> theme, add one of the following lines to your lightline config:</p>

<ul>
  <li><code class="highlighter-rouge">\ 'colorscheme': 'carbonized_light',</code></li>
  <li><code class="highlighter-rouge">\ 'colorscheme': 'carbonized_dark',</code></li>
</ul>

<blockquote>
  <p>To assign themes to specific intervals of the day, try the <a href="https://github.com/nightsense/night-and-day">night-and-day</a> plugin.</p>
</blockquote>

<h3 id="options">options</h3>

<p>You can tweak the following options by adding lines to your `vimrc’.</p>

<p>Disable highlighted <strong>current line number</strong>:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>let g:carbonized_dark_CursorLineNr = 'off'
let g:carbonized_light_CursorLineNr = 'off'
</code></pre></div></div>

<p>Disable the highlighted <strong>line number background</strong>:</p>

<div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>let g:carbonized_dark_LineNr = 'off'
let g:carbonized_light_LineNr = 'off'
</code></pre></div></div>

<h2 id="terminal-vim">terminal vim</h2>

<p>See the <a href="https://github.com/nightsense/nightshell">nightshell</a> repository, which allows carbonized to be used in a variety of terminal applications.</p>

<h2 id="palette">palette</h2>

<p>carbonized consists of 8 theme-distinct <strong>base colours</strong>, which are used for most interface elements, and 8 standard <strong>accent colours</strong> (common to the “nightsense theme family”) used for syntax highlighting.</p>

<blockquote>
  <ul>
    <li><strong>hues</strong> were selected at the scale of 1/48 (7.5°) colour wheel intervals</li>
    <li><strong>saturations</strong> and <strong>values</strong> were selected at the scale of 1/24 (4.17%)</li>
    <li>the <a href="https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html#visual-audio-contrast-contrast-73-head">ISO 3:1 contrast standard</a> is met by nearly all text/background combinations, exceptions being made for some transient-highlighted backgrounds (e.g. cursorcolumn, cursorline)</li>
  </ul>
</blockquote>

<table>
  <thead>
    <tr>
      <th style="text-align: right">base</th>
      <th style="text-align: center">light accents</th>
      <th style="text-align: left">dark accents</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align: right"><img src="http://www.colorhexa.com/2b2b2b.png" height="24" width="42" /> <code class="highlighter-rouge">2b2b2b</code> </td>
      <td style="text-align: center"><img src="http://www.colorhexa.com/f55050.png" height="24" width="42" /> <code class="highlighter-rouge">f55050</code> </td>
      <td style="text-align: left"><img src="http://www.colorhexa.com/bf5858.png" height="24" width="42" /> <code class="highlighter-rouge">bf5858</code></td>
    </tr>
    <tr>
      <td style="text-align: right"><img src="http://www.colorhexa.com/3b3b37.png" height="24" width="42" /> <code class="highlighter-rouge">3b3b37</code> </td>
      <td style="text-align: center"><img src="http://www.colorhexa.com/e06a26.png" height="24" width="42" /> <code class="highlighter-rouge">e06a26</code> </td>
      <td style="text-align: left"><img src="http://www.colorhexa.com/b56f45.png" height="24" width="42" /> <code class="highlighter-rouge">b56f45</code></td>
    </tr>
    <tr>
      <td style="text-align: right"><img src="http://www.colorhexa.com/75756e.png" height="24" width="42" /> <code class="highlighter-rouge">75756e</code> </td>
      <td style="text-align: center"><img src="http://www.colorhexa.com/d4ac35.png" height="24" width="42" /> <code class="highlighter-rouge">d4ac35</code> </td>
      <td style="text-align: left"><img src="http://www.colorhexa.com/ab8e38.png" height="24" width="42" /> <code class="highlighter-rouge">ab8e38</code></td>
    </tr>
    <tr>
      <td style="text-align: right"><img src="http://www.colorhexa.com/8a8a81.png" height="24" width="42" /> <code class="highlighter-rouge">8a8a81</code> </td>
      <td style="text-align: center"><img src="http://www.colorhexa.com/219e21.png" height="24" width="42" /> <code class="highlighter-rouge">219e21</code> </td>
      <td style="text-align: left"><img src="http://www.colorhexa.com/508a50.png" height="24" width="42" /> <code class="highlighter-rouge">508a50</code></td>
    </tr>
    <tr>
      <td style="text-align: right"><img src="http://www.colorhexa.com/9e9e95.png" height="24" width="42" /> <code class="highlighter-rouge">9e9e95</code> </td>
      <td style="text-align: center"><img src="http://www.colorhexa.com/1b9e9e.png" height="24" width="42" /> <code class="highlighter-rouge">1b9e9e</code> </td>
      <td style="text-align: left"><img src="http://www.colorhexa.com/458a8a.png" height="24" width="42" /> <code class="highlighter-rouge">458a8a</code></td>
    </tr>
    <tr>
      <td style="text-align: right"><img src="http://www.colorhexa.com/b5b5aa.png" height="24" width="42" /> <code class="highlighter-rouge">b5b5aa</code> </td>
      <td style="text-align: center"><img src="http://www.colorhexa.com/468dd4.png" height="24" width="42" /> <code class="highlighter-rouge">468dd4</code> </td>
      <td style="text-align: left"><img src="http://www.colorhexa.com/557b9e.png" height="24" width="42" /> <code class="highlighter-rouge">557b9e</code></td>
    </tr>
    <tr>
      <td style="text-align: right"><img src="http://www.colorhexa.com/f0f0e1.png" height="24" width="42" /> <code class="highlighter-rouge">f0f0e1</code> </td>
      <td style="text-align: center"><img src="http://www.colorhexa.com/a26fbf.png" height="24" width="42" /> <code class="highlighter-rouge">a26fbf</code> </td>
      <td style="text-align: left"><img src="http://www.colorhexa.com/8b6a9e.png" height="24" width="42" /> <code class="highlighter-rouge">8b6a9e</code></td>
    </tr>
    <tr>
      <td style="text-align: right"><img src="http://www.colorhexa.com/fffff0.png" height="24" width="42" /> <code class="highlighter-rouge">fffff0</code> </td>
      <td style="text-align: center"><img src="http://www.colorhexa.com/d46a84.png" height="24" width="42" /> <code class="highlighter-rouge">d46a84</code> </td>
      <td style="text-align: left"><img src="http://www.colorhexa.com/ab6a7a.png" height="24" width="42" /> <code class="highlighter-rouge">ab6a7a</code></td>
    </tr>
  </tbody>
</table>

<p><img src="http://www.colorhexa.com/f55050.png" height="24" width="42" />
<strong>Red</strong>, the colour of alarm, is used for <strong>warning elements</strong>, including error messages, misspellings, and diff deletions.</p>

<p><img src="http://www.colorhexa.com/e06a26.png" height="24" width="42" />
<strong>Orange</strong>, the colour of fire, can be associated with the preliminary “warmup” phase of some activity; literally, this could be the heating-up of a hearth for forging, or a stove for cooking. Orange is therefore used for <strong>preliminary elements</strong>, such as preprocessor commands (which prepare data to be handled by another program), incremental searching (that is, a search term in the process of being typed), titles, and miscapitalized words.</p>

<p><img src="http://www.colorhexa.com/d4ac35.png" height="24" width="42" />
<strong>Yellow</strong>, the classic highlighting colour, is applied to elements that are not warnings, yet should draw attention with high visibility. These <strong>highlighted elements</strong> include search results, task tags (<code class="highlighter-rouge">TODO</code>, <code class="highlighter-rouge">FIXME</code>…), and diff changes.</p>

<p><img src="http://www.colorhexa.com/219e21.png" height="24" width="42" />
<strong>Green</strong>, the colour that says “go ahead, proceed with the task at hand”, is used for <strong>action elements</strong>, such as statements (if/then, while/do, case…), mode indicators (insert, visual…), vim user prompts, and diff additions.</p>

<p><img src="http://www.colorhexa.com/1b9e9e.png" height="24" width="42" />
<strong>Teal</strong> is named after the “common teal”, a kind of duck, thus connecting this colour with the concept of “species”, which is a means of classifying life into very specific types. Teal is therefore used for specifying <strong>object types</strong>, such as data type (boolean, integer, string…) or storage class (static, volatile…), as well as marking mislocalized words (that is, words that are not misspelled but of the wrong type, namely a foreign locale type).</p>

<p><img src="http://www.colorhexa.com/468dd4.png" height="24" width="42" />
<strong>Blue</strong>, a colour of calm stability, is used for <strong>constants</strong>, which come in the form of boolean values, integers, floating-point numbers, characters, and strings.</p>

<p><img src="http://www.colorhexa.com/a26fbf.png" height="24" width="42" />
<strong>Purple</strong>, often associated with (historically) rare purple dyes produced for special works of art, is used for <strong>special text</strong>, including special characters (standalone or within syntax units), vim tags, and debugging statements. Rarely-used words are also marked, allowing the writer to consider whether such a specially uncommon word is appropriate.</p>

<p><img src="http://www.colorhexa.com/d46a84.png" height="24" width="42" />
<strong>Pink</strong>, the colour of spring blossoms, is used for <strong>object names</strong>, including the names of variables and functions. To code is to bring countless objects blossoming into life as one types their names.</p>
