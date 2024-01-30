
local helper = {}

function helper.capture(cmd, raw)
  local f = assert(io.popen(cmd, 'r'))
  local s = assert(f:read('*a'))
  f:close()
  if raw then return s end
  s = string.gsub(s, '^%s+', '')
  s = string.gsub(s, '%s+$', '')
  s = string.gsub(s, '[\n\r]+', ' ')
  return s
end

local default_python = helper.capture('which python')
local username = helper.capture('whoami')
helper.python_path = default_python

if (username == 'tatoaoliang')
then
	helper.python_path = "/Users/tatoaoliang/miniconda3/bin/python"

elseif (username == 'atatlan')
then
	helper.python_path = "/home/atatlan/anaconda3/envs/moral3/bin/python"
else
	print("用户识别失败")
end

return helper
