do

function run(msg, matches)
  return [[
نرخ گروه های سایه
لیست قیمت ها:
🔸سوپر گپ 1ماه  3هزار تومان
🔸سوپر گپ سه ماهه 7 هزار تومان
🔹سوپر گپ دائمی 10 هزار تومان

💰پرداخت فقط با کارت به کارت💳

برای خرید
@King_Komeil (انهایی که ریپورت نیستند)
@King_Komeil_bot (انهایی که ریپورت هستند)
  ]]

  end
return {
  description = "shows sudoers", 
  usage = "!sudoers : return sudousers",
  patterns = {
    "^[Nn]erkh$",

  },
  run = run
}
end
