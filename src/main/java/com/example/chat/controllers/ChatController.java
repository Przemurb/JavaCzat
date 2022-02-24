package com.example.chat.controllers;

import com.example.chat.data.Message;
import com.example.chat.data.MessageResultTransfer;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import javax.annotation.processing.Messager;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ChatController", value = "")
public class ChatController extends HttpServlet {
    @Override
    public void init() {
        getServletContext().setAttribute("messages", new ArrayList<MessageResultTransfer>());
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String content = request.getParameter("content");
        String nick = request.getParameter("nick");
        MessageResultTransfer messageTransfer = new MessageResultTransfer(new Message(nick, content));
        List<MessageResultTransfer> messages = (List<MessageResultTransfer>) getServletContext().getAttribute("messages");
        messages.add(messageTransfer);

        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
