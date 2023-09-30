class GameChannel < ApplicationCable::Channel
  def subscribed
    stream_from "game_channel"
  end

  def unsubscribed
    # cleanup
  end

 
  def make_move(data)
    # Предполагается, что data["move"] это строка вида "x2y2" для клетки во второй строке и второй колонне
    # data["type"] это тип фигуры: "X" или "O"
    ActionCable.server.broadcast("game_channel", move: data["move"], type: data["type"])
  end
end

