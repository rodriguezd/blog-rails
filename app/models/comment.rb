# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  submitter  :string(255)
#  body       :text
#  post_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  attr_accessible :body, :post_id, :submitter

  belongs_to :post
end
