<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
            <p>Tu jeszcze nic nie ma. Zapoczątkuj konwersację....</p>
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