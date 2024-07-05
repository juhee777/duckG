<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

	<!-- Blog Section Begin -->
	<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg" style="width: 100%">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>1:1문의</h2>
					</div>
				</div>
			</div>
		</div>
	</section>

<section>
      <div class="contact-form spad">
        <div class="container">
            <form method = "post" id="emilForm" target = iframe1 class="gform" method="POST" data-email="yumewokimini@gmail.com"
             action=https://script.google.com/macros/s/AKfycbwbh1ryS1J6-mK1ugeL2LBS1BP4EUVgBpllteEwrT0fN77VotOBGhsHfw8xXbl77-b1oA/exec>
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <input type="text" class="form-control" id="name" name="name" placeholder="ID" readonly>
                    </div>

                    <div class="col-lg-6 col-md-6">
                        <input type="text" class="form-control" id="email" name="email" placeholder="E-mail" readonly>
                    </div>
                    <div class="col-lg-12 text-center">
                        <input type="text" placeholder="제목">
                        <textarea placeholder="내용" class="form-control" id="message" name="message" rows="5"></textarea>
                        <button id="submits" type="submit" class="site-btn">발송</button>
                        <button type="reset" class="site-btn">취소</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<iframe id="iframe1" name="iframe1" style="display:none" src="MyInfo.do" ></iframe> 
<script>
	const id = '${loginId}';
</script>
<script src="js/myinfo/Inquire.js"></script>