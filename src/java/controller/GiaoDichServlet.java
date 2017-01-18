/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ws.TransferWebService_Service;

/**
 *
 * @author khanh
 */
public class GiaoDichServlet extends HttpServlet {

    private TransferWebService_Service ws = new TransferWebService_Service();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String maKH_gui = request.getParameter("maKH_gui");
        String maKH_nhan = request.getParameter("maKH_nhan");
        String pwd = request.getParameter("pwd");
        String st = request.getParameter("sotien");
        Double sotien = 0D;
        if (st != null && !"".equals(st)) {
            sotien = Double.parseDouble(st);
        } else {
            request.setAttribute("err4", "Ban chua nhap so tien");
            RequestDispatcher rd = request.getRequestDispatcher("giaodich.jsp");
            rd.forward(request, response);
        }
        String choice = request.getParameter("choice");
        if (ws.getTransferWebServicePort().giaodich(maKH_gui, maKH_nhan, pwd, sotien, choice) && st != null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("giaodich.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("err", "Ban chua nhap thong tin");
            RequestDispatcher rd = request.getRequestDispatcher("giaodich.jsp");
            rd.forward(request, response);
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
