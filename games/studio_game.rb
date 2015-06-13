require_relative 'game'
require_relative 'player'

player1 = Player.new('anthony')
player2 = Player.new('rebekah', 60)
player3 = Player.new('sean', 125)
player4 = Player.new('alvin')
player5 = Player.new('simon')
player6 = Player.new('theodore')

knuckleheads = Game.new('Knuckleheads')
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play(3)

chipmunks = Game.new('Chipmunks')
chipmunks.add_player(player1)
chipmunks.add_player(player2)
chipmunks.add_player(player3)
chipmunks.add_player(player4)
chipmunks.add_player(player5)
chipmunks.add_player(player6)
chipmunks.play(3)
