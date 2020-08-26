
-- Requires LuaFileSystem (luarocks)

require("lfs")
require("common")

local output_path = "../output"

SITE_PATH = nil
IS_RELEASE = false

for _, v in pairs(arg) do
  if v == "--release" then
    IS_RELEASE = true
  end
end

if IS_RELEASE then
  SITE_PATH = "https://justas-d.github.io/"
else
  SITE_PATH = "http://localhost:5000/"
end

os.execute("rm -rf " .. output_path .. "/*")
os.execute("mkdir -p " .. output_path)

for entry in lfs.dir("assets") do

  if entry == "." or 
     entry == ".."
  then 
     goto continue 
  end
    
  os.execute("cp -r assets/"..entry.." "..output_path)

  ::continue::
end

local function output_file(name, buf)
  local fd = assert(io.open(output_path .. "/" .. name, "w"))
  fd:write(buf)
  fd:close()
end

local function process_script(name)
  local files = dofile(name)
  for filename, contents in pairs(files) do
    output_file(filename, contents)
  end
end

process_script("index.lua")
process_script("coffee.lua")
process_script("p-two-slitherlinks-1.lua")
process_script("p-two-slitherlinks-2.lua")
process_script("nimblefox.lua")

local function generate_redirection(path, redirect_to)
  local split_path = string_split(path, "/")
  local only_dirs = string_concat(array_slice(split_path, 1, #split_path - 1), "/")

  local content = concat([[
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="refresh" content="0; url=]],redirect_to,[[" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    ]],title(),[[
  </head>

  <body>
    <a href="]],redirect_to,[[">If you are not being redirected, click here.</a>
  </body>
</html>
  ]])

  os.execute("mkdir -p " .. output_path .. "/" .. only_dirs)
  output_file(path, content)
end

generate_redirection("puzzles/two-slitherlink.html", SITE_PATH .. "two-slitherlinks-1")
--generate_redirection("puzzles/two-slitherlink", SITE_PATH .. "two-slitherlinks-1")
generate_redirection("puzzles/two-slitherlink/index.html", SITE_PATH .. "two-slitherlinks-1")

generate_redirection("puzzles/two-slitherlink2.html", SITE_PATH .. "two-slitherlinks-2")
--generate_redirection("puzzles/two-slitherlink2", SITE_PATH .. "two-slitherlinks-2")
generate_redirection("puzzles/two-slitherlink2/index.html", SITE_PATH .. "two-slitherlinks-2")
