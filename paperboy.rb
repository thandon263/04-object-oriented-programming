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


      if @number_of_houses.odd?
         @number_of_houses.round
      end




    end

    def report
       "I\'m #{@name}, I\'ve delivered #{@number_of_houses} papers and i\'ve earned #{@earnings} so far!"
    end

end

ted = Paperboy.new('Ted', 25, 10, "even", 0 )
ted.deliver(100, 220)
p ted.report
