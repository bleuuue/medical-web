/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.96
 * Generated at: 2020-05-31 13:00:59 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.view.treat;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.writeBean;
import java.util.ArrayList;

public final class writeList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>sickList</title>\r\n");
      out.write("<style>\r\n");
      out.write(".list {\r\n");
      out.write("\tborder-collapse: collapse;\r\n");
      out.write("\tbordr : 0;\r\n");
      out.write("\tborder-bottom : 1px solid rgb(200,200,200);\r\n");
      out.write("}\r\n");
      out.write(".listT {\r\n");
      out.write("\tfont-size : 17px;\r\n");
      out.write("\tbackground-color : rgb(242,242,242);\r\n");
      out.write("\tcolor : rgb(89,89,89);\r\n");
      out.write("\tborder : 0;\r\n");
      out.write("\tborder-top : 1px solid rgb(200,200,200);\r\n");
      out.write("\tborder-bottom : 1px solid rgb(200,200,200);\r\n");
      out.write("}\r\n");
      out.write(".submit{\r\n");
      out.write("\tposition : relative;\r\n");
      out.write("\ttop : 250px;\r\n");
      out.write("\tleft : 1110px;\r\n");
      out.write("\tbackground-color : white;\r\n");
      out.write("\twidth : 110px;\r\n");
      out.write("\theight : 40px;\r\n");
      out.write("\tbox-shadow:none;\r\n");
      out.write("\tborder : 1px solid rgb(68, 114, 196);\r\n");
      out.write("\tcolor : rgb(68, 114, 196);\r\n");
      out.write("\tfont-size : 16px;\r\n");
      out.write("}\r\n");
      out.write(".car{\r\n");
      out.write("\tposition : relative;\r\n");
      out.write("\ttop : 218px;\r\n");
      out.write("\tright : 270px;\r\n");
      out.write("\theight : 33px;\r\n");
      out.write("\twidth : 100px;\r\n");
      out.write("}\r\n");
      out.write(".search {\r\n");
      out.write("\tbackground-color : white;\r\n");
      out.write("\tborder : 1px solid rgb(68, 114, 196);\r\n");
      out.write("\tbox-shadow:none;\r\n");
      out.write("\tcolor : rgb(68, 114, 196);\r\n");
      out.write("\theight : 30px;\r\n");
      out.write("\twidth : 60px;\r\n");
      out.write("\tmargin-left : 15px;\r\n");
      out.write("}\r\n");
      out.write(".inp {\r\n");
      out.write("\theight : 27px;\r\n");
      out.write("\twidth : 120px;\r\n");
      out.write("}\r\n");
      out.write(".s {\r\n");
      out.write("\tposition : relative;\r\n");
      out.write("\ttop : 185px;\r\n");
      out.write("\tright : 545px;\r\n");
      out.write("\twidth : 250px;\r\n");
      out.write("}\r\n");
      out.write(".lineB{\r\n");
      out.write("\tborder-bottom : 1px solid rgb(242,242,242);\r\n");
      out.write("}\r\n");
      out.write("a:visited { color: black; text-decoration: none;}\r\n");
      out.write("a:link { color: black; text-decoration: none;}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../common/header.jsp", out, false);
      out.write("\r\n");
      out.write("<center>\r\n");
      out.write("<input type=\"button\" class=\"submit\" value=\"????????????\"\r\n");
      out.write("onclick=\"location.href='write.jsp'\">\r\n");
      out.write("\r\n");
      out.write("<form action=\"searchProc.jsp\" method=\"post\">\r\n");
      out.write("\t<select class=\"car\" name=\"sick\">\r\n");
      out.write("\t\t<option selected> ???????????? </option>\r\n");
      out.write("  \t\t<option> ?????? </option>\r\n");
      out.write("  \t\t<option> ?????? </option>\r\n");
      out.write("  \t\t<option> ?????? </option>\r\n");
      out.write("  \t\t<option> ?????? </option>\r\n");
      out.write(" \t</select>\r\n");
      out.write("\r\n");
      out.write(" <div class=\"s\">\r\n");
      out.write(" \t<input class=\"inp\" type=\"text\" name=\"search\" value=\"??????\" onfocus=\"this.value=''\">\r\n");
      out.write("\t<input class=\"search\" type=\"submit\" name=\"sbutton\" value=\"??????\">\r\n");
      out.write(" </div>\r\n");
      out.write(" </form>\r\n");
      out.write(" \r\n");
      out.write("<table class=\"list\" width=\"1500\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td height=\"200px\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr class=\"listT\" height = \"43px\" align=\"center\">\r\n");
      out.write("\t<td width=\"20px\">\r\n");
      out.write("\t\t<a href=\"sort.jsp?sort=wnum\"> No </a></td>\r\n");
      out.write("\t<td width=\"170px\">\r\n");
      out.write("\t\t<a href=\"sort.jsp?sort=title\"> ?????? </a></td>\r\n");
      out.write("\t<td width=\"70px\">\r\n");
      out.write("\t\t<a href=\"sort.jsp?sort=writer\"> ????????? </a></td>\r\n");
      out.write("\t<td width=\"40px\"> ????????? </td>\r\n");
      out.write("\t<td width=\"40px\"> ????????? </td>\r\n");
      out.write("\t<td width=\"50px\"> ????????? </td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\r\n");
      model.writeDao wrDao = null;
      synchronized (application) {
        wrDao = (model.writeDao) _jspx_page_context.getAttribute("wrDao", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        if (wrDao == null){
          wrDao = new model.writeDao();
          _jspx_page_context.setAttribute("wrDao", wrDao, javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        }
      }
      out.write('\r');
      out.write('\n');


	ArrayList<writeBean> wr = wrDao.getWrite();
	String o = (String)application.getAttribute("rNum");
	for(int i=0; i<wr.size(); i++)
	{
		writeBean wrBean = wr.get(i);
	
      out.write("\r\n");
      out.write("\t<tr height=\"50px\" align=\"center\">\r\n");
      out.write(" \t\t<td class=\"lineB\" width=\"20px\"> ");
      out.print( wrBean.getNum() );
      out.write(" </td>\r\n");
      out.write(" \t\t<td class=\"lineB\" width=\"170px\">\r\n");
      out.write(" \t\t\t<a href=\"writeInfo.jsp?num=");
      out.print(wrBean.getNum());
      out.write("\">\r\n");
      out.write(" \t\t\t");
      out.print( wrBean.getTitle() );
      out.write("</a> </td>\r\n");
      out.write(" \t\t<td class=\"lineB\" width=\"70px\"> ");
      out.print( wrBean.getWriter());
      out.write(" </td>\r\n");
      out.write(" \t\t<td class=\"lineB\" width=\"40px\"> ");
      out.print(wrBean.getLook() );
      out.write(" </td>\r\n");
      out.write(" \t\t<td class=\"lineB\" width=\"40px\"> ");
      out.print(wrBean.getrNum());
      out.write(" </td>\r\n");
      out.write(" \t\t<td class=\"lineB\" width=\"5px\"> ");
      out.print(wrBean.getDate() );
      out.write(" </td>\r\n");
      out.write(" \t</tr>\r\n");
      out.write(" ");
		
	}
 
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</center>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
