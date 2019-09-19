class Article22Record < ApplicationRecord
    self.table_name = "article22s"
    validates :title, presence: true, length: { minimum: 5 }
end
