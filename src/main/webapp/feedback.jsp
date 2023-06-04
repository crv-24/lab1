<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Обратная связь</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="index.jsp">Boooks</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="services.jsp">Услуги</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="about.jsp">О нас</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contact.jsp">Контакты</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="feedback.jsp">Обратная связь</a>
      </li>
    </ul>
  </div>
</nav>

<div class="container">
  <h1>Обратная связь</h1>
  <p>Пожалуйста, заполните форму ниже, чтобы отправить нам свой отзыв.</p>

  <form action="MyServlet/submit-feedback" method="post">
    <div class="form-group">
      <label for="name">Имя:</label>
      <input type="text" class="form-control" id="name" name="name" required>
    </div>

    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" name="email" required>
    </div>

    <div class="form-group">
      <label for="feedback">Ваш отзыв:</label>
      <textarea class="form-control" id="feedback" name="feedback" rows="5" required></textarea>
    </div>

    <button type="submit" class="btn btn-primary">Оставить отзыв</button>
  </form>
</div>

<script src="js/bootstrap.min.js"></script>
</body>
</html>