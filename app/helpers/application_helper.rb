module ApplicationHelper

    def money(value)
        if value == nil 
            value = 0
        end

        m = "R$ #{thousands value.floor},#{('%.2f' % value.frac).to_s.split('.')[1]}"
        if value < 0
            data = "<span style='color:red'> #{m} </span>"
            data.html_safe
        else 
            return m 
        end
    end

    def thousands(value)
        s = value <0 ? '-' : ''
        value = value.to_s.sub('-', '')
        curr = value.length-3
        while curr > 0
            value.insert curr, '.'
            curr -= 3
        end
        return s + value
    end
end
