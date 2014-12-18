class Story < ActiveRecord::Base
<<<<<<< HEAD
	belongs_to :user
	has_many :comments
=======
  belongs_to :user
  has_many :comments

>>>>>>> 53e812dcc84eab8ace208cc5df5c48eaed389de9

  validates :title, :link, :category, :upvotes, presence: true
  scope :popular, -> { where('upvotes >= ?', 4)}
  scope :recent, -> { where('created_at >= ?', Date.today)}

  def self.search_for(query)
    where('title LIKE :query OR category LIKE :query', query: "%#{query}%")
  end
end
