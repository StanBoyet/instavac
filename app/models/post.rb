class Post < ApplicationRecord

  has_one_attached :image


  def thumbnail
    self.image.variant(resize: "350x230").processed
  end

  def full_display
    self.image.variant(resize: "350x230").processed
  end

end
