class Article < ApplicationRecord
  belongs_to :cinema

  validates_presence_of :title, :content, :published_at

  # Définition du format de publication automatiquement
  before_validation :set_default_published_at, on: :create

  private

  # Définition de la date de publication par défaut à la création de l'article
  def set_default_published_at
    self.published_at ||= Time.zone.now
  end
end
