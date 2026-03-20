package com.medtrack.servlet;

import com.medtrack.dao.DoctorDAO;
import com.medtrack.entity.Doctor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/addDoctor")
public class AddDoctorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String specialization = request.getParameter("specialization");

        Doctor doctor = new Doctor(name, specialization);
        new DoctorDAO().saveDoctor(doctor);

        response.sendRedirect("view-doctors");
    }
}