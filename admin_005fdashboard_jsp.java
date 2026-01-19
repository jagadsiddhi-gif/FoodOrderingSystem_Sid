package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import dao.DBConnection;

public final class admin_005fdashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');

  String admin = (String) session.getAttribute("admin");
  if (admin == null) { response.sendRedirect("admin_login.jsp"); return; }

      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <title>Admin Dashboard</title>\n");
      out.write("  <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"container py-4\">\n");
      out.write("  <h3>Admin Dashboard</h3>\n");
      out.write("  <a class=\"btn btn-danger mb-3\" href=\"logout\">Logout</a>\n");
      out.write("\n");
      out.write("  <h5>All Orders</h5>\n");
      out.write("  ");

    try (Connection con = DBConnection.getConnection();
         PreparedStatement ps = con.prepareStatement("SELECT o.*, u.name FROM orders o JOIN users u ON o.user_id = u.user_id ORDER BY o.order_date DESC");
         ResultSet rs = ps.executeQuery()) {
        while (rs.next()) {
  
      out.write("\n");
      out.write("    <div class=\"card p-2 mb-2\">\n");
      out.write("      <p>Order ID: ");
      out.print( rs.getInt("order_id") );
      out.write(" | User: ");
      out.print( rs.getString("name") );
      out.write(" | Total: ₹ ");
      out.print( rs.getDouble("total_price") );
      out.write(" | Status: ");
      out.print( rs.getString("status") );
      out.write("</p>\n");
      out.write("    </div>\n");
      out.write("  ");

        }
    } catch (Exception e) { e.printStackTrace(); }
  
      out.write("\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
