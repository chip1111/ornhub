class Meme < ApplicationRecord

  validates :img_url, presence: true

  has_many :upvotes
  has_many :downvotes

  def total_score
    self.upvotes_count - self.downvotes_count
  end

end
