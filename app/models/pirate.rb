class Pirate
    attr_accessor :name, :weight, :height

    @@all = []

    def initialize(params)
        @name = params[:name]
        @weight = params[:weight]
        @height = params[:height]
        #attrs_from_hash(attrs)
        save
    end

    def attrs_from_hash(attrs)
        attrs.each do |k, v|
            send("#{k}=", v)
        end
   end

    def self.all
        @@all
    end

    def save
        @@all << self
    end
    
end