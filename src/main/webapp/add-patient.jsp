<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Patient</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="form-container">
    <h2>Add Patient</h2>
    <form action="addPatient" method="post">
        <input type="text" name="name" placeholder="Patient Name" required>
        <input type="number" name="age" placeholder="Age" required>
        <input type="text" name="gender" placeholder="Gender" required>
        <input type="text" name="disease" placeholder="Disease" required>
        <button type="submit">Save Patient</button>
    </form>
    <a href="index.jsp">Back to Home</a>
</div>
</body>
</html>