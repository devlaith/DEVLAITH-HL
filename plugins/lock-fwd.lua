
do

local function pre_process(msg)
    
    --Checking mute
    local hash = 'mate:'..msg.to.id
    if redis:get(hash) and msg.fwd_from then
            delete_msg(msg.id, ok_cb, true)
            return "done"
        end
    
        return msg
    end

  


local function run(msg, matches)
    chat_id =  msg.to.id
    
  if is_momod(msg) and matches[1] == 'قفل اعادة التوجيه' then
      
            
                    local hash = 'mate:'..msg.to.id
                    redis:set(hash, true)
                    return "تم قفل اعادة التوجية داخل المجموعة 🌞🔁❌"
  elseif is_momod(msg) and matches[1] == 'فتح اعادة التوجيه' then
      local hash = 'mate:'..msg.to.id
      redis:del(hash)
      return "تم فتح اعادة التوجية داخل المجموعة 🌞🔁✔️"
end

end

return {
    patterns = {
        '^(قفل اعادة التوجيه)$',
        '^(فتح اعادة التوجيه)$'
    },
    run = run,
    pre_process = pre_process
}
end
