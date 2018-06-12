class Downvote < ApplicationRecord

  belongs_to :meme, counter_cache: true

end
