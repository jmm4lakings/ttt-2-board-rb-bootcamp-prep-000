class TicTacToe:
    """ Tic-Tac Toe Board 
        
        Board is represented through a board object
        
        1 ¦ 2 ¦ 3
        --+---+--
        4 ¦ 5 ¦ 6
        --+---+--
        7 ¦ 8 ¦ 9
    """
    def __init__(self):
        self.spaces = 9
        self.blank = " "
        self.legal_players = ["X","O"]
        self.base =      " {} ¦ {} ¦ {} \n" + \
                          "---+---+--- \n" + \
                         " {} ¦ {} ¦ {} \n" + \
                          "---+---+--- \n" + \
                         " {} ¦ {} ¦ {} \n" 
        self.winning = [[0,1,2], # top horizontal
                        [3,4,5], # middle horizontal
                        [6,7,8], # bottom horizontal
                        [0,3,6], # left vertical
                        [1,4,7], # middle vertical
                        [2,5,8], # right vertical
                        [0,4,8], # diagonal \
                        [2,4,6]  # diagonal /
                       ]
        self.reset()