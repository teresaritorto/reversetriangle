
class ReverseTriangle
    attr_reader :size

    def initialize(size)
        @size = sanitizeInput(size)
    end

    #validate size to be of type integer and greater than 0 without mutation
    def sanitizeInput(size)
        validSize = Integer(size) rescue nil
         if validSize.nil?
             raise ArgumentError.new("Size must be an integer ")
         end
         raise ArgumentError.new("Size must be greater than zero") if validSize <= 0

         validSize
    end
end  

#get a size from user
puts ('Enter an integer value....')
rt = ReverseTriangle.new(gets)

#given a size, print a reverse triangle
for i in (0..rt.size-1).reverse_each
    for x in 0..i
        print '*'
    end

    puts
end
