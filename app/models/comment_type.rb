class CommentType < ActiveRecord::Base
  COMMENT_TYPES = ['Order', 'Shipment'].freeze
  has_many :comments

  validates :applies_to, :inclusion => {:in => COMMENT_TYPES}
end
