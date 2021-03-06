class Tweet < ApplicationRecord

  validates :body, presence: true 

# Broadcasting
  after_create_commit { broadcast_prepend_to "tweets"}   
  after_update_commit { broadcast_replace_to "tweets"}   
  after_destroy_commit { broadcast_remove_to "tweets"}                                                        
                                                          
end




# Note:
# The broadcast part will broadcast to the tweets channel we are creating here
# This will be broadcasted to all users. By using preppend it will show up at the very top
# We could also use the append all depends how we want to show it up. 
