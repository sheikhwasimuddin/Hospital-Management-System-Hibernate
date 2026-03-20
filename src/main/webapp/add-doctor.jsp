<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Doctor</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="form-container">
    <h2>Add Doctor</h2>
    <form action="addDoctor" method="post">
        <input type="text" name="name" placeholder="Doctor Name" required>
        <input type="text" name="specialization" placeholder="Specialization" required>
        <button type="submit">Save Doctor</button>
    </form>
    <a href="index.jsp">Back to Home</a>
</div>
</body>
</html>