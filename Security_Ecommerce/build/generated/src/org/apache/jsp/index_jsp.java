package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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


   
  if(session.getAttribute("username")!=null){  
       try {
                request.getRequestDispatcher("/community.jsp").forward(request, response);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
   }

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"mycss.css\">\n");
      out.write("        <title>Medical Messaging System</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"signupcontent\">\n");
      out.write("\n");
      out.write("<br/>\n");
      out.write("<br/>\n");
      out.write("<br/>\n");
      out.write("<br/>\n");
      out.write("<center>\n");
      out.write("    <h2>Welcome to Medical Messaging System</h2>\n");
      out.write("    <br/>\n");
      out.write("    <br/>\n");
      out.write("    \n");
      out.write("        Sign In:\n");
      out.write("            <form name=\"User Login\" action=\"ValidateUser\" class=\"center\" method=\"POST\">\n");
      out.write("            <br/>\n");
      out.write("            <br/>\n");
      out.write("            <input type=\"text\" name=\"name\" placeholder=\"Email\"/>\n");
      out.write("            <br/>\n");
      out.write("            <br/>\n");
      out.write("            <input type=\"password\" name=\"pass\" placeholder=\"Password\"/>\n");
      out.write("            <br/>\n");
      out.write("            <br/>\n");
      out.write("            <input type=\"submit\" id=\"signupButton\" value=\"Sign In\" />\n");
      out.write("            </form>\n");
      out.write("        <br/>\n");
      out.write("        <br/>\n");
      out.write("        <br/>\n");
      out.write("        <a href=\"signup.jsp\">Don't have an account? Sign up <u>here</u>.</a>\n");
      out.write("        <br/>\n");
      out.write("        <br/>\n");
      out.write("</center>\n");
      out.write("</div>\n");
      out.write("<br/>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
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
