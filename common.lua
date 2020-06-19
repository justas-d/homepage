function list(...) return {...} end

function concat(...)
  local buf = ""

  for _, v in pairs(list(...)) do
    buf = buf .. v
  end

  return buf
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
