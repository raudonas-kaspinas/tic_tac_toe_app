import consumer from "./consumer";

consumer.subscriptions.create("GameChannel", {
  connected() {
  },

  disconnected() {
  },

  received(data) {
    // Отобразить ход на игровом поле
  }
});

