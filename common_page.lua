function make_styles(color)
  local highlight_style = concat([[
    color: ]],color.txt,[[;
    background-color: ]],color.main_desat,[[;
    border-radius: 3px;

    padding: 0px 4px 0px;
    border-radius: 2px;

    display: inline-block;
    text-shadow: 0px 1px 5px rgba(0, 0, 0, 0.15);
  ]])

  return {
    hightlight = concat([[
      .highlight {
        ]],highlight_style,[[
      }
    ]]),
    fancy_url = concat([[

      .fancy-url {
        ]],highlight_style,[[

        text-decoration: none;
      }

      .fancy-url:hover {
        animation: fancy-url-fade-in linear 0.1s forwards;
      }

      .fancy-url img {
        width: 16px;
        height: 16px;
        vertical-align: sub;
      }

      @keyframes fancy-url-fade-in {
        0% {}
        100% {
          background-color: ]],color.main_desat_secondary,[[;
        }
      }
    ]]),

    headers = concat([[
      h1 {
        font-size: 3em;
      }

      h2 {
        font-size: 2em;
      }

      h1,h2,h3,h4,h5,h6 {
        font-family: Helvetica, sans-serif;
      }
    ]]),

    cards = concat([[
      .card h1 {
        font-size: 1em;
        padding: 0;
        margin: 0;
        font-weight: bold;
        line-height: 1.1;
        text-shadow: 0px 2px 6px rgba(0, 0, 0, 0.75)
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
        box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.25);
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


    ]]),

    breaks = concat([[
      break {
        display: block;
        width: 100%;
        height: 2px;

        margin: 32px 0px;
        background-color: gray;
      }
    ]]),

    newline = [[
      newline {
        display: block;
      }
    ]],
  }
end

function font_work_sans()
  return [[
  <link href="https://fonts.googleapis.com/css2?family=Work+Sans&display=swap" rel="stylesheet"> 
  ]]

end

function title(str, has_name)
  if has_name == nil then has_name = true end

  local name = "Justas Dabrila"
  if not has_name then
    name = ""
  end
  return concat("<title>", str, name, "</title>")
end

function generate_meta(title, desc, img, page_filename)

  local full_url = SITE_PATH .. page_filename

  return writer(function(a)
    a([[
      <meta name="description" content="]],desc,[[" />

      <meta name="twitter:site" content="@Justas_Dabrila">
      <meta name="twitter:title" content="]],title,[[">
      <meta name="twitter:description" content="]],desc,[[">
      <meta name="twitter:creator" content="@Justas_Dabrila">

      <meta property="og:title" content="Two-Slitherlink" />
      <meta property="og:type" content="article" />
      <meta property="og:url" content="]],full_url,[[" />
      <meta property="og:description" content="]],desc,[[" />
      <meta property="og:site_name" content="]],SITE_NAME,[[" />
    ]])

    if img then
      local full_img = SITE_PATH .. img
      a([[
      <meta name="twitter:card" content="summary_large_image">
      <meta name="twitter:image:src" content="]],full_img,[[">
      <meta property="og:image" content="]],full_img,[[" />
      ]])
    else
      a([[
      <meta name="twitter:card" content="summary">
      ]])
    end
  end)

end
