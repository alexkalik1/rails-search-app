class Label < ApplicationRecord
  def self.search(term)
    where("name like ?", "%#{term}%")
  end
end
