class Article22Serializer
    def initialize(article)
        raise 'invalid' unless (article.is_a?(Article22))
        @article = article
    end

    def serialize
        Article22Record.new(
            id: @article.id,
            title: @article.title,
            text: @article.text
        )
    end
end
