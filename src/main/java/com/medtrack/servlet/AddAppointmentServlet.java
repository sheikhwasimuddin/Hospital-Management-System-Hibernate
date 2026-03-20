package com.medtrack.servlet;

import com.medtrack.dao.AppointmentDAO;
import com.medtrack.dao.DoctorDAO;
import com.medtrack.dao.PatientDAO;
import com.medtrack.entity.Appointment;
import com.medtrack.entity.Doctor;
import com.medtrack.entity.Patient;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/addAppointment")
public class AddAppointmentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int patientId = Integer.parseInt(request.getParameter("patientId"));
        int doctorId = Integer.parseInt(request.getParameter("doctorId"));
        String appointmentDate = request.getParameter("appointmentDate");

        Patient patient = new PatientDAO().getPatientById(patientId);
        Doctor doctor = new DoctorDAO().getDoctorById(doctorId);

        if (patient != null && doctor != null) {
            Appointment appointment = new Appointment(patient, doctor, appointmentDate);
            new AppointmentDAO().saveAppointment(appointment);
        }

        response.sendRedirect("view-appointments");
    }
}