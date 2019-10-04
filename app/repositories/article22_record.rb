class Article22Record < ApplicationRecord
    self.table_name = "article22s"
    has_many :comments, class_name: "Comment22Record", foreign_key: "article22_id"
    validates :title, presence: true, length: { minimum: 5 }
end
