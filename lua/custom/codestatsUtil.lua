local util = {}

util.xp_delta = function()
  local previousXp = nil
  local proviousDelta = 0
  local function update()
    local xp = require('codestats').get_xp(0)
    if previousXp == nil then
      previousXp = xp
      return 0
    end
    local delta = xp - previousXp
    if delta == 0 then
      return proviousDelta
    end
    if delta == proviousDelta then
      -- when delta doesn’t change combine with previous delta to have the delta update something
      delta = delta * 2
    end
    previousXp = xp
    proviousDelta = delta
    return delta
  end
  return update
end

return util
