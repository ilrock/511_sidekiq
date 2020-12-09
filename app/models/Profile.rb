class Profile < ApplicationRecord
  after_update :use_clearbit

  def use_clearbit
    UpdateUserJob.perform_later(@profile.user)
  end

  def get_rating
    self.reviews.sum(:rating) / self.reviews.count
  end
end
