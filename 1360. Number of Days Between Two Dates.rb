# @param {String} date1
# @param {String} date2
# @return {Integer}
require "date"
def days_between_dates(date1, date2)
    date1 = Date.parse(date1)
    date2 = Date.parse(date2)
    return (date2-date1).to_i.abs
end