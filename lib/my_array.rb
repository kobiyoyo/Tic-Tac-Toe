class Array 
    def all_empty?
        self.all?{ |x| x.to_s.empty?}
    end
    def all_same?
        self.all?{|x| x == self[0]}
    end
    def any_empty?
        self.any?{ |x| x.to_s.empty?}
    end
    def none_empty?
        !any_empty?
    end
end