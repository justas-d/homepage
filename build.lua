
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
  SITE_PATH = "https://ssstormy.github.io/"
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
