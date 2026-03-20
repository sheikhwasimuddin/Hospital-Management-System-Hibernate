<%@ page import="java.util.List" %>
<%@ page import="com.medtrack.entity.Doctor" %>
<%
    List<Doctor> doctors = (List<Doctor>) request.getAttribute("doctors");
%>
<!DOCTYPE html>
<html>
<head>
    <title>View Doctors</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="table-container">
    <h2>Doctors List</h2>
    <table>
        <tr>
            <th>ID</th><th>Name</th><th>Specialization</th>
        </tr>
        <%
            if (doctors != null) {
                for (Doctor d : doctors) {
        %>
        <tr>
            <td><%= d.getDoctorId() %></td>
            <td><%= d.getName() %></td>
            <td><%= d.getSpecialization() %></td>
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