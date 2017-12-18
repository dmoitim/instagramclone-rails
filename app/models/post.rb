class Post < ApplicationRecord
  belongs_to :user

  has_attached_file :photo

  # Validate content type
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  # Validate filename
  validates_attachment_file_name :photo, :matches => [/png\Z/, /jpe?g\Z/]
  # Explicitly do not validate
  do_not_validate_attachment_file_type :photo

  has_attached_file :photo, style: { medium: "300x300>", thumb: "100x100>" }
end
