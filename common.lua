function list(...) return {...} end

function concat(...)
  local buf = ""

  for _, v in pairs(list(...)) do
    buf = buf .. v
  end

  return buf
end

function append(arr, el)
  arr[#arr + 1] = el
end

function writer(fx)
  local buf = ""

  local function a(...) 
    buf = concat(buf, ...) 
  end

  fx(a)

  return buf
end

function dump(obj, indent)
  function str_mul(str, times)
    local ret = ""
    for i=1, times do
      ret = ret .. str
    end
    return ret
  end

  if indent == nil then 
    indent = 0 
  end

  if type(obj) == "table" then
    local buf = "{\n"

    indent = indent + 1;

    for k,v in pairs(obj) do
      buf = buf .. str_mul("  ", indent) .. dump(k, indent) .. " = "
      buf = buf .. dump(v, indent)
      buf = buf .. ",\n"
    end

    indent = indent - 1

    return buf .. str_mul("  ", indent) .. '}'
  elseif type(obj) == "string" then
    return '"'..obj..'"'
  else
    return tostring(obj)
  end
end

function string_split(str, split)

  local prev_index = 1
  local ret = {}

  while true do
    local next_index = string.find(str, split, prev_index, true)

    if next_index == nil then
      append(ret, string.sub(str, prev_index))
      return ret
    end

    append(ret, string.sub(str, prev_index, next_index - 1))

    prev_index = next_index + 1
  end

  return ret
end

function string_concat(str, separator)
  if not separator then separator = "" end
  local ret = ""

  for i = 1, #str do
    ret = ret .. str[i] .. separator
  end

  return ret
end

function array_slice(arr, from, to)
  local ret = {}

  for i = from, to - from + 1 do
    append(ret, arr[i])
  end

  return ret
end

function gtag_script()
  return [[
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-163702246-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-163702246-1');
</script>
  ]]
end

