<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book Appointment</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="form-container">
    <h2>Book Appointment</h2>
    <form action="addAppointment" method="post">
        <input type="number" name="patientId" placeholder="Patient ID" required>
        <input type="number" name="doctorId" placeholder="Doctor ID" required>
        <input type="date" name="appointmentDate" required>
        <button type="submit">Book Appointment</button>
    </form>
    <a href="index.jsp">Back to Home</a>
</div>
</body>
</html>