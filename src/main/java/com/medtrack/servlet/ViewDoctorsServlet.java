package com.medtrack.servlet;

import com.medtrack.dao.DoctorDAO;
import com.medtrack.entity.Doctor;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/view-doctors")
public class ViewDoctorsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Doctor> doctors = new DoctorDAO().getAllDoctors();
        request.setAttribute("doctors", doctors);
        request.getRequestDispatcher("view-doctors.jsp").forward(request, response);
    }
}