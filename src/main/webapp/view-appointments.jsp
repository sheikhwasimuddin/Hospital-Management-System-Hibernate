<%@ page import="java.util.List" %>
<%@ page import="com.medtrack.entity.Appointment" %>
<%
    List<Appointment> appointments = (List<Appointment>) request.getAttribute("appointments");
%>
<!DOCTYPE html>
<html>
<head>
    <title>View Appointments</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="table-container">
    <h2>Appointments List</h2>
    <table>
        <tr>
            <th>ID</th><th>Patient</th><th>Doctor</th><th>Date</th>
        </tr>
        <%
            if (appointments != null) {
                for (Appointment a : appointments) {
        %>
        <tr>
            <td><%= a.getAppointmentId() %></td>
            <td><%= a.getPatient().getName() %></td>
            <td><%= a.getDoctor().getName() %></td>
            <td><%= a.getAppointmentDate() %></td>
        </tr>
        <%
                }
            }
        %>
    </table>
    <a href="index.jsp">Back to Home</a>
</div>
</body>
</html>