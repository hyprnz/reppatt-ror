class Comment22Deserializer
    def initialize(comment)
        raise 'invalid' unless comment.is_a? Comment22Record
        @comment = comment
    end

    def deserialize
        Comment22.new(
            id: @comment.id,
            commenter: @comment.commenter,
            body: @comment.body
        )
    end
end
