# Commit 1 - Psuedocode

# input: 
# output: 

# Steps
# 1 - 
# 2 -
# 3 - 

# Commit 2 - Non-Destructive Solution

def acrostic_decoder(coded_message)
  # write code here  
end

# Commit 3 - Destructive Solution

def acrostic_decoder!(coded_message)
  # write code here  
end

# Runner Code

message = "Does one, yodel on under resentment, when offsprings refuse kamp?"
# puts "message's object id: #{message.object_id}"

decoded_message = acrostic_decoder(message)
# puts "decoded_message's object id: #{decoded_message.object_id}"

p message
p decoded_message
# p decoded_message.object_id == message.object_id

# Change the Runner Code to check that the object id does not change if you use the destructive version of your method
