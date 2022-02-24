<%@ page import="com.example.chat.data.MessageResultTransfer" %>
<%@ page import="com.example.chat.data.Message" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="pl">
<head>
    <title>Chat</title>
    <link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
<header>
    <h1>Witaj na JavaCzacie!</h1>
    <h3>Dołącz do konwersacji</h3>
</header>
<main>
    <section class="chat">
        <p>
            <c:if test="${fn:length(applicationScope.messages) == 0}">
                Nie ma jeszcze żadnej wiadomości. Rozpocznij czat...
            </c:if>

            <c:forEach items="${applicationScope.messages}" var="messageTransfer">
            <ul>
                <li>
                    <c:out value="${messageTransfer.message.nick}: ${messageTransfer.message.content}"></c:out>
                </li>
            </ul>
            </c:forEach>
        </p>

    </section>
    <section>
        <form action="" method="post">
            <div>
                <label for="text"></label>
                <textarea id="text" name="content" placeholder="Twoja wiadomość" required></textarea>
            </div>
            <div>
                <label for="nick"></label>
                <input class="nick" id="nick" name="nick" placeholder="Podpisz się" required>
            </div>
            <button>Wyślij</button>
        </form>
    </section>
</main>
</body>
</html>