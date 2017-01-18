/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;
import ws.Lichsugd;
import ws.TransferWebService_Service;

/**
 *
 * @author khanh
 */
public class SearchTimeServlet extends HttpServlet {

    private TransferWebService_Service wsa = new TransferWebService_Service();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException, DatatypeConfigurationException {
        response.setContentType("text/html;charset=UTF-8");
        DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
        String nguoigui = request.getParameter("nguoigui");
        String pwd = request.getParameter("matkhau");
        String startTime = request.getParameter("startTime");
        String endTime = request.getParameter("endTime");
        Date dateStart = null;
        Date dateEnd = null;
        if (!"".equals(startTime) || !"".equals(endTime)) {
            if (startTime.compareTo(endTime) < 0) {
                dateStart = formatter.parse(startTime);
                dateEnd = formatter.parse(endTime);
            } else {
                request.setAttribute("err6", "ngay bat dau phai nho hon ngay ket thuc");
                RequestDispatcher rd = request.getRequestDispatcher("searchtime.jsp");
                rd.forward(request, response);
            }
        } else {
            request.setAttribute("err3", "Ban phai nhap vao ngay bat dau va ket thuc");
            RequestDispatcher rd = request.getRequestDispatcher("searchtime.jsp");
            rd.forward(request, response);
        }
        GregorianCalendar c = new GregorianCalendar();
        c.setTime(dateStart);
        XMLGregorianCalendar date1 = DatatypeFactory.newInstance().newXMLGregorianCalendar(c);

        c = new GregorianCalendar();
        c.setTime(dateEnd);
        XMLGregorianCalendar date2 = DatatypeFactory.newInstance().newXMLGregorianCalendar(c);

        List<Lichsugd> list = wsa.getTransferWebServicePort().lichsu(date1, date2, nguoigui, pwd);
        if (!"".equals(nguoigui) && !"".equals(pwd)) {
            if (!"".equals(nguoigui)) {
                if (!"".equals(pwd)) {
                    HttpSession httpSession = request.getSession(true);
                    httpSession.setAttribute("username", nguoigui);
                    request.setAttribute("date", list);
                    RequestDispatcher rd = request.getRequestDispatcher("listbytime.jsp");
                    rd.forward(request, response);
                } else {
                    request.setAttribute("err2", "Ban phai nhap password");
                    RequestDispatcher rd = request.getRequestDispatcher("searchtime.jsp");
                    rd.forward(request, response);
                }
            } else {
                request.setAttribute("err1", "Ban phai nhap vao nguoi gui");
                RequestDispatcher rd = request.getRequestDispatcher("searchtime.jsp");
                rd.forward(request, response);
            }
        } else {
            request.setAttribute("err5", "Ban phai nhap day du thong tin");
            RequestDispatcher rd = request.getRequestDispatcher("searchtime.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            try {
                processRequest(request, response);
            } catch (DatatypeConfigurationException ex) {
                Logger.getLogger(SearchTimeServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ParseException ex) {
            Logger.getLogger(SearchTimeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
