require 'pry'
require 'sinatra'
require 'rb-readline'
require 'pry-coolline'
require 'json'

#
file = File.read('roster.json')
data_hash = JSON.parse(file)


<% binding.pry%>
cd
class Team
  attr_reader :team_name, :team_name

  def initialize(team_name, roster)
    @roster = roster
    @team_name = team_name
  end

  def roster
    roster_string = ""
    @roster.each do |key, value|
      roster_string << "POSITION: #{key} -- PLAYER: #{value}\n"
    end
    roster_string
  end

  def each_team_summary
    "#{team_name}"
  end

end

team_new =  []
data_hash.each_key do |key|
  team_new << key
end

count = 0
team_array = []
while count
  team_array << Team.new(team_new[0],data_hash[team_new[0]])
  count += 1
  binding.pry
end


puts team_array

# <% teams.each do |team| %>
#   <li> <%= team.roster %> </li>
# <% end %>
