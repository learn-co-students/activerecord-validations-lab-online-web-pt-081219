class Post < ActiveRecord::Base
  #1. All posts have a title
#1. Post content is at least 250 characters long
#1. Post summary is a maximum of 250 characters
#1. Post category is either `Fiction` or `Non-Fiction`
#  This step requires an `inclusion` validator, which was not outlined in the
#  README lesson. You'll need to refer to the [Rails guide][ar_validations] to
#  look up how to use it.

  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  include ActiveModel::Validations
  validates_with TitleValidator
end
