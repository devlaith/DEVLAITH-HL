do

function run(msg, matches)
local reply_id = msg['id']
  local S = [[ مرحبااا....🌝🖐🏾

◀️ اسم السورس #DEVLAITH ✔️

◀️ موقع السورس https://github.com/devlaith/DEVLAITH ✔️

◀️ قناة الخاصة في السورس https://telegram.me/joinchat/CUf-ST-UwlYXKMQWuHjVYw ✔️

◀️ مبرمج السورس @II07II ✔️

⚜ #DEVLAITH 💠]]
reply_msg(reply_id, S, ok_cb, false)
end

return {
  patterns = {
"^(الاصدار)$",
  }, 
  run = run 
}

end