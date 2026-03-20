package com.medtrack.servlet;

import com.medtrack.dao.PatientDAO;
import com.medtrack.entity.Patient;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/addPatient")
public class AddPatientServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        String disease = request.getParameter("disease");

        Patient patient = new Patient(name, age, gender, disease);
        new PatientDAO().savePatient(patient);

        response.sendRedirect("view-patients");
    }
}