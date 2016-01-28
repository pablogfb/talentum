class PlayArea
  @deck=[]
  @pool=[]
  @discard=[]
  def deckDraw
    if @deck.size >0
      card = @deck[rand(@deck.size)]
    @deck.delete card
    return card
    else
      @deck=@discard
      @discard=[]
      card = @deck[rand(@deck.size)]
    @deck.delete card
    return card
    end
  end
  
  def poolDraw number
    card = @pool[number-1]
    @pool.delete card
    @pool << deckDraw
    return card    
  end

end