class SportsTeam

  attr_accessor :team_name, :team_players, :team_coach

  def initialize(input_team_name, input_team_players, input_team_coach)
    @team_name = input_team_name
    @team_players = input_team_players
    @team_coach = input_team_coach
    @team_points = 0
  end

  def new_player(new_player_name)
    return @team_players.push(new_player_name)
  end

  def is_player_in_team(player_name)
    @team_players.include?(player_name)
  end

  def add_point_for_win(result_of_game)
    if result_of_game == "win"
      @team_points += 1
    end
    return @team_points
  end



end
