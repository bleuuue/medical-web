/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.96
 * Generated at: 2019-12-10 08:54:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.view.medicine;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class deliverForm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>주문하기</title>\r\n");
      out.write("<style>\r\n");
      out.write(".pill{\r\n");
      out.write("\twidth:250px;\r\n");
      out.write("\theight : 180px;\r\n");
      out.write("}\r\n");
      out.write(".info {\r\n");
      out.write("\tmargin:0;\r\n");
      out.write("\tposition : relative;\r\n");
      out.write("\tbottom : 30px;\r\n");
      out.write("}\r\n");
      out.write(".iTitle {\r\n");
      out.write("\tpadding : 35px 0 10px 20px;\r\n");
      out.write("\tborder-bottom : 2px solid rgb(68, 114, 196);\r\n");
      out.write("\tfont-size : 20px;\r\n");
      out.write("\tcolor : rgb(127, 127, 127);\r\n");
      out.write("}\r\n");
      out.write(".content {\r\n");
      out.write("\tpadding : 30px 0 10px 155px;\r\n");
      out.write("\tfont-size : 17px;\r\n");
      out.write("\tcolor : rgb(64,64,64);\r\n");
      out.write("}\r\n");
      out.write(".product {\r\n");
      out.write("\tpadding-top : 50px;\r\n");
      out.write("\tfont-size : 20px;\r\n");
      out.write("\tfont-weight : bold;\r\n");
      out.write("}\r\n");
      out.write(".money {\r\n");
      out.write("\tpadding-bottom : 40px;\r\n");
      out.write("\tfont-size : 19px;\r\n");
      out.write("\tcolor : red;\r\n");
      out.write("}\r\n");
      out.write("input {\r\n");
      out.write("\tmargin-top : 20px;\r\n");
      out.write("\theight : 28px;\r\n");
      out.write("\tborder : 1px solid rgb(191,191,191);\r\n");
      out.write("}\r\n");
      out.write(".buy {\r\n");
      out.write("\tposition : relative;\r\n");
      out.write("\tbottom : 80px;\r\n");
      out.write("\tleft : 500px;\r\n");
      out.write("\twidth : 100px;\r\n");
      out.write("}\r\n");
      out.write(".input1{\r\n");
      out.write("\tbackground-color : white;\r\n");
      out.write("\twidth : 150px;\r\n");
      out.write("\theight : 40px;\r\n");
      out.write("\tbox-shadow:none;\r\n");
      out.write("\tborder : 1px solid rgb(68, 114, 196);\r\n");
      out.write("\tcolor :  rgb(68, 114, 196);\r\n");
      out.write("\tfont-size : 17px;\r\n");
      out.write("}\r\n");
      out.write(".b {\r\n");
      out.write("\tposition : relative;\r\n");
      out.write("\tbottom : 823px;\r\n");
      out.write("\tright : 190px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../common/header.jsp", out, false);
      out.write("\r\n");
      out.write("<form action=\"deliverProc.jsp\" method=\"post\">\r\n");
      out.write("<center>\r\n");

	request.setCharacterEncoding("utf-8");
	int price = Integer.parseInt(request.getParameter("price"));
	int pnum = Integer.parseInt(request.getParameter("pnum"));
	int sum = price*pnum;
	int total = sum+2500;

      out.write("\r\n");
      out.write("<table class=\"info\" width=\"1200px\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td colspan=\"2\" class=\"iTitle\">상품정보</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td width=\"200px\" rowspan=\"2\"> <img src=\"");
      out.print(request.getParameter("pic"));
      out.write("\" class=\"pill\">\r\n");
      out.write("\t\t<input type=\"hidden\" name=\"pic\" value=\"");
      out.print(request.getParameter("pic"));
      out.write("\"> </td>\r\n");
      out.write("\t\t<td class=\"product\">");
      out.print(request.getParameter("pname"));
      out.write("\r\n");
      out.write("\t\t<input type=\"hidden\" name=\"pname\" value=\"");
      out.print(request.getParameter("pname"));
      out.write("\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"money\">");
      out.print(sum);
      out.write(" + 배송비(2500) = ");
      out.print(total);
      out.write(" 원\r\n");
      out.write("\t\t<input type=\"hidden\" name=\"sum\" value=\"");
      out.print(sum);
      out.write("\">\r\n");
      out.write("\t\t<input type=\"hidden\" name=\"total\" value=\"");
      out.print(total);
      out.write("\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td colspan=\"2\" class=\"iTitle\">주문자 정보</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"content\">주문자</td>\r\n");
      out.write("\t\t<td> <input type=\"text\" name=\"order\" size=\"10\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"content\">휴대폰 </td>\r\n");
      out.write("\t\t<td> <input type=\"text\" name=\"oTel\" size=\"20\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"content\">이메일</td>\r\n");
      out.write("\t\t<td> <input type=\"text\" name=\"email\" size=\"30\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td colspan=\"2\" class=\"iTitle\">배송 정보</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"content\">주소</td>\r\n");
      out.write("\t\t<td> <input type=\"text\" name=\"address\" size=\"70\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"content\">수령인</td>\r\n");
      out.write("\t\t<td> <input type=\"text\" name=\"receipt\" size=\"10\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"content\">휴대폰</td>\r\n");
      out.write("\t\t<td> <input type=\"text\" name=\"rTel\" size=\"20\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"content\">요청사항</td>\r\n");
      out.write("\t\t<td> <input type=\"text\" name=\"request\" size=\"40\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<div class=\"buy\">\r\n");
      out.write(" \t<input class=\"input1\" type=\"submit\" value=\"주문하기\">\r\n");
      out.write(" </div>\r\n");
      out.write(" <div class=\"b\">");
      out.print(pnum);
      out.write("개\r\n");
      out.write(" <input type=\"hidden\" name=\"pnum\" value=\"");
      out.print(pnum);
      out.write("\"></div>\r\n");
      out.write("<input type=\"hidden\" name=\"orderId\" value=\"");
      out.print((String)application.getAttribute("id"));
      out.write("\">\r\n");
      out.write("</center>\r\n");
      out.write("</form>\r\n");
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
