<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<section>
    <div class="contact-form spad">
        <div class="container">
            <div>
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2>1:1 문의</h2>
                    </div>
                </div>
            </div>
            <form method = "post" id="emilForm" class="gform" method="POST" data-email="yumewokimini@gmail.com"
            action=https://script.google.com/macros/s/AKfycbyuJRwljQNYPvn0K33jqjOzlp_Zs6KuKowIpj5973Xca5AgROsl6LOxvHzT7hijd1cMkg/exec>
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <input type="text" class="form-control" id="name" name="name" placeholder="ID" required>
                    </div>

                    <div class="col-lg-6 col-md-6">
                        <input type="text" class="form-control" id="email" name="email" placeholder="E-mail" required>
                    </div>
                    <div class="col-lg-12 text-center">
                        <input type="text" placeholder="제목">
                        <textarea placeholder="내용" class="form-control" id="message" name="message" rows="5"></textarea>
                        <button type="submit" class="site-btn">발송</button>
                        <button type="submit" class="site-btn">취소</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
    