class Meme < ApplicationRecord

  has_many :upvotes
  has_many :downvotes

end
