do

local function run(msg, matches)
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'مساعدة' then
local S = [[  مرحبااا...🌝🖐🏾

لعرض اوامر المجموعة 🌀✅

ارسل الامر التالي 🌞👇

الاوامر ◀️ لعرض اوامر المجموعة ✔️

الاصدار ◀️ لمعرفة اصدار البوت ✔️

المطور ◀️ لطلب بوت حماية ✔️

تابع قناة بوت #DEVLAITH ✔️

https://telegram.me/joinchat/CUf-ST-UwlYXKMQWuHjVYw ✅
]]
reply_msg(reply_id, S, ok_cb, false)
end

if not is_momod(msg) then
local S = "للمشرفين والادمنية فقط 💠🏌"
reply_msg(reply_id, S, ok_cb, false)
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(مساعدة)$",
},
run = run 
}
end