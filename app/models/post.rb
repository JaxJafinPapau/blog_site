class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :body, type: String
  field :author, type: String
  
  validates :title, presence: true
  validates :body, presence: true
  validates :author, presence: true
  
  belongs_to :user
end