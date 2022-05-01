<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <title>Starbucks Coffee Korea</title>

  <meta name="description" content="국내 최고의 커피 전문점! 항상 최고의 음료를 선사합니다. 스타벅스만의 프리퀀시를 받아보세요.">
  <meta name="keywords" content="스타벅스, 커피, 텀블러, 곰돌이, 머그컵, 아이스아메리카노, 돌체라떼, 그란데, 밴티, 톨, 프리퀀시, 리워드, 리저브드, 사이렌오더, 레디백, 기프티콘, 기프티 카드, 자바칩 프라푸치노">

 <!-- <link rel="shortcut icon" type="image/x-icon" href="favicon.ico"> -->
  <link rel="icon" href="starbucks_favicon.ico">

  <!-- 폰트 -->
  <link
    href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&family=Noto+Sans:wght@400;700&display=swap"
    rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Rowdies:wght@300;400&display=swap" rel="stylesheet">

  <!-- CSS 링크 -->
  <link rel="stylesheet" href="assets/css/normalize.css" />
  <link rel="stylesheet" href="assets/css/reset.css" />
  <link rel="stylesheet" href="assets/css/style.css" />
</head>
<%
String loginok = (String)session.getAttribute("loginok");
String id = (String)session.getAttribute("id");//아이디
%>
<body>
<div style="background-color: gold;">
<section id="visual" class="visual">
          <h2 class="a11y-hidden">새로운 음료 추천</h2>
          <p class="visual__slogan">
            stay
            <span>chill.</span>
            stay
            <span>playful.</span>
          </p>
          <figure class="visual__summer-latte">
            <a>
              <img src="assets/img/visual_bev2.png" alt="블론드 서머 라떼">
            </a>
            <figcaption class="visual__detail">
              <span>blonde summer latte</span>
              <span>블론드 서머 라떼</span>
            </figcaption>
          </figure>
          <figure class="visual__grapefruit-lime">
            <a>
              <img src="assets/img/visual_bev1.png" alt="스위트 자몽과 라임 블렌디드">
            </a>
            <figcaption class="visual__detail">
              <span>sweet grapefruit &amp; lime blended</span>
              <span>스위트 자몽&amp;라임 블렌디드</span>
            </figcaption>
          </figure>
          <figure class="visual__melon">
            <a>
              <img src="assets/img/visual_bev3.png" alt="스위트 멜론 블렌디드">
            </a>
            <figcaption class="visual__detail">
              <span>sweet melon blended</span>
              <span>스위트 멜론 블렌디드</span>
            </figcaption>
          </figure>
          <a href="index.jsp?main=../../sangpum/frappuccino.jsp" aria-labelledby="visual" class="visual__more-btn comp-btn">자세히 보기</a>
          <!-- <div class="visual__pin"><a href="#"><img src="assets/img/event_banner.png" alt="나만의 스타벅스 홈카페 자세히보기"></a>
          </div> -->
        </section>
      </div>
      
      <!-- 리워드 -->
      <div class="rewards-background">
        <section class="rewards">
          <div class="rewards-left-box">
            <h2 id="rewards" class="rewards-heading"><span>MY STARBUCKS</span>REWARDS</h2>
          </div>
          <div class="rewards-right-box">
            <p class="rewards-title">스타벅스만의 <span>특별한 혜택,</span> 마이 스타벅스 <span>리워드</span></p>
            <div class="member-box clearfix">
              <div class="member-left-box">
                <p>
                  <span>스타벅스 회원이세요?</span> 로그인을 통해 나만의 리워드를 확인해 보세요.
                </p>
                <p>
                  <span>스타벅스 회원이 아니세요?</span> 가입을 통해 리워드 혜택을 즐기세요.
                </p>
              </div>
              
              <div class="member-right-box">
                
                <%
          		if(loginok==null||loginok==" "){
          		%>
	          		<a href="index.jsp?main=../../member/memberAdd_1.jsp">회원가입</a>
                	<a href="index.jsp?main=../../login/loginform.jsp">로그인</a>
	            <%
          		}//로그인 X
          		else{
          		%>
          		
    	        <%
          		}//로그인 O
            	 %>
              </div>
            </div>
            <div class="gift-box clearfix">
              <div class="gift-left-box">
                <p>
                  회원 가입 후, 홈페이지 COFFEE 메뉴 중
                  <span>"나와 어울리는 커피"로 나만의 원두를 찾아보세요!</span>
                  질문에 대한 답을 선택하시면, 스타벅스가 여러분에게 딱 맞는 원두를 추천해드립니다!
                </p>
              </div>
              <div class="gift-right-box">
                <a href="#">나와 어울리는 커피 찾기</a>
              </div>
            </div>
          </div>
        </section>
      </div>
      <!-- 르완다 -->
      <div class="rwanda-background">
        <section class="rwanda clearfix">
          <h2 id="rwanda" class="a11y-hidden">르완다 커피 소개</h2>
          <img src="assets/img/rwanda_bean.png" alt="르완다 블론드 로스트" />
          <dl class="rwanda__text">
            <dt>
              키 라임의 섬세한 산미로 시작하여 꿀과 같은 달콤함으로 마무리 되는
              <span>르완다 블론드 로스트</span>
            </dt>
            <dd>비옥한 화산 토양, 높은 고도, 풍부한 강우량으로<br />이상적인 풍미를 자랑하는 르완다 블론드 로스트를 즐겨보세요.<br />시럽과 같은 부드러운 바디감을 갖고 있어 아이스커피로도
              좋습니다.</dd>
          </dl>
          <a href="index.jsp?main=../../sangpum/coffee.jsp" class="rwanda__more-btn comp-btn" aria-labelledby="rwanda">자세히 보기</a>
        </section>
      </div>
      <!-- 페이보릿 -->
      <div class="favorite-background">
        <section class="favorite">
          <h2 class="a11y-hidden" id="favorite">자신의 음료 찾기</h2>
          <div class="favorite-text">
            <p class="favorite-title">
              <span>PICK</span>
              <span>YOUR</span>
              <span>FAVORITE</span>
            </p>
            <p class="favorite-sub-title"><span>다양한 메뉴</span>를<br /><span>스타벅스</span>에서&nbsp;즐겨보세요.</p>
            <p class="favorite-description">
              <span>스타벅스만의 특별함을 경험할 수 있는 최상의 선택 음료</span>
              <span>스타벅스 커피와 완벽한 어울림을 자랑하는 푸드</span>
              <span>다양한 시도와 디자인으로 가치를 더하는 상품</span>
            </p>
            <a href="#" class="favorite-more-btn" aria-labelledby="favorite">자세히 보기</a>
          </div>
        </section>
      </div>
      <!-- 매거진 -->
      <div class="magazine">
        <section class="magazine-box">
          <h2 id="magazine" class="a11y-hidden">매거진</h2>
          <p class="magazine-text">
            <span>reserve magazine</span>
            <span>리저브가 선사하는 특별한 경험을 온라인 매거진으로 만나보세요.</span>
          </p>
          <a href="#" class="magazine-link" aria-labelledby="magazine">explore our story</a>
        </section>
      </div>
      <!-- 스토어 -->
      <div class="store-background">
        <section class="store">
          <h2 class="a11y-hidden" id="store">store</h2>
          <div class="store-text">
            <p class="store-title">스타벅스를 가까이에서 경험해보세요.</p>
            <p class="store-sub-title">고객님과 가장 가까이 있는 매장을 찾아보세요!</p>
            <div class="store-description">
              <p>
                차별화된 커피 경험을 누릴 수 있는 <span>리저브TM 매장</span>
              </p>
              <p>
                다양한 방법으로 편리하게 즐길 수 있는 <span>드라이브 스루 매장</span>
              </p>
              <p>
                함께해서 더 따뜻할 수 있는 지역 사회 소통 공간 <span>커뮤니티 매장</span>
              </p>
            </div>
            <a href="#" class="store-search-btn" aria-labelledby="store">매장 찾기</a>
          </div>
        </section>
      </div>
</body>
</html>