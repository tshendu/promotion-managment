class Rank < ApplicationRecord

  belongs_to :qualification
  validates :level, presence:true
  validates :rank_title, presence: true, uniqueness:true
  validates :salary, presence:true, length: {maximum:7},numericality: true

  #this method will get rank having qualification.
  private
  def self.get_rank
    delegate :q_name, to: :qualification
    Rank.joins(:qualification)
  end

end
