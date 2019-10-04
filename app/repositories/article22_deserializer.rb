class Article22Deserializer
    def initialize(article)
        raise 'invalid' unless article.is_a? Article22Record
        @article = article
    end

    def deserialize 
        deserialized = Article22.new(
            id: @article.id,
            title: @article.title,
            text: @article.text
        )

        deserialized.comments = comments
        deserialized.comments.map do |comment|
            comment.article = deserialized
        end
        return deserialized
    end

    private

    def comments
        @article.comments.map do |comment|
            deserialized = Comment22Deserializer.new(comment).deserialize()
        end
    end
end
