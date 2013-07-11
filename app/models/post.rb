# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#

class Post < ActiveRecord::Base
  attr_accessible :author_id, :body, :title

  belongs_to :author
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: {minimum: 3}
  validates :body, presence: true
end
