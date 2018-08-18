class Post < ApplicationRecord

  has_one_attached :image
  after_save :process_variants

  def thumbnail
    self.image.variant(resize: "350x230").processed
  end

  def full_display
    self.image.variant(resize: "350x230").processed
  end
  
  def facebook_share
    self.image.variant(resize: "1200x628").processed
  end
  
  def twitter_share
    self.image.variant(resize: "440x220").processed
  end

  private

  def process_variants
    CreatePostVariantsJob.perform_later(self.id)
  end

end
