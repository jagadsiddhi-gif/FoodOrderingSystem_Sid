package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cafe_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/navbar.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_choose;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_otherwise;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_when_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_choose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_otherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_when_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_choose.release();
    _jspx_tagPool_c_otherwise.release();
    _jspx_tagPool_c_when_test.release();
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
      out.write("<nav class=\"navbar navbar-expand-lg navbar-light bg-white shadow-sm\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <a class=\"navbar-brand\" href=\"home.jsp\">FoodZone</a>\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarNav\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\n");
      out.write("      <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\n");
      out.write("        <li class=\"nav-item\"><a class=\"nav-link\" href=\"home.jsp\">Home</a></li>\n");
      out.write("        <li class=\"nav-item\"><a class=\"nav-link\" href=\"restaurant.jsp\">Restaurants</a></li>\n");
      out.write("        <li class=\"nav-item\"><a class=\"nav-link\" href=\"cafe.jsp\">Cafes</a></li>\n");
      out.write("      </ul>\n");
      out.write("      <ul class=\"navbar-nav\">\n");
      out.write("        <li class=\"nav-item\"><a class=\"nav-link\" href=\"user.jsp\">\n");
      out.write("          ");
      if (_jspx_meth_c_choose_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        </a></li>\n");
      out.write("        <li class=\"nav-item\"><a class=\"nav-link\" href=\"logout\">Logout</a></li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<title>Top Cafes</title>\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("  body {\n");
      out.write("    background: linear-gradient(135deg, #e3f2fd, #f8f9fa);\n");
      out.write("    font-family: 'Poppins', sans-serif;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  .banner {\n");
      out.write("    background: url('images/banner.jpg') center/cover no-repeat;\n");
      out.write("    border-radius: 20px;\n");
      out.write("    padding: 100px 20px;\n");
      out.write("    text-align: center;\n");
      out.write("    color: white;\n");
      out.write("    margin-bottom: 40px;\n");
      out.write("    box-shadow: 0 8px 20px rgba(0,0,0,0.2);\n");
      out.write("    position: relative;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  .banner::before {\n");
      out.write("    content: \"\";\n");
      out.write("    position: absolute;\n");
      out.write("    top: 0; left: 0; right: 0; bottom: 0;\n");
      out.write("    background: rgba(0,0,0,0.45);\n");
      out.write("    border-radius: 20px;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  .banner h1, .banner p {\n");
      out.write("    position: relative;\n");
      out.write("    z-index: 1;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  .banner h1 {\n");
      out.write("    font-size: 3rem;\n");
      out.write("    font-weight: 600;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  .banner p {\n");
      out.write("    font-size: 1.2rem;\n");
      out.write("    margin-top: 10px;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  .card {\n");
      out.write("    border: none;\n");
      out.write("    border-radius: 15px;\n");
      out.write("    overflow: hidden;\n");
      out.write("    transition: transform 0.3s ease, box-shadow 0.3s ease;\n");
      out.write("    box-shadow: 0 4px 10px rgba(0,0,0,0.1);\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  .card:hover {\n");
      out.write("    transform: translateY(-10px);\n");
      out.write("    box-shadow: 0 8px 20px rgba(0,0,0,0.15);\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  .card-img-top {\n");
      out.write("    height: 220px;\n");
      out.write("    object-fit: cover;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  .card-title {\n");
      out.write("    font-weight: 600;\n");
      out.write("    color: #333;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  .card-text {\n");
      out.write("    color: #555;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  .btn-primary {\n");
      out.write("    background: linear-gradient(135deg, #007bff, #00b4d8);\n");
      out.write("    border: none;\n");
      out.write("    transition: background 0.3s ease;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  .btn-primary:hover {\n");
      out.write("    background: linear-gradient(135deg, #0056b3, #0077b6);\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  footer {\n");
      out.write("    background: #0d6efd;\n");
      out.write("    color: #fff;\n");
      out.write("    text-align: center;\n");
      out.write("    padding: 15px 0;\n");
      out.write("    margin-top: 50px;\n");
      out.write("    border-top-left-radius: 20px;\n");
      out.write("    border-top-right-radius: 20px;\n");
      out.write("  }\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<div class=\"container mt-4\">\n");
      out.write("\n");
      out.write("  <!-- Banner -->\n");
      out.write("  <div class=\"banner\">\n");
      out.write("    <h1>Top Cafes</h1>\n");
      out.write("    <p>Choose from our partner restaurants</p>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <!-- Restaurant Cards -->\n");
      out.write("  <div class=\"row\">\n");
      out.write("    <div class=\"col-md-4 mb-4\">\n");
      out.write("      <div class=\"card h-100\">\n");
      out.write("        <img src=\"images/rest1.jpg\" class=\"card-img-top\" alt=\"Cafe Mocha\">\n");
      out.write("        <div class=\"card-body text-center\">\n");
      out.write("          <h5 class=\"card-title\">Cafe Mocha</h5>\n");
      out.write("          <p class=\"card-text\">Authentic Indian flavors.</p>\n");
      out.write("          <a href=\"home.jsp?restaurant=1\" class=\"btn btn-primary\">View Menu</a>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"col-md-4 mb-4\">\n");
      out.write("      <div class=\"card h-100\">\n");
      out.write("        <img src=\"images/rest2.jpg\" class=\"card-img-top\" alt=\"The Brew House\">\n");
      out.write("        <div class=\"card-body text-center\">\n");
      out.write("          <h5 class=\"card-title\">The Brew House</h5>\n");
      out.write("          <p class=\"card-text\">Traditional and modern fusion.</p>\n");
      out.write("          <a href=\"home.jsp?restaurant=2\" class=\"btn btn-primary\">View Menu</a>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"col-md-4 mb-4\">\n");
      out.write("      <div class=\"card h-100\">\n");
      out.write("        <img src=\"images/rest3.jpg\" class=\"card-img-top\" alt=\"Caffeine Corner\">\n");
      out.write("        <div class=\"card-body text-center\">\n");
      out.write("          <h5 class=\"card-title\">Caffeine Corner</h5>\n");
      out.write("          <p class=\"card-text\">Healthy & fresh meals.</p>\n");
      out.write("          <a href=\"home.jsp?restaurant=3\" class=\"btn btn-primary\">View Menu</a>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"col-md-4 mb-4\">\n");
      out.write("      <div class=\"card h-100\">\n");
      out.write("        <img src=\"images/rest4.jpg\" class=\"card-img-top\" alt=\"Sweet Sip\">\n");
      out.write("        <div class=\"card-body text-center\">\n");
      out.write("          <h5 class=\"card-title\">Sweet Sip</h5>\n");
      out.write("          <p class=\"card-text\">Seafood specials.</p>\n");
      out.write("          <a href=\"home.jsp?restaurant=4\" class=\"btn btn-primary\">View Menu</a>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"col-md-4 mb-4\">\n");
      out.write("      <div class=\"card h-100\">\n");
      out.write("        <img src=\"images/rest5.jpg\" class=\"card-img-top\" alt=\"Latte Lane\">\n");
      out.write("        <div class=\"card-body text-center\">\n");
      out.write("          <h5 class=\"card-title\">Latte Lane</h5>\n");
      out.write("          <p class=\"card-text\">Popular street food.</p>\n");
      out.write("          <a href=\"home.jsp?restaurant=5\" class=\"btn btn-primary\">View Menu</a>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<footer>\n");
      out.write("  <p>© 2025 Food Ordering System | Designed with ☕ by Siddhi</p>\n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js\"></script>\n");
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

  private boolean _jspx_meth_c_choose_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_choose_0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _jspx_tagPool_c_choose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_choose_0.setPageContext(_jspx_page_context);
    _jspx_th_c_choose_0.setParent(null);
    int _jspx_eval_c_choose_0 = _jspx_th_c_choose_0.doStartTag();
    if (_jspx_eval_c_choose_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("            ");
        if (_jspx_meth_c_when_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("            ");
        if (_jspx_meth_c_otherwise_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_choose_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("          ");
        int evalDoAfterBody = _jspx_th_c_choose_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_choose_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
      return true;
    }
    _jspx_tagPool_c_choose.reuse(_jspx_th_c_choose_0);
    return false;
  }

  private boolean _jspx_meth_c_when_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_when_0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _jspx_tagPool_c_when_test.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_when_0.setPageContext(_jspx_page_context);
    _jspx_th_c_when_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    _jspx_th_c_when_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${not empty sessionScope.userName}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_when_0 = _jspx_th_c_when_0.doStartTag();
    if (_jspx_eval_c_when_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("              ");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.userName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\n");
        out.write("            ");
        int evalDoAfterBody = _jspx_th_c_when_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_when_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
      return true;
    }
    _jspx_tagPool_c_when_test.reuse(_jspx_th_c_when_0);
    return false;
  }

  private boolean _jspx_meth_c_otherwise_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_choose_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_otherwise_0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _jspx_tagPool_c_otherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    _jspx_th_c_otherwise_0.setPageContext(_jspx_page_context);
    _jspx_th_c_otherwise_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_choose_0);
    int _jspx_eval_c_otherwise_0 = _jspx_th_c_otherwise_0.doStartTag();
    if (_jspx_eval_c_otherwise_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("User");
        int evalDoAfterBody = _jspx_th_c_otherwise_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_otherwise_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
      return true;
    }
    _jspx_tagPool_c_otherwise.reuse(_jspx_th_c_otherwise_0);
    return false;
  }
}
