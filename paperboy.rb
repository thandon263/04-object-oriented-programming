class Paperboy


    attr_reader :name, :quota, :expirience, :side, :earnings

    def initialize(name, quota, expirience, side, earnings)
        @name = name
        @quota = quota
        @expirience = expirience
        @side = side
        @earnings = earnings
    end

    def quota
      quota = 50 + (expirience * 0.5)
    end

    def deliver(start_address, end_address)

      @number_of_houses = (end_address - start_address)/2

      @earnings = @number_of_houses * 0.25

      @expirience = 0
      @expirience += @number_of_houses


      if @number_of_houses.odd?
         @number_of_houses.round
      end




    end

    def report
       "I\'m #{@name}, I\'ve delivered #{@number_of_houses} papers and i\'ve earned #{@earnings} so far!"
    end

end


ted = Paperboy.new('Ted', 25, 10, "even", 0 )
ted.deliver(110, 250)
p ted.report

ryan = Paperboy.new('Ryan', 12, 6, 'odd', 0)
ryan.deliver(131, 237)
p ryan.report
