<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- author KhaiPhan -->
<!-- Pagination -->
<div class="row">
  <div class="col-md-12">
    <nav class="text-center">
      <ul class="pagination">
        <li>
          <a href="${pageContext.request.contextPath}/" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
          </a>
        </li>
        <li><a href="${pageContext.request.contextPath}/">1</a></li>
        <li><a href="${pageContext.request.contextPath}/">2</a></li>
        <li><a href="${pageContext.request.contextPath}/">3</a></li>
        <li><a href="${pageContext.request.contextPath}/">4</a></li>
        <li><a href="${pageContext.request.contextPath}/">5</a></li>
        <li>
          <a href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
          </a>
        </li>
      </ul>
    </nav>
  </div>
</div>