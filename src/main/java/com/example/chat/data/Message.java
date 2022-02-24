package com.example.chat.data;

public class Message {
    private String nick;
    private String content;

    public Message(String nick, String content) {
        if (nick == null || nick.equals("")) {
            throw new IllegalArgumentException("Nick cant by empty");
        } else if (content == null || !content.equals("")) {
            throw new IllegalArgumentException("Message cant by empty");
        } else {
            this.nick = nick;
            this.content = content;
        }
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
