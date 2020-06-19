require "common"
require "common_page"

local color = require "main_colors"
local styles = make_styles(color)

local html = writer(function(a)
  a([[
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name=viewport content="width=device-width, initial-scale=1">

    ]],font_work_sans(),[[

    ]],title("Nimble Fox | "),[[

    <style>
      html {
        background: ]],color.background,[[
      }

      ]],styles.headers,[[
      ]],styles.fancy_url,[[
      ]],styles.newline,[[
      ]],styles.breaks,[[

      .main-fit {
        width: 100%;
        box-shadow: 0px 2px 5px rgba(0,0,0,0.25);
      }

      body {
        font-family: 'Work Sans', sans-serif;
        padding-bottom: 64px;

        margin: 0 auto 0 auto;
        color: ]],color.txt,[[;

        line-height: 1.5;
        font-size: 1.05em;
      }

      top {
        display: block;
        padding: 100px;
        padding-bottom: 0;
      }

      @media (max-width: 1000px) {
        top {
          padding: 0;
        }
        body {
          padding-left: 8px;
        }
        .hide-mobile {
          display: none;
        }
      }

            
    </style>
  </head>
  ]])

  local max_width = "600px"

  a([[
  <body>
    <top>
      <a class="hide-mobile" href="/" style="
        padding: 6px;
        border-radius: 8px;
        color: ]],color.txt,[[;
        box-shadow: 0px 6px 8px rgba(0,0,0,0.075)
        text-decoration: none;

        background-color: #f3fecb;
        border: #b8962f dotted 3px;
      ">
        👋 Justas
      </a>

      <div style="
        max-width: ]],max_width,[[;
        margin: 0 auto;
      ">
        <h1 style="
          padding: 0;
          margin: 0;
        ">
          Nimblefox
        </h1>
      </div>

    </top>

    <article style="
      display: block;
      max-width: ]],max_width,[[;
      margin: 0 auto;
    ">
      <p>Nimblefox is an art tool I worked on full time between 2019-02-xx - 2019-07-xx.</p>
      <p>Functionality is best explained with a video:</p>

      <video class="main-fit" controls> <source src="perspective.webm"/></video>
      <i>Shown: The Linear Perspective tool</i>

      <p>The tool was designed to sit between the input device and the host program,
      making it able to work with most drawing apps:</p>

      <img class="main-fit" src="azpainter.png"/>
      <i>Shown: nimblefox running on azpainter</i>

      <img class="main-fit" src="aseprite.png"/>
      <i>Shown: nimblefox running on aseprite</i>

      <p>The tool had a small variety of "constraints". Here are some:</p>

      <video class="main-fit" controls> <source src="ellipse.webm"/></video>
      <i>Shown: The Ellipse tool</i>

      <video class="main-fit" controls> <source src="bezier.webm"/></video>
      <i>Shown: The Bezier tool</i>

      <p>The tool had the ability to completely manipulate what the input device was reporting to the 
      host program, which allowed for smoothing to be implemented:
      </p>

      <video class="main-fit" controls> <source src="smoothing.webm"/></video>
      <i>Shown: The Weighted Average Smoothing setting</i>

      <p>To meet design requirements, a custom immediate-mode UI was used.</p>

    </article>

    <bottom style="
      display: block;
      max-width: ]],max_width,[[;
      margin: 0 auto;
      padding-top: 16px;
      display: flex;
      justify-content: center;
      text-align: center;
    ">
      <p>
        <newline></newline>
        <a href="/" class="fancy-url">Made by Justas</a>
      </p>
    </bottom>

    ]])

  a(gtag_script())

  a([[
  </body>
</html>
]])
end)

return {
  ["nimblefox.html"] = html
}
