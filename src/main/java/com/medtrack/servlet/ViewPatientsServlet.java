package com.medtrack.servlet;

import com.medtrack.dao.PatientDAO;
import com.medtrack.entity.Patient;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/view-patients")
public class ViewPatientsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Patient> patients = new PatientDAO().getAllPatients();
        request.setAttribute("patients", patients);
        request.getRequestDispatcher("view-patients.jsp").forward(request, response);
    }
}