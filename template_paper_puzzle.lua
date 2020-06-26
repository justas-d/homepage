require "common"
require "common_page"

local color = require "main_colors"
local styles = make_styles(color)

function generate_paper_puzzle(
  puzzle_name,
  puzzle_desc,
  puzzle_img,
  puzzle_date,
  page_filename,
  content
) return writer(function(a)
  a([[
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name=viewport content="width=device-width, initial-scale=1">

    ]],generate_meta(
      puzzle_name,
      puzzle_desc,
      puzzle_img, 
      page_filename
    ),[[

    ]],font_work_sans(),[[

    ]],title("🧩 " .. puzzle_name, false),[[

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
        border-radius: 8px;
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
        body {
          padding-left: 8px;
        }

        .hide-mobile {
          display: none;
        }

        top {
          padding: 0;
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
          🧩 ]],puzzle_name,[[
        </h1>

        <small style="
          color: #999;
        ">
          ]],puzzle_date,[[
        </small>
      </div>

    </top>

    <article style="
      display: block;
      max-width: ]],max_width,[[;
      margin: 0 auto;
    ">
    ]],content,[[
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
        <a href="/" class="fancy-url">Made by Justas</a>
      </p>
    </bottom>

    ]])

  a(gtag_script())

  a([[
  </body>
</html>
]])
end) end
