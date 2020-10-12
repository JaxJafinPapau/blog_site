class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  paginates_per 10

  field :title, type: String
  field :body, type: String
  field :author, type: String
  
  validates :title, presence: true, uniqueness:true
  validates :body, presence: true
  validates :author, presence: true
  
  belongs_to :user
end