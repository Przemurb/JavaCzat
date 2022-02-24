package com.example.chat.data;

public class MessageResultTransfer {
    private Message message;

    public void setMessage(Message message) {
        if (message != null) {
            this.message = message;
        } else {
            throw new IllegalArgumentException("Message cant by null");
        }
    }

    public Message getMessage() {
        return message;
    }

    public MessageResultTransfer(Message message) {
        this.message = message;
    }
}
