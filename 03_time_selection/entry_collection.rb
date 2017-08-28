require "active_support"
# This adds #beginning_of_week method; enabled in Rails by default
require "active_support/core_ext"

class EntryCollection < Array
  def from_this_week
    time_scope = (Time.now.beginning_of_week..Time.now)
    select { |entry| time_scope.cover?(entry[:created_at]) }
  end
end
