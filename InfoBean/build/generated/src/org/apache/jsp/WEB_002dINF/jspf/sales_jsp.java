package org.apache.jsp.WEB_002dINF.jspf;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.text.*;

public final class sales_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/WEB-INF/jspf/header.jspf");
  }

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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 
    DateFormat df = DateFormat.getDateInstance(DateFormat.LONG);
    String sd = df.format(new Date());

      out.write("\n");
      out.write("<h4");
      out.print(sd);
      out.write("</h4>\n");
      out.write('\n');
      com.infobean.UserData userData = null;
      synchronized (session) {
        userData = (com.infobean.UserData) _jspx_page_context.getAttribute("userData", PageContext.SESSION_SCOPE);
        if (userData == null){
          userData = new com.infobean.UserData();
          _jspx_page_context.setAttribute("userData", userData, PageContext.SESSION_SCOPE);
        }
      }
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("userData"), request);
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h2> Selamat Datang , ");
      out.print(userData.getNamaUser());
      out.write(" </h2>\n");
      out.write("        ID Anda = ");
      out.write(org.apache.jasper.runtime.JspRuntimeLibrary.toString((((com.infobean.UserData)_jspx_page_context.findAttribute("userData")).getIdUser())));
      out.write(" <br>\n");
      out.write("        USIA Anda = ");
      out.write(org.apache.jasper.runtime.JspRuntimeLibrary.toString((((com.infobean.UserData)_jspx_page_context.findAttribute("userData")).getUmur())));
      out.write(" <br>\n");
      out.write("        \n");
      out.write("        <p> </p>\n");
      out.write("        <a href=\"index.jsp\">Kembali</a>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("    </body>\n");
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
