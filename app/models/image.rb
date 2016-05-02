class Image < ActiveRecord::Base
  # Add paperclip for S3
  has_attached_file :attachment, styles: {
                      thumb: '100x100>',
                      square: '200x200#',
                      medium: '300x300>'
                    }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :attachment, :content_type => /\Aimage\/.*\Z/
end
