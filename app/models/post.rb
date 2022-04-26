class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w[Fiction Non-Fiction] }
  # validate :title_not_true_facts
  # validate :click_bates

  # Custom Validations
  # def title_not_true_facts
  #   if title == 'True Facts'
  #     errors.add(:title, "Cannot have title of \"True Facts\"")
  #   end
  # end

  # def click_bates
  #   unless title =~ /Won't Believe|Secret|Top [0-9]+|Guess/
  #     errors.add(:title, 'Use more buzzwords in your title, bro')
  #   end
  # end
end
