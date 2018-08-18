class CreatePostVariantsJob < ApplicationJob
  queue_as :default

  def perform(post_id)
    post = Post.find(post_id)

    Rails.logger.info('################ Generate thumbnail')
    post.thumbnail

    Rails.logger.info('################ Generate full_display')
    post.full_display

    Rails.logger.info('################ Generate facebook_share')
    post.facebook_share

    Rails.logger.info('################ Generate twitter_share')
    post.twitter_share
  end
end
