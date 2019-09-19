class Article22Deserializer
    def initialize(article)
        raise 'invalid' unless article.is_a? Article22Record
        @article = article
    end

    def deserialize 
        Article22.new(
            id: @article.id,
            title: @article.title,
            text: @article.text
        )
    end
end
