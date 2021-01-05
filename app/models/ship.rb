class Ship
    attr_accessor :name, :type, :booty

    @@all = []

    def initialize(params)
        @name = params[:name]
        @type = params[:type]
        @booty = params[:booty]
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
    
    def self.clear
        Ship.all.clear
    end

end