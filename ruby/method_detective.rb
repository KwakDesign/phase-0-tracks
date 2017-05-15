# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".sub("o", "oo")
"zom".gsub("o", "oo")
# => “zoom”

"enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(9, " suspects")
#=> "the usual suspects"

" suspects".insert(0, "the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
"The case of the disappearing last letter".chomp("r")
"The case of the disappearing last letter".slice(0..38)
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".sub("T", "")
"The mystery of the missing first letter".gsub("T", "")
"The mystery of the missing first letter".slice(1..38)
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".gsub(/\s+/, ' ')
# => "Elementary, my dear Watson!"

"z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)
# The significance of the number is based on ASCII code table which assigns an ordinal position to a character, so the letter 'z' has an ordinal position of 122. Take for example the letter capital 'A' is position 65 while the letter capital 'B' is 66 since it comes after the letter capital 'A' so it's viewed as it's successor. Following these ordinal positions letters that come after are 'higher' or are considered 'greater'. When we do a comparison of 'Z' > 'z' you will get a 'false' this is because the lowercase letter 'z' comes later and has a higher ordinal position integer.

"How many times does the letter 'a' appear in this string?".count("a")
# => 4