<%@ page import="java.util.List" %>
<%@ page import="com.medtrack.entity.Patient" %>
<%
    List<Patient> patients = (List<Patient>) request.getAttribute("patients");
%>
<!DOCTYPE html>
<html>
<head>
    <title>View Patients</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="table-container">
    <h2>Patients List</h2>
    <table>
        <tr>
            <th>ID</th><th>Name</th><th>Age</th><th>Gender</th><th>Disease</th>
        </tr>
        <%
            if (patients != null) {
                for (Patient p : patients) {
        %>
        <tr>
            <td><%= p.getPatientId() %></td>
            <td><%= p.getName() %></td>
            <td><%= p.getAge() %></td>
            <td><%= p.getGender() %></td>
            <td><%= p.getDisease() %></td>
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