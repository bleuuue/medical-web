/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.96
 * Generated at: 2020-05-31 12:05:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.view.treat;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.replyBean;
import java.util.ArrayList;
import model.writeBean;

public final class writeProc_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<style>\r\n");
      out.write("body {\r\n");
      out.write("\tmargin:0;\r\n");
      out.write("}\r\n");
      out.write(".info {\r\n");
      out.write("\tmargin-top : 150px;\r\n");
      out.write("\tborder-collapse: collapse;\r\n");
      out.write("\tborder : none;\r\n");
      out.write("}\r\n");
      out.write(".lineT {\r\n");
      out.write("\tborder-top : 1px solid rgb(217,217,217);\r\n");
      out.write("}\r\n");
      out.write(".lineB{\r\n");
      out.write("\tborder-bottom : 1px solid rgb(217,217,217);\r\n");
      out.write("}\r\n");
      out.write(".lineL{\r\n");
      out.write("\tborder-left : 1px solid rgb(217,217,217);\r\n");
      out.write("}\r\n");
      out.write(".lineR{\r\n");
      out.write("\tborder-right : 1px solid rgb(217,217,217);\r\n");
      out.write("}\r\n");
      out.write(".q {\r\n");
      out.write("\tfont-size:35px;\r\n");
      out.write("\tcolor : rgb(68, 114, 196);\r\n");
      out.write("\ttext-align : center;\r\n");
      out.write("\tmargin:0;\r\n");
      out.write("\tpadding:0;\r\n");
      out.write("}\r\n");
      out.write(".cTitle {\r\n");
      out.write("\tfont-size:23px;\r\n");
      out.write("\tfont-weight:bold;\r\n");
      out.write("}\r\n");
      out.write(".content {\r\n");
      out.write("\tpadding-left : 30px;\r\n");
      out.write("\tfont-size : 20px;\r\n");
      out.write("}\r\n");
      out.write(".date {\r\n");
      out.write("\tpadding-left : 30px;\r\n");
      out.write("\tfont-size : 16px;\r\n");
      out.write("\tcolor : rgb(166, 166, 166);\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write(".writer {\r\n");
      out.write("\tfont-size : 16px;\r\n");
      out.write("\tcolor : rgb(166, 166, 166);\r\n");
      out.write("\t}\r\n");
      out.write(".modify {\r\n");
      out.write("\tdisplay:inline-block;\r\n");
      out.write("\twidth : 100px;\r\n");
      out.write("\theight : 20px;\r\n");
      out.write("\tposition : relative;\r\n");
      out.write("\tbottom : 70px;\r\n");
      out.write("\tleft : 477px;\r\n");
      out.write("}\r\n");
      out.write(".input1{\r\n");
      out.write("\tbackground-color : white;\r\n");
      out.write("\twidth : 100px;\r\n");
      out.write("\theight : 40px;\r\n");
      out.write("\tbox-shadow:none;\r\n");
      out.write("\tborder : 1px solid rgb(68, 114, 196);\r\n");
      out.write("\tcolor : rgb(68, 114, 196);\r\n");
      out.write("\tfont-size : 17px;\r\n");
      out.write("}\r\n");
      out.write(".reply {\r\n");
      out.write("\twidth : 230px;\r\n");
      out.write("\theight : 20px;\r\n");
      out.write("\tposition : relative;\r\n");
      out.write("\tbottom : 60px;\r\n");
      out.write("\tleft : 570px;\r\n");
      out.write("}\r\n");
      out.write(".back {\r\n");
      out.write("\tbackground-color : rgb(242,242,242);\r\n");
      out.write("\tpadding : 30px;\r\n");
      out.write("}\r\n");
      out.write(".pad {\r\n");
      out.write("\tpadding-left : 10px;\r\n");
      out.write("}\r\n");
      out.write(".res {\r\n");
      out.write("\tcolor : rgb(127, 127, 127);\r\n");
      out.write("\tfont-size : 18px;\r\n");
      out.write("\tpadding-top : 20px;\r\n");
      out.write("\tpadding-bottom : 20px;\r\n");
      out.write("\tborder-left : none;\r\n");
      out.write("}\r\n");
      out.write(".tback {\r\n");
      out.write("\tborder : none;\r\n");
      out.write("\tbackground-color : white;\r\n");
      out.write("}\r\n");
      out.write(".aback {\r\n");
      out.write("\tbackground-color : rgb(242,242,242);\r\n");
      out.write("\tborder : none;\r\n");
      out.write("}\r\n");
      out.write(".q {\r\n");
      out.write("\tfont-size:35px;\r\n");
      out.write("\tcolor : rgb(68, 114, 196);\r\n");
      out.write("\ttext-align : center;\r\n");
      out.write("\tmargin:0;\r\n");
      out.write("\tpadding:0;\r\n");
      out.write("}\r\n");
      out.write(".cTitle {\r\n");
      out.write("\tfont-size:23px;\r\n");
      out.write("\tfont-weight:bold;\r\n");
      out.write("}\r\n");
      out.write(".Rcontent {\r\n");
      out.write("\tpadding-left : 30px;\r\n");
      out.write("\tfont-size : 20px;\r\n");
      out.write("\theight : 200px;\r\n");
      out.write("}\r\n");
      out.write(".da {\r\n");
      out.write("\tcolor : rgb(127,127,127);\r\n");
      out.write("\tpadding-left : 20px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

request.setCharacterEncoding("utf-8");

      out.write("\r\n");
      out.write("\r\n");
      model.writeBean wrBean = null;
      wrBean = (model.writeBean) _jspx_page_context.getAttribute("wrBean", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (wrBean == null){
        wrBean = new model.writeBean();
        _jspx_page_context.setAttribute("wrBean", wrBean, javax.servlet.jsp.PageContext.PAGE_SCOPE);
        out.write('\r');
        out.write('\n');
        out.write('	');
        org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("wrBean"), request);
        out.write('\r');
        out.write('\n');
      }
      out.write("\r\n");
      out.write("\r\n");
      model.writeDao wrDao = null;
      synchronized (application) {
        wrDao = (model.writeDao) _jspx_page_context.getAttribute("wrDao", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        if (wrDao == null){
          wrDao = new model.writeDao();
          _jspx_page_context.setAttribute("wrDao", wrDao, javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("\r\n");

	wrDao.insertWrite(wrBean);

      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../common/header.jsp", out, false);
      out.write('\r');
      out.write('\n');
      model.replyDao reDao = null;
      synchronized (application) {
        reDao = (model.replyDao) _jspx_page_context.getAttribute("reDao", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        if (reDao == null){
          reDao = new model.replyDao();
          _jspx_page_context.setAttribute("reDao", reDao, javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("\r\n");
      out.write("<center>\r\n");
      out.write("<table class=\"info\" width=\"1300px\">\r\n");
      out.write("\t<tr class=\"lineT\" height=\"80px\">\r\n");
      out.write("\t\t<td class=\"q lineL\" width=\"8px\"> Q </td>\r\n");
      out.write("\t\t<td class=\"cTitle\" width=\"290px\"> ");
      out.print(wrBean.getTitle());
      out.write(" </td>\r\n");
      out.write(" \t\t<td class=\"writer\" width=\"20px\"> 작성자 : </td>\r\n");
      out.write(" \t\t<td class=\"lineR writer\" width=\"30px\"> ");
      out.print(wrBean.getWriter() );
      out.write(" </td>\r\n");
      out.write(" \t</tr>\r\n");
      out.write(" \t<tr height=\"340px\">\r\n");
      out.write(" \t\t<td class=\"content lineL lineR\" colspan=\"4\" width=\"500px\"> ");
      out.print(wrBean.getContent() );
      out.write(" </td>\r\n");
      out.write(" \t</tr>\r\n");
      out.write(" \t<tr height=\"90px\">\r\n");
      out.write(" \t\t<td class=\"date lineL lineR lineB\" colspan=\"4\" width=\"700px\">\r\n");
      out.write(" \t\t");
      out.print(wrBean.getDate());
      out.write("&nbsp&nbsp\r\n");
      out.write(" \t\t조회수  0\r\n");
      out.write(" \t\t</td>\r\n");
      out.write(" \t</tr>\r\n");
      out.write(" </table>\r\n");
      out.write(" \r\n");
      out.write("\t \t<div class=\"modify\">\r\n");
      out.write("\t \t<input class=\"input1\" type=\"button\" value=\"수정\"\r\n");
      out.write("\t \t\t\tonclick=\"location.href='writeModify.jsp?num=");
      out.print(wrBean.getNum());
      out.write("'\">\r\n");
      out.write("\t \t</div>\r\n");
      out.write("\t \t<div class=\"modify\">\r\n");
      out.write("\t \t<input class=\"input1\" type=\"button\" value=\"삭제\"\r\n");
      out.write("\t \t\t\tonclick=\"location.href='writeDelete.jsp?num=");
      out.print(wrBean.getNum() );
      out.write("'\">\r\n");
      out.write("\t \t</div>\r\n");
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