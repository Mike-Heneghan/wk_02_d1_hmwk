# Part B
# Now we would like you to make a class that represents a sports team.

# Make a class to represent a Team that has the properties Team name (String), Players (Array of strings) and a Coach (String).
# For each property in the class make a Getter method than can return them.
# Create a setter method to allow the coach's name to be updated.
# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
# Create a method that adds a new player to the player's array.
# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.

require('minitest/autorun')
require_relative('../sports_team.rb')

class TestSportsTeam < Minitest::Test

  def setup
    @team_name = "All Blacks"
    @team_players = ["Ngani Laumape","Rieko Ioane", "Ryan Crotty", "Seta Tamanivalu", "Sonny Bill Williams", "Tawera Kerr-Barlow", "TJ Perenara", "Waisake Naholo"]
    @team_coach = "Steve Hansen"
    @points = 0

  end

  def test_sports_team_getters
    team = SportsTeam.new(@team_name, @team_players, @team_coach)
    assert_equal(@team_name, team.team_name())
    assert_equal(@team_players, team.team_players())
    assert_equal(@team_coach, team.team_coach())
  end

  def test_sports_team_setters
    team = SportsTeam.new(@team_name, @team_players, @team_coach)

    team.team_name = "All Snacks"
    team.team_players = ["Seth McFace","Rugby McRugby", "Ryan Crotty", "Seta Tamanivalu", "Sonny Bill Williams", "Tawera Kerr-Barlow", "TJ Perenara", "Waisake Naholo"]
    team.team_coach = "Mike Heneghan"

    players = ["Seth McFace","Rugby McRugby", "Ryan Crotty", "Seta Tamanivalu", "Sonny Bill Williams", "Tawera Kerr-Barlow", "TJ Perenara", "Waisake Naholo"]

    assert_equal("All Snacks", team.team_name())
    assert_equal(players, team.team_players())
    assert_equal("Mike Heneghan", team.team_coach())
  end

  def test_new_player
    team = SportsTeam.new(@team_name, @team_players, @team_coach)
    team.new_player("Boaty McBoatface")
    assert_equal(9, @team_players.length)
  end

  def test_is_player_in_team__true
    team = SportsTeam.new(@team_name, @team_players, @team_coach)
    result = team.is_player_in_team("Ryan Crotty")
    assert_equal(true, result)
  end

  def test_is_player_in_team__false
    team = SportsTeam.new(@team_name, @team_players, @team_coach)
    result = team.is_player_in_team("Simon Atkins")
    assert_equal(false, result)
  end

  def test_add_point_for_win__win
    team = SportsTeam.new(@team_name, @team_players, @team_coach)
    result = team.add_point_for_win("win")
    assert_equal(1, result)
  end

  def test_add_point_for_win__loss
    team = SportsTeam.new(@team_name, @team_players, @team_coach)
    result = team.add_point_for_win("loss")
    assert_equal(0, result)
  end

  def test_add_point_for_win__many_wins
    team = SportsTeam.new(@team_name, @team_players, @team_coach)
    result = team.add_point_for_win("win")
    result = team.add_point_for_win("win")
    result = team.add_point_for_win("win")
    assert_equal(3, result)
  end

end
