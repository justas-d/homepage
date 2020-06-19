require "template_paper_puzzle"

local page_filename = "two-slitherlinks-2.html"
local puzzle_img = "two-slitherlink2.png"

return {
  [page_filename] = generate_paper_puzzle(
    "Two Slitherlinks 2",
    "A little dual slitherlink puzzle.", 
    puzzle_img, 
    "2020-06-12",
    page_filename,
    concat([[
      <p>Here's a little puzzle.</p>

      <p>
        <a class="fancy-url" href="https://en.wikipedia.org/wiki/Slitherlink">Slitherlink</a> rules apply.
        There is a green and purple loop. They cannot touch. Green numbers apply to the green loop, purple numbers to
        the purple loop. There is one solution.
      </p>

      <p>
        <a class="fancy-url" href="https://twitter.com/Justas_Dabrila/status/1265417924933750784">
          Comments
        </a>
      </p>


      <a href="]],puzzle_img,[[">
        <img class="main-fit" src="]],puzzle_img,[[" alt="puzzle"></img>
      </a>

      <p>Addendum: The following is not a valid move:</p>

      <a href="invalid.png">
        <img class="main-fit" src="invalid.png" alt="puzzle"></img>
      </a>
  ]])
  )
}
