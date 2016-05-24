do

function run(msg, matches)
   send_document(get_receiver(msg), "./data/help.html", ok_cb, false)
end

return {
patterns = {
"^![help]$",

},
run = run
}

end
