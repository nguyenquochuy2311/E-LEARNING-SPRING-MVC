<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- Feedback -->
    <section class="grey section">
      <div class="container">
        <div class="row contact-wrapper">
          <div class="col-md-12">
            <div class="section-title text-center">
              <h4>Feedback</h4>
              <p>Share with us about your learning experience on the online learning page</p>
            </div>
          </div>
          <div class="col-md-3 col-sm-3 col-xs-12 content-widget">
            <img src="${pageContext.request.contextPath }/resources/upload/xteam_03.jpg.pagespeed.ic.Mw22RnI1eL.jpg" alt="" class="img-responsive wow fadeInUp">
          </div>
          <div class="col-md-9 col-sm-9 col-xs-12 content-widget">
            <div class="widget-title">
              <h4>Contact Form</h4>
              <hr>
            </div>
            <div id="contact_form" class="contact_form row">
              <div id="message"></div>
              <form id="contactform" action="http://templatevisual.com/demo/learnplus/contact.php" name="contactform"
                method="post">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                  <input type="text" name="name" id="name" class="form-control" placeholder="Name *">
                  <input type="text" name="email" id="email" class="form-control" placeholder="Email *">
                  <input type="text" name="phone_number" id="phone_number" class="form-control"
                    placeholder="Phone Number">
                </div>
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                  <textarea class="form-control" name="comments" id="comments" rows="6" placeholder=""></textarea>
                  <button type="submit" value="SEND" id="submit" class="btn btn-primary btn-block">Send
                    Feedback</button>
                </div>
              </form>
            </div>
          </div>

        </div>
      </div>
    </section>
    <!-- End Feedback -->