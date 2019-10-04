class Comment22Record < ApplicationRecord
    self.table_name = "comment22s"
    validates :commenter, presence: true, length: { minimum: 5}
    validates :body, presence: true, length: { minimum: 5 }
    belongs_to :article22, class_name: "Article22Record", autosave: false
end
