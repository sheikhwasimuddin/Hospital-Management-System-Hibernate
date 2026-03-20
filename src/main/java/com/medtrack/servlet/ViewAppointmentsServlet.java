package com.medtrack.servlet;

import com.medtrack.dao.AppointmentDAO;
import com.medtrack.entity.Appointment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/view-appointments")
public class ViewAppointmentsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Appointment> appointments = new AppointmentDAO().getAllAppointments();
        request.setAttribute("appointments", appointments);
        request.getRequestDispatcher("view-appointments.jsp").forward(request, response);
    }
}