##Worked on it with Aja.

require 'pry'
require 'sinatra'
require 'rb-readline'
require 'pry-coolline'
require 'json'

#
file = File.read('roster.json')
data_hash = JSON.parse(file)

class Team
  attr_reader :team_name, :roster

  def initialize(team_name, roster)
    @team_name = team_name
    @roster = roster
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

get '/teams' do

  team_new =  []
  data_hash.each_key do |key|
    team_new << key
  end

   teams = [
    Team.new(team_new[0],data_hash[team_new[0]]),
    Team.new(team_new[1],data_hash[team_new[1]]),
    Team.new(team_new[2],data_hash[team_new[2]]),
    Team.new(team_new[3],data_hash[team_new[3]])
   ]

  erb :index, locals: { teams: teams }

end

get '/teams/:team_new' do
  "hello"
  # team_new =  []
  # data_hash.each_key do |key|
  #   team_new << key
  # end
  #
  #  teams = [
  #   Team.new(team_new[0],data_hash[team_new[0]]),
  #   Team.new(team_new[1],data_hash[team_new[1]]),
  #   Team.new(team_new[2],data_hash[team_new[2]]),
  #   Team.new(team_new[3],data_hash[team_new[3]])
  #  ]
  #
  #
  #  teams.roster
  #  binding.pry
  #
  # erb :teams, locals: { teams: params[:team_new] }
end





set :public_folder, File.join(File.dirname(__FILE__), "public")
