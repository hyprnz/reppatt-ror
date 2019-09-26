class Article22
    include ActiveModel::Model
    attr_accessor :id, :title, :text

    def initialize(attributes={})
        super
        @title = attributes[:title]
        @text = attributes[:text]

        validate
    end

    def persisted?
        @id && @id > 0
    end

    def update(attributes={})
        @title = attributes[:title]
        @text = attributes[:text]

        validate
        return true
    end

    private

    def validate
        raise 'invalid' unless @title
        raise 'invalid' unless @text
    end
end
