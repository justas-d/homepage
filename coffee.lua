require("common")
require("common_page")

local pages = require("pages")
local color = {
  txt = "#1d1e29",
  main_desat = "rgb(252,195,136)",
  main_desat_secondary = "rgb(255, 188, 185)"
}

local styles = make_styles(color)

local html = writer(function(a)
  local center_pad = "20px"
  local center_border_radius = "8px"

  a([[
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name=viewport content="width=device-width, initial-scale=1">

    ]],title("☕ "),[[

    ]],font_work_sans(),[[

    <style>

      ]],styles.fancy_url,[[
      ]],styles.headers,[[
      ]],styles.cards,[[
      ]],styles.newline,[[

      html {
        background: rgb(255,116,63);
        background: linear-gradient(136deg, rgba(255,116,63,1) 0%, rgba(254,180,132,1) 100%);
      }

      .card .inner {
        display: grid;
        grid-template-rows: 50% 1em 1em;
      }

      ::selection {
        color: white;
        background: ]],color.main_desat,[[;
      }

      .cards {
        display: flex;
        justify-content: center;
        padding: ]],center_pad,[[;
      }

      body {
        font-family: 'Work Sans', sans-serif;
        padding: 0;
        margin: 0;

        height: 100vh;

        color: ]],color.txt,[[;

        line-height: 1.5;
        font-size: 1.05em;

        display: grid;
        grid-template-rows: 1fr auto 1fr;
      }

      center {
        margin: 0 auto;
        background: rgba(240,240,240, 0.2);
        border-radius: ]],center_border_radius,[[;
        box-shadow: 0px 3px 4px rgba(0,0,0,0.15);
      }

      top {
        display: block;
        padding: 100px;
        padding-bottom: 0;
      }

      .description {
        background: #ffe8d7;
        padding: ]],center_pad,[[;
        border-bottom-left-radius: ]],center_border_radius,[[;
        border-bottom-right-radius: ]],center_border_radius,[[;
      }

      @media (max-width: 1000px) {
        center {
          margin: 0;
          border-radius: 0;
        }

        top {
          padding: 0;
        }

        .cards {
          flex-direction: column;
        }

        .description {
          border-radius: 0;
        }

        .hide-mobile {
          display: none;
        }

        h1 {
          font-size: 2em;
        }
      }

    </style>
  </head>

  <body>
    <top>
      <a class="hide-mobile" href="/" style="
        background-color: #3fc580;
        padding: 6px;
        border-radius: 8px;
        border: #2b7e05 dotted 3px;
        color: ]],color.txt,[[;
        box-shadow: 0px 1px 9px rgba(0,0,0,0.5);
        text-decoration: none;
      ">
        👋 Justas
      </a>

      <div style="
        display: flex; 
        height: 100%;
        justify-content: center;
      ">
        <h1 style="
          text-align: center;
          align-self: flex-end;
          color: #fbfdfd;
          text-shadow: 0px 5px 11px rgba(0, 0, 0, 0.75);
        ">
          ☕ Buy Me A Coffee
        </h1>
      </div>

    </top>
    ]])

  a([[
    <center>
      <div class="cards">
        <a href="https://www.paypal.me/JustasDabrila" class="card" style="
          background-image: url('paypal.svg');
          background-size: 100%;
          filter: saturate(60%);
        ">
          <div class="inner">
            <h1 style="
              display: flex; 
              justify-content: center;
            ">
              <span style="align-self: flex-end">PayPal.me</span>
            </h1>
            <small>Single</small>
            <small>No Fees</small>
          </div>
        </a>

        <a href="https://www.buymeacoffee.com/stormy" class="card" style="
          background-image: url('bmc.svg');
          background-size: 100%;
          filter: saturate(60%);
        ">
          <div class="inner">
            <h1 style="
              display: flex; 
              justify-content: center;
            ">
              <span style="align-self: flex-end">BMC</span>
            </h1>
            <small>Single/Recurring</small>
            <small>Split Fee</small>
          </div>
        </a>

      </div>

      <div class="description">
        I'm currently maintaining 
        <a href="]],pages.vttes,[[" class="fancy-url">🎲 VTTES</a>, 
        making 
        <a href="]],pages.games,[[" class="fancy-url">🎮 puzzle games</a>
        and making
        <a href="]],pages.logic_puzzles,[[" class="fancy-url">🧩 logic puzzles</a>. 
        <newline></newline>

        All of which are free. 
        <newline></newline>

        Your support is appreciated 💓.
      </div>

    </center>

    <bottom>
    </bottom>

    ]])

  a(gtag_script())

  a([[
  </body>
</html>
]])

end)

return {
  [pages.coffee] = html
}
