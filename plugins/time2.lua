function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local url = " http://magic-team.ir/clock.php?text=MagicTeam&t="..jdat.ENtime
local file = download_to_file(url,'time.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
end
 
return {
  patterns = {
    "^[!/#][Tt][Ii][Mm][Ee]"
  }, 
  run = run 
}
