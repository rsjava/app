<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!Doctype html>
<html>
<head>
<meta charset="UTF-9">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>お問合せ｜KUJIRA Cafe</title>
<link rel="stylesheet" href="css/style.css">
<script>
function check(){
	//selectbox お問い合わせの種類
		// 値(数値)を取得
	var num = document.contact.kind.selectedIndex;
	// 値(value値)を取得
	var str = document.contact.kind.options[num].value;
	
	//alert(str);
	
	var errMsg = "";
	str = "";
	//radio これまでの来店は？
		// 値(数値)を取得
	var first = document.contact.first;
	for (var i = 0; i < first.length; i++){
		if(first[i].checked) {
			str = first[i].value;			
		}
	}
	if( str.length==0 ){
		errMsg += "初めてかどうか入力してください\n";
	}
	//checkbox きっかけ
	str = "";
	var how = document.contact.how;
	for (var i = 0; i < how.length; i++){
		if(how[i].checked) {
			str += how[i].value+",";			
		}
	}
	if( str.length==0 ){
		errMsg += "きっかけを入力してください\n";
	}	
	//text 件名
	var subject = document.contact.subject.value;
	if( subject.length<=0 ){
		errMsg += "件名を入力してください\n"
	}
	
	//textarea 内容
	var message = document.contact.message.value;
	if( message.length<=0 ){
		errMsg += "内容を入力してください\n"
	}
	
	
	
	if( errMsg.length>0 ){
		alert(errMsg);
		return false;
	}else{
		return true;	
	}

}
</script>
</head>
<body>
<div class="wrapper">
<!-- ヘッダー -->
<header class="header">
	<h1 class="logo"><a href="index.html"><img src="images/logo.png" alt="KUJIRA Cafe"></a></h1>
	<nav class="nav">
	<ul>
		<li><a href="index.jsp">ホーム</a></li>
		<li><a href="about.jsp">店舗案内</a></li>
		<li><a href="access.jsp">アクセス</a></li>
		<li><a href="menu.jsp">メニュー</a></li>
		<li><a href="contact.jsp">お問い合わせ</a></li>
	</ul>
	</nav>
</header>
<!-- ヘッダーここまで -->


<!-- メイン -->
<main>
<h2>お問合わせ</h2>
<form method="post" action="/whale/result.jsp" name="contact" onsubmit="return check()">
<div>
<label for="kind">お問い合わせの種類</label><br>
<select id="kind" name="kind">
  <option value="reservation">ご予約</option>
  <option value="event">イベントについて</option>
  <option value="contact">その他お問合せ</option>
</select>
</div>

<div>
KUJIRA Cafeにご来店いただいたことはありますか<br>
<label><input type="radio" name="first" value="yes">はい
</label>
<label><input type="radio" name="first" value="no">いいえ</label>
</div>
<div>
当カフェをお知りになったきっかけは？<br>
<label><input type="checkbox" name="how" value="friends">知り合いの紹介で</label>
<label><input type="checkbox" name="how" value="magazine">雑誌・Webサイトを見て</label>
</div>
<div>
<label>お問い合わせの件名<br>
<input type="text" name="subject" placeholder="お問合せ"></label>
</div>
<div>
<label>お問合せの具体的な内容<br>
<textarea name="message"></textarea></label>
</div>

<div>
  <input type="hidden" name="kakusi" value="1101">
  <input type="submit" name="submit" value="送信">
</div>
</form>

</main>
<!-- メインここまで -->
<!-- footer -->
<footer class="footer">
<p>&copy;Copyright KUJIRA Cafe. All rights reserved.</p>
</footer>
<!-- footerここまで -->
</div>  <!-- wrapper -->
</body>
</html>
    