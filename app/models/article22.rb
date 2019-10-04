class Article22
    include ActiveModel::Model
    attr_accessor :id, :title, :text, :comments

    def initialize(attributes={})
        super
        @title = attributes[:title]
        @text = attributes[:text]
        @comments = attributes[:comments]

        validate
    end

    def persisted?
        @id && @id > 0
    end

    def update(attributes={})
        @title = attributes[:title]
        @text = attributes[:text]
        @comments = attributes[:comments]

        validate
        return true
    end

    def create_comment(attributes={ commenter: "", body: "" })
        attributes[:article] = self
        comment = Comment22.new(attributes)
        @comments << comment
        return comment
    end

    private

    def validate
        raise 'invalid' unless @title
        raise 'invalid' unless @text
    end
end
