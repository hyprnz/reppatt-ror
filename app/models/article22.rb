class Article22
    include ActiveModel::Model
    attr_accessor :id, :title, :text

    def initialize(attributes={})
        super
        @title = title
        @text = text

        validate
    end

    private

    def validate
        raise 'invalid' unless @title
        raise 'invalid' unless @text
    end
end
