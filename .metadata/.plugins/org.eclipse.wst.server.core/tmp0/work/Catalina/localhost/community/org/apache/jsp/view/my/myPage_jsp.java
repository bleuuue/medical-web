/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.96
 * Generated at: 2019-12-08 18:37:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.view.my;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import model.writeBean;
import model.replyBean;
import model.medicineBean;

public final class myPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

	
	int w;
	public int post() {
		int w=1;
		return w;
	}
		

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
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>my Page</title>\r\n");
      out.write("<style>\r\n");
      out.write(".mytable{\r\n");
      out.write("\tmargin-top : 70px;\r\n");
      out.write("\tborder-collapse: collapse;\r\n");
      out.write("\tbordr : 0;\r\n");
      out.write("}\r\n");
      out.write(".myname{\r\n");
      out.write("\tfont-size : 30px;\r\n");
      out.write("\tcolor : rgb(68, 114, 196);\r\n");
      out.write("\tpadding-left : 30px;\r\n");
      out.write("\tfont-weight : bold;\r\n");
      out.write("}\r\n");
      out.write(".myid{\r\n");
      out.write("\tfont-size : 25px;\r\n");
      out.write("\tcolor : rgb(68, 114, 196);\r\n");
      out.write("\tposition : relative;\r\n");
      out.write("\ttop : 139px;\r\n");
      out.write("\tright : 30px;\r\n");
      out.write("}\r\n");
      out.write(".myinfo{\r\n");
      out.write("\tfont-size : 18px;\r\n");
      out.write("\tcolor : rgb(127,127,127);\r\n");
      out.write("\tpadding-left : 30px;\r\n");
      out.write("\tpadding-top : 20px;\r\n");
      out.write("}\r\n");
      out.write(".tab {\r\n");
      out.write("\twidth : 400px;\r\n");
      out.write("\ttext-align : center;\r\n");
      out.write("\tfont-size : 20px;\r\n");
      out.write("\tpadding-top : 13px;\r\n");
      out.write("\tpadding-bottom : 13px;\r\n");
      out.write("}\r\n");
      out.write(".lineT {\r\n");
      out.write("\tborder-top : 1px solid rgb(68, 114, 196);\r\n");
      out.write("}\r\n");
      out.write(".lineB{\r\n");
      out.write("\tborder-bottom : 1px solid rgb(68, 114, 196);\r\n");
      out.write("}\r\n");
      out.write(".lineL{\r\n");
      out.write("\tborder-left : 1px solid rgb(68, 114, 196);\r\n");
      out.write("}\r\n");
      out.write(".lineR{\r\n");
      out.write("\tborder-right : 1px solid rgb(68, 114, 196);\r\n");
      out.write("}\r\n");
      out.write(".linet {\r\n");
      out.write("\tborder-top : 1px solid rgb(217,217,217);\r\n");
      out.write("}\r\n");
      out.write(".lineb{\r\n");
      out.write("\tborder-bottom : 1px solid rgb(217,217,217);;\r\n");
      out.write("}\r\n");
      out.write(".linel{\r\n");
      out.write("\tborder-left : 1px solid rgb(217,217,217);\r\n");
      out.write("}\r\n");
      out.write(".liner{\r\n");
      out.write("\tborder-right : 1px solid rgb(217,217,217);\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../common/header.jsp", out, false);
      out.write('\r');
      out.write('\n');
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
      model.replyDao reDao = null;
      synchronized (application) {
        reDao = (model.replyDao) _jspx_page_context.getAttribute("reDao", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        if (reDao == null){
          reDao = new model.replyDao();
          _jspx_page_context.setAttribute("reDao", reDao, javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        }
      }
      out.write('\r');
      out.write('\n');
      model.medicineDao medDao = null;
      synchronized (application) {
        medDao = (model.medicineDao) _jspx_page_context.getAttribute("medDao", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        if (medDao == null){
          medDao = new model.medicineDao();
          _jspx_page_context.setAttribute("medDao", medDao, javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        }
      }
      out.write('\r');
      out.write('\n');

	ArrayList<writeBean> wr = wrDao.getWrite();
	ArrayList<replyBean> re = reDao.getReply();
	ArrayList<medicineBean> med = medDao.getMed();
	String id = (String)application.getAttribute("id");

      out.write("\r\n");
      out.write("<center>\r\n");
      out.write("<table width=\"1200px\" class=\"mytable\">\r\n");
      out.write("\t<tr height=\"100px\" class=\"lineT\">\r\n");
      out.write("\t\t<td class=\"myname lineL lineR\" colspan=\"3\">");
      out.print((String)application.getAttribute("name"));
      out.write("</td>\r\n");
      out.write("\t\t<div class=\"myid\">( ");
      out.print((String)application.getAttribute("id"));
      out.write(" )</div>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"myinfo lineL lineR\" colspan=\"3\"> ?????? ??? ??? : 1??? </td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"myinfo lineL lineR\" colspan=\"3\"> ?????? ?????? ??? </td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"myinfo lineL lineR\" colspan=\"3\"> ?????? ?????? ??? </td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr height=\"70px\">\r\n");
      out.write("\t\t<td colspan=\"3\" class=\"lineL lineR\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"tab lineL lineT lineB lineR\" onclick=\"");
post();
      out.write("\"> ???</td>\r\n");
      out.write("\t\t<td class=\"tab lineT lineB lineR\" onclick=\"comment()\">??????</td>\r\n");
      out.write("\t\t<td class=\"tab lineR lineT lineB\" onclick=\"order()\">??????</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr height=\"350px\">\r\n");
      out.write("\t\t<td colspan=\"3\" class=\"lineL lineB lineR\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");

if(w==1) {
	for(int i=0; i<wr.size(); i++)
	{
		writeBean wrBean = wr.get(i);
		if((wrBean.getWriter()).equals(id)){

      out.write("\r\n");
      out.write("\t\t\t<table width=\"900\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td class=\"linet linel\" width=\"750\" rowspan=\"2\">");
      out.print(wrBean.getTitle());
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t<td class=\"linet liner\">????????? ");
      out.print(wrBean.getLook());
      out.write("</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td class=\"liner\">????????? ");
      out.print(wrBean.getrNum());
      out.write("</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td class=\"linel liner\" height=\"100px\" colspan=\"2\">");
      out.print(wrBean.getContent());
      out.write("</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td class=\"linel lineb linercolspan=\"2\">");
      out.print(wrBean.getDate());
      out.write("??????</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");

			}
		}
}

      out.write("\r\n");
      out.write("</script>\r\n");
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
