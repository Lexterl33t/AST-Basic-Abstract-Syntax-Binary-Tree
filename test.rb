class Test
        attr_accessor :api, :lol
        def set_api(api)
                self.api = api
                return self
        end

        def set_lol(lol)
                self.lol = lol
                return self
        end

        def get_api()
                return self.api
        end

        def get_lol()
                return self.lol
        end
end

tesdd = Test.new

puts tesdd.set_api("lol")
        .set_lol("ok")
        .get_api()