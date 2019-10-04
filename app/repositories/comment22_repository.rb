require_relative '../models/comment22'

class Comment22Repository
    def find(id)
        serialized = Comment22Record.find(id)
        deserialize(serialized)
    end

    def destroy(id)
        comment = Comment22Record.find(id)
        comment.destroy
    end

    def save(comment)
        raise 'invalid' unless comment.is_a? Comment22
        serialized = serialize(comment)
        serialized.save
    end

    private

    def deserialize(serialized)
        Comment22Deserializer.new(serialized).deserialize()
    end

    def serialize(deserialized)
        serialized = Comment22Serializer.new(deserialized).serialize()
        serialized.article22 = Article22Serializer.new(deserialized.article).serialize()
        return serialized
    end
end
