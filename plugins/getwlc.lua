local function run(msg, matches)

local data = load_data(_config.moderation.data)

local group_welcome = data[tostring(msg.to.id)]['group_welcome']

if matches[1]:lower() == 'channel_add_user' or 'channel_add_user_link' then
    if not msg.service then 
        return nil 
    else
        return group_welcome
end
end
end
return {
  patterns = {
  "^!!tgservice (channel_add_user)$",
  "^!!tgservice (channel_add_user_link)$",
  },
  run = run,
  pre_process = pre_process
}
