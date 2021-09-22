require("common")
require("common_page")

local pages = require("pages")
local color = require("main_colors")

local styles = make_styles(color)

local html = writer(function(a)

  local function make_thing(name, date, link, type)
    return {
      name = name,
      date = date,
      link = link,
      type = type,
    }
  end

  a([[
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name=viewport content="width=device-width, initial-scale=1">

    <script data-ad-client="ca-pub-2086540246138416" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

    ]],generate_meta("Justas Dabrila", "I'm Justas 🙂. Here's what I'm working on!", nil, ""),[[

    ]],title("🙂 "),[[

    ]],font_work_sans(),[[

    <style>
      ]],styles.hightlight,[[
      ]],styles.headers,[[
      ]],styles.fancy_url,[[
      ]],styles.newline,[[
      ]],styles.breaks,[[

      .card h1 {
        font-size: 1em;
        padding: 0;
        margin: 0;
        font-weight: bold;
        line-height: 1.1;
        text-shadow: 0px 2px 4px rgba(0, 0, 0, 0.9)
      }

      @keyframes card-hover  {
        0% {
        }
        100% {
          transform: translateY(-2px);
        }
      }

      .card {
        background-color: orange;
        min-width: 200px;
        min-height: 200px;
        border-radius: 10px;
        box-shadow: 0px 2px 20px 0px rgba(0,0,0,0.35);
        margin: 16px;
        display: flex;
        text-decoration: none;

        background-size: cover;
        background-position: center;
      }

      .card:hover {
        animation: card-hover linear 0.1s forwards;
      }

      .card .inner {
        font-size: 1.5em;
        color: whitesmoke;
        width: 70%;
        height: 70%;
        margin: auto;
      }


      monospace {
        font-family: monospace;
      }

      html {
        background: ]],color.background,[[
      }

      emoji {
        filter: drop-shadow(0px 5px 3px rgba(0,0,0,0.25));
      }

      .card .inner {
        display: flex;
        align-items: center;
      }

      ::selection {
        color: white;
        background: ]],color.main_desat,[[;
      }

      .dump {
        display: grid;
        grid-template-columns: 1fr 1fr;
        grid-auto-flow: row;
      }

      .thing-type {
        display: inline-block; 
        font-size: 0.9em;
        min-width: 64px;
      }

      body {
        font-family: 'Work Sans', sans-serif;
        padding: 32px 0px 64px;

        margin: 0 auto 0 auto;
        color: ]],color.txt,[[;

        line-height: 1.5;
        font-size: 1.05em;

        max-width: 1000px;
      }

      .currently {
        display: grid;
        grid-template-columns: auto auto;
        grid-template-rows: 1fr;
      }

      .thing-name {
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        max-width: 300px;
        vertical-align: bottom;
      }

      @media (max-width: 1000px) {
        .dump {
          grid-template-columns: 1fr;
        }

        .hide-mobile {
          display: none;
        }

        body {
          padding-left: 8px;
        }

        .currently {
          grid-template-columns: auto;
        }
      }


    </style>
  </head>

  <body>
    <h1 class="heading">
      <emoji>👋 </emoji>
      Hi, I'm
      <span style="
        background: rgb(27,27,27);
        background: linear-gradient(137deg, ]],color.txt,[[ 0%, ]],color.main_sat,[[ 100%); 
        background-clip: border-box;
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
      ">
        Justas
      </span>
    </h1>

    Currently, I am:

    <div class="currently">
      <a href="https://twitter.com/Justas_Dabrila/status/1319302743757119493" class="card" style="
        background-image: url('crate-worlds.svg'); 
        background-size: 100%;
      ">
        <div class="inner">
          <h1 class="shadow-text">
            Building A Game
            <newline></newline>
            <small><i>Name TBD</i></small>
          </h1>
        </div>
      </a>


      <a href=]],pages.games,[[ class="card" style="
        background-image: url('nebula_oil.png');
      ">
        <div class="inner">
          <h1 class="shadow-text">
            Prototyping
            <newline></newline>
            Games
          </h1>
        </div>
      </a>

    </div>

    Notable Projects:

    <a href="https://justas-d.itch.io/in-a-game-wherein" class="card" style="
      background-image: url('in-a-game-wherein.svg');
    ">
      <div class="inner">
        <h1 class="shadow-text">
          In a Game Wherein
          <newline></newline>
          <small>You are preparing to play a game</small>
          <newline></newline>
          <small><i>2020, Ludum Dare 46</i></small>
        </h1>
      </div>
    </a>

    <a href="]],pages.vttes,[[" class="card" style="
      background-image: url('vttes.svg');
    ">
      <div class="inner">
        <h1 class="shadow-text">
          VTT Enhancement Suite
          <newline></newline>
          <small>Improve Roll20, Chrome & Firefox</small>
          <newline></newline>
          <small><i>2018 - now</i></small>
        </h1>
      </div>
    </a>

    <h2><emoji>❓</emoji> Who's this guy</h2>

    <div style="
      padding-bottom: 8px;
    ">
      I'm Justas Dabrila 🙂. I do ⚙️ systems programming, 🖥️ webdev, 🎮 game development and, sometimes, 🎹 🎨 everything in-between.
    </div>

    <div>
      🔗 I'm on 
      <a class="fancy-url" href="https://twitter.com/Justas_Dabrila">
        <img src="twitter.svg">
        Twitter
      </a> 

      <a class="fancy-url" href="https://justas-d.itch.io/">
        <img src="itch.svg">
        Itch
      </a> 

      <a class="fancy-url" href="https://github.com/justas-d">
        <img src="github.svg">
        GitHub
      </a> 
    </div>

    <div>
      📧 You can also email me! Just piece this together: 
      <span>com@justasdabrila.gmail</span>
    </div>

    <div>
      If you want to buy me a coffee or give me money, you can <a class="fancy-url" href="]],pages.coffee,[[">☕ here (Patreon & PayPal)</a>!
    </div>

    <h3 style="
      margin-top: 32px;
      margin-bottom: 32px;
    ">
      <emoji>🎹</emoji> 
      Some Things I've Made/Been a Part of
      <small>(<i>including the awful ones</i>)</small>
    </h3>
  ]])

  local things = {
    make_thing("recursive kaleidoscope", "2021-09-20", "https://www.youtube.com/watch?v=P-dB_cfD38w", "Shader"),
    make_thing("seq 21 08 19", "2021-08-19", "https://www.youtube.com/watch?v=Jpefd7AMVAM", "Music"),
    make_thing("Crime Time (with friends)", "2021-07-xx", "https://www.youtube.com/watch?v=uYNjbDV-0aU", "Game"),
    make_thing("just-json", "2021-04-05", "https://github.com/justas-d/just-json", "header"),
    make_thing("pico8 thing", "2021-02-25", "https://twitter.com/Justas_Dabrila/status/1365006988355264516", "Tweetcart"),
    make_thing("pico8 fire", "2021-02-13", "https://twitter.com/Justas_Dabrila/status/1360614259621789696", "Tweetcart"),
    make_thing("Ahoist Cratey (as part of thinkycollective)", "2021-01-28", "https://thinkycollective.itch.io/ahoist-cratey", "Puzzle"),
    make_thing("Music Visualizer", "2020-12-05", "https://www.youtube.com/watch?v=A9WNz7g0lJ8", "Shader"),
    make_thing("Mandelbrot variable warping", "2020-12-02", "https://www.youtube.com/watch?v=d6jvsPck3oc", "Shader"),
    make_thing("Dr Jelly and Mr Slime (as part of thinkycollective)", "2020-07-31", "https://thinkycollective.itch.io/dr-jelly-and-mr-slime", "Puzzle"),
    make_thing("Two Slitherlinks 2", "2020-06-12", "two-slitherlinks-2", "Puzzle"),
    make_thing("Two Slitherlinks", "2020-05-26", "two-slitherlinks-1", "Puzzle"),
    make_thing("In a Game Wherein", "2020-04-13", "https://justas-d.itch.io/in-a-game-wherein", "Game"),
    make_thing("Strange Warehouse", "2020-02-01", "https://justas-d.itch.io/strange-warehouse", "Game"),
    make_thing("Hexinfer", "2020-xx-xx", "https://justas-d.itch.io/hexinfer", "Game"),
    make_thing("VTT Enhancement Suite", "20xx-xx-xx", pages.vttes, "Program"),
    make_thing("Snake Sokoban Spiral", "2019-10-08", "https://justas-d.itch.io/snake-sokoban-spiral", "Game"),
    make_thing("worldgen, seeds issue 4", "2019-xx-xx", "http://www.procjam.com/seeds/issues/4/issue4.pdf", "Article"),
    make_thing("Visionban", "2019-09-29", "https://github.com/justas-d/visionban", "Game"),
    make_thing("C coroutines", "2019-09-27", "https://github.com/justas-d/coroutine", "Program"),
    make_thing("height", "2019-09-21", "https://justas-d.github.io/height", "Game"),
    make_thing("breakout", "2019-09-20", "https://justas-d.github.io/breakout", "Game"),
    make_thing("book", "2019-09-13", "https://justas-d.github.io/book", "Game"),
    make_thing("pull", "2019-09-07", "https://justas-d.github.io/pull", "Game"),
    make_thing("tetris-fill", "2019-09-01", "https://justas-d.github.io/tetris-fill/", "Game"),
    make_thing("nimblefox", "2019-xx-xx", "nimblefox.html", "Program"),
    make_thing("sax satb", "2019-07-24", "audio/yeet.ogg", "Music"),
    make_thing("turns", "2019-06-24", "turns.webm", "Program"),
    make_thing("visually pleasing glsl shaders", "2019-06-xx", "https://github.com/justas-d/shader-livecode", "Program"),
    make_thing("vim disable arrow keys", "2019-03-24", "https://github.com/justas-d/vim-no-escape", "A Mess"),
    make_thing("Reverse engineering GameMaker DRM", "2019-03-02", "https://www.youtube.com/watch?v=UzQif6bJDnQ", "Video"),
    make_thing("Reverse engineering Hotline Miami 2 DRM", "2019-03-02", "https://www.youtube.com/watch?v=geRTX9sgGJo", "Video"),
    make_thing("cyboogie extreme stu closeups", "2019-02-01", "https://www.youtube.com/watch?v=93WLvPlTds4", "Disaster"),
    make_thing("attb", "2019-01-13", "audio/Untitled-3-attb.ogg", "Music"),
    make_thing("grappler", "2019-01-06", "games/p-grappler/", "Program"),
    make_thing("dont waste jams", "2019-01-01", "https://justas-d.itch.io/dont-waste-jams", "Game"),
    make_thing("MPD Discord Rich Presence", "2018-xx-xx", "https://github.com/justas-d/mpd-rich-presence-discord", "Program"),
    make_thing("reaction", "2018-12-31", "audio/reaction.mp3", "Music"),
    make_thing("more strings", "2018-12-25", "audio/2018-12-25-more-strings.ogg", "Music"),
    make_thing("harpsichord", "2018-12-24", "audio/2018-12-24-harpsisketch.ogg", "Music"),
    make_thing("enzo sketch", "2018-12-23", "audio/2018-12-23-enzo-sketch-mixed5.ogg", "Music"),
    make_thing("spriteatlas", "2018-12-04", "https://justas-d.github.io/spriteatlas/", "Program"),
    make_thing("2", "2018-11-29", "audio/2018-11-29-2.mp3", "Music"),
    make_thing("roll20auth", "2018-09-04", "https://github.com/justas-d/roll20auth", "Program"),
    make_thing("cpphotload", "2018-05-08", "https://gist.github.com/justas-d/94672346fabec1a82862dce85c6df835", "Program"),
    make_thing("square synths & square scenery", "2018-04-25", "https://www.youtube.com/watch?v=9baVLUN3qW0", "Demo"),
    make_thing("saw_doom", "2018-03-22", "audio/saw_doom.ogg", "Music"),
    make_thing("Vermintide LUA Hook", "2017-xx-xx", "https://github.com/justas-d/vermintide-lua-hook", "Program"),
    make_thing("C# Runescape Server", "2017-xx-xx", "https://github.com/justas-d/cscape", "Program"),
    make_thing("OpenTerrariaClient", "2017-xx-xx", "https://github.com/justas-d/OpenTerrariaClient", "Program"),
  }

  local left_dump = ""
  local right_dump = ""
  local split_index = math.floor((0.5 + #things) / 2)

  local function html_thing(thing)
    if not thing.date then thing.date = "" end
    return concat([[
<div>
  <monospace>
    ]],thing.date,[[
    <span class="hide-mobile thing-type">]],thing.type,[[</span>
  </monospace>

  <a class="fancy-url thing-name" href=]],thing.link,[[ title="]],thing.name,[[">]],thing.name,[[</a>
</div>
    ]])
  end

  for i=1, split_index do
    left_dump = concat(left_dump, html_thing(things[i]))
  end

  for i=split_index + 1, #things do
    right_dump = concat(right_dump, html_thing(things[i]))
  end

  a([[
    <div class="dump">
      <div>]],left_dump,[[</div>
      <div>]],right_dump,[[</div>
    </div>

    <break></break>

    <div style="
      text-align: center;
      font-size: 0.85em;
    ">
      Built with help from Lua. <a class="fancy-url" href="https://github.com/justas-d/homepage">View source</a>.
    </div>
]])

  

  a(gtag_script())

  a([[
  </body>
</html>
]])

end)

return {
  ["index.html"] = html,
}
