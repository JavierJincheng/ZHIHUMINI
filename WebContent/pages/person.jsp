<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="zh" data-reactroot="" data-reactid="1"
	data-react-checksum="800382219" data-focus-method="pointer">
<head data-reactid="2">

<link rel="icon" href="images/logo.png" type="image/x-icon"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title data-reactid="4">编辑个人资料 - 知乎</title>
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1"
	data-reactid="5">
<meta name="renderer" content="webkit" data-reactid="6">
<meta name="force-rendering" content="webkit" data-reactid="7">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"
	data-reactid="8">
<meta name="google-site-verification"
	content="FTeR0c8arOPKh8c5DYh_9uu98_zJbaWw53J-Sch9MTg" data-reactid="9">
<link rel="shortcut icon" type="image/x-icon"
	href="https://static.zhihu.com/static/favicon.ico" data-reactid="10">
<link rel="dns-prefetch" href="https://static.zhihu.com/"
	data-reactid="11">
<link rel="dns-prefetch" href="https://pic1.zhihu.com/"
	data-reactid="12">

<link rel="dns-prefetch" href="https://pic2.zhihu.com/"
	data-reactid="13">
<link rel="dns-prefetch" href="https://pic3.zhihu.com/"
	data-reactid="14">
<link rel="dns-prefetch" href="https://pic4.zhihu.com/"
	data-reactid="15">
	<link href="../css/personIndex.css"
	rel="stylesheet" data-reactid="16">
	<link rel="stylesheet" type="text/css"
	href="../bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="../bootstrap/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css"
	href="../css/sweetalert.css" />
<script
	src="../bootstrap/js/jquery.min.js"></script>
<script
	src="../bootstrap/js/bootstrap.min.js"></script>
<script
	src="../ckeditor/ckeditor.js"></script>
		
<link
	href="../css/person.css"
	rel="stylesheet" data-reactid="16">

<style type="text/css">
.CloseIcon-icon-2xww {
	transition: opacity .3s ease-out
}

.CloseIcon-icon-2xww:hover {
	opacity: .8
}
</style>
<style type="text/css">
.animations-fadeIn-1aFv {
	animation: animations-fadeIn-1aFv .3s ease-out both
}

@
keyframes animations-fadeIn-1aFv { 0%{
	opacity: 0
}

to {
	opacity: 1
}

}
.animations-fadeOut-3XSQ {
	animation: animations-fadeOut-3XSQ .3s ease-out both
}

@
keyframes animations-fadeOut-3XSQ { 0%{
	opacity: 1
}

to {
	opacity: 0
}

}
.animations-fadeInUp-3KKK {
	animation: animations-fadeInUp-3KKK .3s cubic-bezier(.25, .1, .35, 1)
		both
}

@
keyframes animations-fadeInUp-3KKK { 0%{
	opacity: 0;
	transform: translateY(20px)
}

to {
	opacity: 1;
	transform: translateY(0)
}

}
.animations-fadeOutDown-r_A_ {
	animation: animations-fadeOutDown-r_A_ .3s cubic-bezier(.25, .1, .35, 1)
		both
}

@
keyframes animations-fadeOutDown-r_A_ { 0%{
	transform: translateY(0)
}

to {
	opacity: 0;
	transform: translateY(20px)
}
}
</style>
<style type="text/css">
.Modal-backdrop-2ksh {
	background-color: rgba(0, 0, 0, .65)
}

.Modal-backdrop-2ksh, .Modal-modalWrapper-56Mq {
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	z-index: 10010
}

.Modal-modalWrapper-56Mq {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-align: center;
	align-items: center;
	-ms-flex-pack: center;
	justify-content: center
}

.Modal-modal-wf58 {
	position: relative;
	z-index: 10011;
	background: #fff;
	border-radius: 2px
}

.Modal-content-3JxL {
	width: 588px;
	max-height: calc(100vh - 24px * 2);
	overflow-x: hidden;
	overflow-y: auto;
	-webkit-overflow-scrolling: touch
}

.Modal-closeButton-3JkR {
	position: absolute;
	top: 4px;
	right: -44px;
	padding: 12px;
	width: 40px;
	height: 40px;
	cursor: pointer;
	box-sizing: border-box;
	background: none;
	outline: none;
	border: none
}
</style>
<style type="text/css">
.FeedbackButton-button-3waL {
	position: fixed;
	z-index: 10000;
	bottom: 40px;
	right: 40px;
	width: 40px;
	height: 40px;
	cursor: pointer;
	border-radius: 50%;
	background-color: #fff;
	border: none;
	outline: none;
	box-shadow: 0 0 10px rgba(0, 0, 0, .15);
	font-weight: 700;
	line-height: normal
}

.FeedbackButton-icon-1Rgw {
	display: inline-block;
	vertical-align: middle;
	width: 18px;
	height: 18px;
	background-image:
		url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzUiIGhlaWdodD0iMzYiIHZpZXdCb3g9IjAgMCAzNSAzNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48dGl0bGU+R3JvdXAgNjwvdGl0bGU+PGcgZmlsbD0iIzAwOEZFQiIgZmlsbC1ydWxlPSJldmVub2RkIj48cGF0aCBkPSJNMTMgMTguM2MwLS40IDAtLjcuNC0xIC4yLS4yLjUtLjMuOC0uMy40IDAgLjcgMCAxIC40LjIuMi4zLjUuMyAxIDAgLjIgMCAuNS0uNC43IDAgLjQtLjQuNS0uOC41LS4zIDAtLjYgMC0uOC0uNC0uMyAwLS40LS40LS40LS43ek0xMCAxMC43di0xYy40LTEgMS41LTIuNyA0LjItMi43IDIgMCAzLjggMS40IDMuOCAzcy0xLjQgMi43LTIgMy4zYy0uOC42LTEgMS0xLjIgMS43LS4yLjYtLjYgMS0xLjMgMS0uMy0uMi0uNi0uMy0uNy0uNXYtLjhjMC0uMiAwLS43LjMtMS4ybDEuNC0xLjVjMS40LTEuMiAxLjYtMiAuOC0yLjgtLjUtLjQtMS42LS41LTIuMiAwLS44LjQtMSAxLTEuMiAxLjMtLjIuNS0uMyAxLTEuMyAxLS4zLS4yLS40LS40LS41LS44eiIvPjxwYXRoIGQ9Ik0yOS44IDEwLjJ2M2MxLjQgMS44IDIuMyA0IDIuMyA2LjMgMCAzLjgtMi4yIDctNS41IDl2My44bC0zLjctMi41LTMgLjNjLTIuOCAwLTQuMy0uOC02LjQtMi4yaC0zLjFDMTMgMzAuNCAxNS42IDMyIDIwIDMyYy44IDAgMS43IDAgMi42LS4ybDYgNHYtNi40YzMuNS0yLjQgNS43LTYgNS43LTEwIDAtMy42LTEuNy03LTQuNS05LjJ6TTE0LjQgMjUuNmM4IDAgMTMuMi02IDEzLjItMTNTMjEgMCAxNC40IDBDNi40IDAgMCA1LjcgMCAxMi43YzAgNCAxLjUgNy41IDQuNCAxMFYyOWw2LjMtMy42IDMuNy4yek0xNC4yIDJjNi41IDAgMTEuNSA1LjMgMTEuNSAxMUMyNS43IDE5IDIxIDI0IDE0LjQgMjRjLTEgMC0zLjYtLjMtNC41LS41TDYgMjUuN3YtNGMtMi43LTIuMi00LTUtNC04LjZDMiA3IDcgMiAxNCAyeiIvPjwvZz48L3N2Zz4=);
	background-repeat: no-repeat;
	background-size: contain
}

.FeedbackButton-button-3waL:hover .FeedbackButton-icon-1Rgw {
	background-image:
		url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzUiIGhlaWdodD0iMzYiIHZpZXdCb3g9IjAgMCAzNSAzNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48dGl0bGU+R3JvdXAgMTE8L3RpdGxlPjxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PHBhdGggZD0iTTI5LjQgMTNjMCAyLS4zIDguMi01IDExLjQtNC4zIDMtOSAzLjMtMTEuMyAzLjNoLTNjMi44IDIuNyA2LjYgNC44IDEyLjIgNCAxIDAgNi4zIDQgNi4zIDRWMjljMy41LTIuMyA1LjMtNS4yIDUuNi05LjUuMy0zLjctMS42LTctNC41LTkuNXYzem0tMTUgMTIuNmM4IDAgMTMuMi02IDEzLjItMTNTMjEgMCAxNC40IDBDNi40IDAgMCA1LjcgMCAxMi43YzAgNCAxLjUgNy41IDQuNCAxMFYyOWw2LjMtMy42IDMuNy4zeiIgZmlsbD0iIzAwOEZFQiIvPjxwYXRoIGQ9Ik0xMyAxOC4zYzAtLjQgMC0uNy40LTFzLjUtLjMuOC0uM2MuNCAwIC43IDAgMSAuNC4yLjIuMy41LjMgMSAwIC4yIDAgLjUtLjQuNyAwIC40LS40LjUtLjguNS0uMyAwLS42IDAtLjgtLjQtLjMgMC0uNC0uNC0uNC0uN3ptLTMtNy42di0xYy40LTEgMS40LTIuNyA0LjItMi43IDIgMCAzLjggMS40IDMuOCAzcy0xLjQgMi43LTIgMy4zYy0uOC42LTEgMS0xLjIgMS43LS4yLjYtLjYgMS0xLjMgMS0uMy0uMi0uNi0uMy0uNy0uNXYtLjhjMC0uMiAwLS43LjMtMS4ybDEuNC0xLjVjMS40LTEuMiAxLjYtMiAuOC0yLjgtLjUtLjQtMS42LS41LTIuMiAwLS44LjQtMSAxLTEuMiAxLjMtLjIuNS0uMyAxLTEuMyAxLS4zLS4yLS40LS40LS41LS44eiIgZmlsbD0iI0ZGRiIvPjwvZz48L3N2Zz4=)
}
</style>
<style type="text/css">
.DrawingExample-svg-30WA {
	position: absolute;
	top: 30px;
	right: 0;
	left: 0;
	margin: auto;
	transform: rotate(-44deg)
}

.DrawingExample-ellipse-26bv {
	stroke-dasharray: 520;
	transform-origin: center;
	animation: DrawingExample-drawingExample-3Bm3 .6s linear both
}

@
keyframes DrawingExample-drawingExample-3Bm3 { 0%{
	stroke-dashoffset: 520
}

50%{
stroke-dashoffset
:
1000;opacity
:
1
}
to {
	stroke-dashoffset: 1000;
	opacity: 0
}
}
</style>
<style type="text/css">
.Spinner-spinner-2PGn {
	position: absolute;
	width: 30px;
	height: 30px;
	top: 50%;
	left: 50%;
	margin: -15px 0 0 -15px;
	animation: Spinner-rotate-RMMJ .8s linear infinite
}

.Spinner-spinner-2PGn .Spinner-circle-teFy {
	stroke: #4197ff;
	stroke-dasharray: 187;
	stroke-dashoffset: 46.75;
	transform-origin: center
}

@
keyframes Spinner-rotate-RMMJ { 0%{
	transform: rotate(0deg)
}

to {
	transform: rotate(1turn)
}
}
</style>
<style type="text/css">
.FeedbackForm-form-1uUg {
	padding: 40px 24px 32px;
	width: 100%;
	font-size: 14px;
	line-height: 1.5;
	font-family: HelveticaNeue-Light, Helvetica, PingFangSC-Light,
		Hiragino Sans GB, Microsoft YaHei, Arial, sans-serif;
	color: #404040;
	box-sizing: border-box
}

.FeedbackForm-header-3hQI {
	margin-bottom: 26px;
	text-align: center
}

.FeedbackForm-title-2uCC {
	font-size: 24px;
	font-weight: 500;
	line-height: 33px;
	font-family: Helvetica, PingFang SC, Hiragino Sans GB, Microsoft YaHei,
		Arial, sans-serif
}

.FeedbackForm-inputBox-15yJ {
	display: block;
	padding: 12px;
	width: 100%;
	height: auto;
	font-size: 15px;
	border: 1px solid #e7eaf1;
	border-radius: 3px;
	box-sizing: border-box;
	resize: none;
	outline: none;
	color: inherit;
	transition: box-shadow .15s ease-out;
	overflow: auto
}

.FeedbackForm-inputBox-15yJ::-webkit-input-placeholder {
	color: #9aaabf;
	transition: color .15s ease-out
}

.FeedbackForm-inputBox-15yJ::-moz-placeholder {
	color: #9aaabf;
	transition: color .15s ease-out
}

.FeedbackForm-inputBox-15yJ:-ms-input-placeholder {
	color: #9aaabf;
	transition: color .15s ease-out
}

.FeedbackForm-inputBox-15yJ::placeholder {
	color: #9aaabf;
	transition: color .15s ease-out
}

.FeedbackForm-inputBox-15yJ:hover::-webkit-input-placeholder {
	color: rgba(154, 170, 191, .8)
}

.FeedbackForm-inputBox-15yJ:hover::-moz-placeholder {
	color: rgba(154, 170, 191, .8)
}

.FeedbackForm-inputBox-15yJ:hover:-ms-input-placeholder {
	color: rgba(154, 170, 191, .8)
}

.FeedbackForm-inputBox-15yJ:hover::placeholder {
	color: rgba(154, 170, 191, .8)
}

.FeedbackForm-inputBox-15yJ:focus {
	box-shadow: 0 0 5px #e7eaf1
}

.FeedbackForm-inputBox-15yJ:focus::-webkit-input-placeholder {
	color: rgba(154, 170, 191, .8)
}

.FeedbackForm-inputBox-15yJ:focus::-moz-placeholder {
	color: rgba(154, 170, 191, .8)
}

.FeedbackForm-inputBox-15yJ:focus:-ms-input-placeholder {
	color: rgba(154, 170, 191, .8)
}

.FeedbackForm-inputBox-15yJ:focus::placeholder {
	color: rgba(154, 170, 191, .8)
}

.FeedbackForm-inputBox-15yJ.FeedbackForm-isWarning-2ds- {
	border-color: #f75659
}

.FeedbackForm-inputBox-15yJ.FeedbackForm-isWarning-2ds-::-webkit-input-placeholder
	{
	color: #f75659
}

.FeedbackForm-inputBox-15yJ.FeedbackForm-isWarning-2ds-::-moz-placeholder
	{
	color: #f75659
}

.FeedbackForm-inputBox-15yJ.FeedbackForm-isWarning-2ds-:-ms-input-placeholder
	{
	color: #f75659
}

.FeedbackForm-inputBox-15yJ.FeedbackForm-isWarning-2ds-::placeholder {
	color: #f75659
}

.FeedbackForm-inputBox-15yJ.FeedbackForm-isWarning-2ds-:focus {
	box-shadow: none
}

.FeedbackForm-screenShot--Gsn {
	overflow: hidden;
	box-sizing: border-box;
	transition: max-height .3s ease, opacity .3s ease
}

.FeedbackForm-screenShotLabel-2Sgh {
	padding-top: 22px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none
}

.FeedbackForm-canvasContainer-mrde {
	margin-top: 8px;
	position: relative;
	background-color: #f6f7f9
}

.FeedbackForm-canvas-tSGI {
	display: block;
	max-width: 100%;
	cursor:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAABGdBTUEAALGPC/xhBQAAARpJREFUOBGdkr1KA0EUhTcxEkSQQIpAihQWPoedD2BnIVsZQiBVEkiR7SwtBDsJqXwBLQwEgoWNjY2FjYUQ38Ei5Oc7sBeGLTKze+Djzsyecxh2N4ryq0zkHpYQQ2H1SW5TNsxukaZzQsewACvTvIBg3eFUaABHMEv3OruBIN3icm8wZl+FZ3iBQ/AqweGW2FrlKlChV0McFsxOvaegm/T2lLzzTC/dqzaO7A1s/8GzE28Dhhj0f1jQnZ+c18CrKxxrcMO2/uK87m3AcAkrsKA7vzlvQJAmuNywrX84bwY1YBrBATyCFWj+QguCJKNCU1DZQ7r/Y55CsK5x2i2eWFcggTPIJd3Eiv5Zd3KlU3OJOQd9lVd4A5Xl1g4YG2GGhwRfegAAAABJRU5ErkJggg==)
		0 17, default;
	cursor: -webkit-image-set(url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASCAYAAABWzo5XAAAABGdBTUEAALGPC/xhBQAAARpJREFUOBGdkr1KA0EUhTcxEkSQQIpAihQWPoedD2BnIVsZQiBVEkiR7SwtBDsJqXwBLQwEgoWNjY2FjYUQ38Ei5Oc7sBeGLTKze+Djzsyecxh2N4ryq0zkHpYQQ2H1SW5TNsxukaZzQsewACvTvIBg3eFUaABHMEv3OruBIN3icm8wZl+FZ3iBQ/AqweGW2FrlKlChV0McFsxOvaegm/T2lLzzTC/dqzaO7A1s/8GzE28Dhhj0f1jQnZ+c18CrKxxrcMO2/uK87m3AcAkrsKA7vzlvQJAmuNywrX84bwY1YBrBATyCFWj+QguCJKNCU1DZQ7r/Y55CsK5x2i2eWFcggTPIJd3Eiv5Zd3KlU3OJOQd9lVd4A5Xl1g4YG2GGhwRfegAAAABJRU5ErkJggg==)
		1x,
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAABGdBTUEAALGPC/xhBQAAAn9JREFUWAnFlz1IV2EUxs2+ixCCrCCrIaiGGnLIRdBacqkhtCEbqqVaoqmacpIma6rFHHITh1pKMKFaInATkb4hKChKIwj7rt8D74XDy3tfKM69Hng4zz3nvc9zfH3/93//DQ31xWqsBsEnMAU6wILFSpwnwB+Db/BDoPZYjuMYsMMU/Af1nron2o7hh5KBNNhP0AtqjV24vQPFzsT5F70jVU7UiPhNcNyY7IC/AfEwxfUsvcVmvRtdhNIQkNFvcAoUsQ3yGhRDxLmpWOiZryUMzxqDrfCXiTXjZo0bvZIwKnbhvHHZBH9q1s7Am03fhV42BsUQcb5knDbAp8EzsNHUXWgfKrF52XW/cVwH1265xgXUyszL6gOuExixc/8xjIZ8C9YbHRd6GpWyHcjV33PfTpcJjMgJuJ4xOeNU7yP37DY6LvQoKnrUpwxzNb12tLpMYES64foyzBmnep+5p83ouNCDqHwHKcNc7Qv3tLtMYEQOwPVClTNO9ea5Z7/RcaH7UJFwyjBX0x/Q5TKBEdFWa8tzxqme3gTdX0/3IqrDmDLM1XTodfhdYw9qcyBnnOrpcdDrOglienDpAZYyzNX0oDwJ3GMUxZxxWe+M+yRBcBX53j8OpS9Z9ziM4tKguoJ8B5Tthq1fDPe4p+co3gbLgrLyLWDNY94X1rqnFmN8F64dUiwBIyAeRNd6Za0sjqFsTXWGdJYU+q00DGz/qhpVxg3EraH4Q7AmmDaSB4Hq10Ot0vQimMVDPaLeFJz1A1DvQsqVxmbU40Hs9ST9tZVOYMT1r+gw1zF9ReEx2BI3qrrWp6jTiH+FPwD6pI2BJ6DW0HkYBzNAQ9wH82DB4i/kUnkzGX+skQAAAABJRU5ErkJggg==)
		2x) 0 17, default
}

.FeedbackForm-canvas-tSGI.FeedbackForm-isCapturing-3UFp {
	display: none
}

.FeedbackForm-checkLabelWrapper-3B7w {
	margin-top: 12px
}

.FeedbackForm-checkLabel-2VTb {
	cursor: pointer;
	color: #9aaabf;
	transition: color .15s ease-out;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none
}

.FeedbackForm-checkLabel-2VTb:hover {
	color: rgba(154, 170, 191, .8)
}

.FeedbackForm-checkLabel-2VTb input {
	margin-right: .5em;
	vertical-align: 1px
}

.FeedbackForm-actions-dJ87 {
	margin-top: 40px;
	text-align: center
}

.FeedbackForm-submitButton-1oKQ {
	display: inline-block;
	min-width: 220px;
	padding: 8px 1em;
	background-color: #0f88eb;
	border: 1px solid #0f88eb;
	border-radius: 3px;
	font: inherit;
	color: #fff;
	transition: background-color .15s ease-out, opacity .15s ease-out;
	cursor: pointer;
	outline: none
}

.FeedbackForm-submitButton-1oKQ[disabled] {
	opacity: .8;
	cursor: default
}

.FeedbackForm-submitButton-1oKQ:hover {
	background-color: #0d79d1
}

.FeedbackForm-submitButton-1oKQ:active {
	opacity: .8
}

.FeedbackForm-successMask-34go {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-pack: center;
	justify-content: center;
	-ms-flex-align: center;
	align-items: center;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: #fff
}

.FeedbackForm-successTitle-1Y6p {
	font-size: 24px;
	font-weight: 500;
	line-height: 33px;
	font-family: Helvetica, PingFang SC, Hiragino Sans GB, Microsoft YaHei,
		Arial, sans-serif;
	text-align: center
}

.FeedbackForm-successSubtitle-A_aP {
	margin-top: 10px;
	font-size: 18px;
	line-height: 33px;
	text-align: center
}
</style>
<meta name="apple-itunes-app"
	content="app-urlToken=432274380, app-argument=zhihu://people/mu-mu-gao-20"
	data-react-helmet="true">
</head>
<script src="js/person.js"></script>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
String id = request.getParameter("id");//用request得到 
%>
<body class="Entry-body" data-reactid="17">
<jsp:include page="../common/header.jsp"></jsp:include>
<input type="hidden" id="hiddenid" name="hiddenid" value=<%=id%>>

	<br><br><br>
	

<!-- <div class="Modal-wrapper">
<div class="Modal-backdrop"></div>
<div class="Modal Modal--default UserAvatarEditor-modal" tabindex="0">			
<div class="Modal-inner">
<h3 class="Modal-title">编辑头像</h3>
<div class="Modal-subtitle">调整头像尺寸和位置</div>
<div class="Modal-content">
<div><div class="UserAvatarEditor-container">
<canvas width="300" height="300" style="width: 240px; height: 240px;" src="../person/person.jpg">

</canvas>
</div><div>
<svg viewBox="0 0 18 16" class="Icon Icon--resize" width="14" height="16" aria-hidden="true" style="height: 16px; width: 14px;">
<title></title><g>
<path d="M13.296 3H1.006C.45 3 0 3.45 0 4.003v10.995C0 15.545.45 16 1.007 16h12.986C14.55 16 15 15.553 15 15V4.003C15 3.456 14.55 3 13.993 3h-.697zm-.892 11H2.596c-.33 0-.596-.266-.596-.6V5.6C2 5.27 2.267 5 2.596 5h9.81c.328 0 .595.266.595.6v7.8c0 .33-.268.6-.596.6zM4 0c-.552 0-1 .448-1 1s.448 1 1 1h11.5s.5 0 .5.5V12c0 .552.448 1 1 1s1-.448 1-1V1c0-.552-.448-1-1-1H4z" fill-rule="evenodd"></path></g></svg><input type="range" step="0.01" min="1" max="2" class="RangeInput" value="1">
<svg viewBox="0 0 18 16" class="Icon Icon--resize" width="21" height="16" aria-hidden="true" style="height: 16px; width: 21px;"><title></title><g><path d="M13.296 3H1.006C.45 3 0 3.45 0 4.003v10.995C0 15.545.45 16 1.007 16h12.986C14.55 16 15 15.553 15 15V4.003C15 3.456 14.55 3 13.993 3h-.697zm-.892 11H2.596c-.33 0-.596-.266-.596-.6V5.6C2 5.27 2.267 5 2.596 5h9.81c.328 0 .595.266.595.6v7.8c0 .33-.268.6-.596.6zM4 0c-.552 0-1 .448-1 1s.448 1 1 1h11.5s.5 0 .5.5V12c0 .552.448 1 1 1s1-.448 1-1V1c0-.552-.448-1-1-1H4z" fill-rule="evenodd"></path></g></svg>
</div><div class="ModalButtonGroup ModalButtonGroup--vertical">
<button class="Button Button--primary Button--blue" style="width:100px" type="button">保存</button>
<button class="Button Button--primary Button" style="width:100px;" type="button">取消</button>
</div></div></div></div></div></div>	 -->
<script type="text/javascript" src="../js/jquery.js"></script> 
<script type="text/javascript" src="../js/sweetalert.min.js"></script>
<script type="text/javascript" src="../js/ajaxfileupload.js"></script>
<script type="text/javascript">
function checkValue(){
	var title=document.getElementById("topicTitle").value;
	if(title==''){
		alert('标题不能为空');
		return false;
	}
	return true;
}
$(document).ready(function(){ 
	var id=$("#hiddenid").val();
	 $.ajax({
		 
	        type: "POST",
	        cache: false,
	        data:{UserId:id},
	        url: "../userMessages",
	        
	       dataType: "json",
	        success: function (data) {
	              
	        	   if (data.code == 1) {
	        		   $("#titlename").html(data.data[1]);
	        		   $("#nicknames").val(data.data[1]);
	        		   $("#Emails").html(data.data[0]);
	        		   $("#descs").html(data.data[3]);
	        		   $("#ages").val(data.data[2]);
	        		   
	        		   $("#photos").attr('src',data.data[4]); 
	        	   }else{
	        		   window.location.href="../common/error.jsp"; 
	        		   
	        	   }
	         
	        }

	    });
});
$(document).ready(function(){
	var id=$("#hiddenid").val();
	
	$("#baocun").click(function(){
		
		var ages=$("#ages").val();
		var nicknames=$("#nicknames").val();
		var descs=$("#descs").val();
	
	
		 $.ajax({
			 url: "../UpdateMgController",
		        type: "POST",
		        cache: false,
		      
		       data: {NiceName:nicknames,Age:ages,Desc:descs,id:id},
		         dataType: "json",
		        
		        success: function (data) {
		        	
		        	   if (data.code == 1) {
		        			swal("GOOD!", "修改成功！", "success");
		        		 
		        	   }else{
		        		   swal("OMG", "删除操作失败了!", "error");
		        	   }
		         
		        }

		    });
		
		
	});
	
		
});
function upload(){
	 var formData = new FormData();
	    formData.append("file", document.getElementById("file").files[0]);
		swal({
			title: "确认上传？",
			text: "",
			type: "warning",
			showCancelButton: true,
			closeOnConfirm: false,
			confirmButtonText: "确认",
			confirmButtonColor: "#ec6c62"
		}, function() {
			$.ajax({
				url: "../UserPhotoController",
				type: "post",
				data: formData,
				//dataType: "json",
			    processData: false
			}).done(function(data) {
				swal("操作成功!", "已成功上传数据！", "success");
			}).error(function(data) {
				swal("OMG", "操作失败了!", "error");
			});
		});
	

	

}


 

</script>

	<div id="root" data-reactid="18">
		<div data-reactroot=""
			data-zop-usertoken="{&quot;urlToken&quot;:&quot;mu-mu-gao-20&quot;}">
			<!-- react-empty: 2 -->
			<div class="LoadingBar"></div>
			<!-- react-empty: 4 -->
			
			<!-- react-empty: 46 -->
			<main role="main" class="App-main">
			<div class="ProfileEdit">
				<!-- react-empty: 4163 -->
				<div class="Card">
					<div class="ProfileHeader-header">
						<div class="UserCoverEditor">
							<div class="UserCoverGuide">
								<div class="UserCoverGuide-inner">
									<div class="UserCoverGuide-buttonContainer">
										
									</div>
									<div class="UserCoverGuide-dialog">
										<h4 class="UserCoverGuide-dialogHead">上传一张图片，展示在这里</h4>
										
									</div>
								</div>
								<ul class="UserCoverGuide-items">
									<li class="UserCoverGuide-item"
										style="background-image: url(&quot;https://static.zhihu.com/heifetz/guide-cover-1.4423ce0fcec2132f058c.jpg&quot;);"></li>
									<li class="UserCoverGuide-item"
										style="background-image: url(&quot;https://static.zhihu.com/heifetz/guide-cover-2.4c5018526e42872a056b.jpg&quot;);"></li>
									<li class="UserCoverGuide-item"
										style="background-image: url(&quot;https://static.zhihu.com/heifetz/guide-cover-3.d59ac68c89726deb3a26.jpg&quot;);"></li>
									<li class="UserCoverGuide-item"
										style="background-image: url(&quot;https://static.zhihu.com/heifetz/guide-cover-4.5518ba1a1aeb013b4c5c.jpg&quot;);"></li>
									<li class="UserCoverGuide-item"
										style="background-image: background-image: url("https://static.zhihu.com/heifetz/guide-cover-5.2b2adaebc37bf48bacae.jpg");"></li>
								</ul>
							</div>
							<div class="UserCover UserCover--colorBlock" style="background-color:#139667;opacity:0.6">
									
										
										<img src="../images/persons.png" style="width:600px;" >
									
							</div>
							<input type="file" accept="image/png,image/jpeg"
								style="display: none;">
						</div>
					</div>
					<div class="ProfileHeader-main">
						<div class="UserAvatarEditor ProfileHeader-avatar">
							<div class="UserAvatar">
								<img id="photos" name="photos" class="Avatar Avatar--large UserAvatar-inner" width="160"
									height="160"
									src=""
									>
							</div>
							<div class="Mask UserAvatarEditor-mask">
								<div
									class="Mask-mask Mask-mask--black UserAvatarEditor-maskInner"></div>
								<!-- 	<form >
									<label>
									
									<input type="file" id="file"  name="filename" accept="image/png,image/jpeg"
								style="display: none;" onchange="upload()"/>
								<div class="Mask-content">
								   
								
									<svg viewBox="0 0 20 16"
										class="Icon UserAvatarEditor-cameraIcon Icon--camera"
										width="30" height="27" aria-hidden="true"
										style="height: 27px; width: 30px;">
<title></title><g>
<path
											d="M18.094 2H15s-1-2-2-2H7C6 0 5 2 5 2H2C0 2 0 3.967 0 3.967V14c0 2 2.036 2 2.036 2H17c3 0 3-1.983 3-1.983V4c0-2-1.906-2-1.906-2zM10 12c-1.933 0-3.5-1.567-3.5-3.5S8.067 5 10 5s3.5 1.567 3.5 3.5S11.933 12 10 12zm0 1.5c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm7.5-8c-.552 0-1-.448-1-1s.448-1 1-1 1 .448 1 1-.448 1-1 1z"
											fill-rule="evenodd"></path></g></svg>
									<div class="UserAvatarEditor-maskInnerText">修改我的头像</div>
								</div>
								
								</label></form> -->
							</div>
							
						</div>
						





						<div class="ProfileHeader-content">
							<div class="ProfileHeader-contentHead">
								<h1 class="ProfileHeader-title">
									<span class="ProfileHeader-name" id="titlename" name="titlename"></span>
								</h1>
								<div
									class="ProfileHeader-expandActions ProfileEdit-expandActions">
									<a class="Button Button--plain" type="button"
										href="personIndex.jsp?id=<%=id%>" style="color:#209f71">
										<!-- react-text: 4207 -->返回我的主页<!-- /react-text -->
										<svg viewBox="0 0 10 6"
											class="Icon ProfileEdit-arrowIcon Icon--arrow" width="10"
											height="16" aria-hidden="true"
											style="height: 16px; width: 10px;">
											<title></title><g>
											<path
												d="M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z"></path></g></svg>
									</a>
								</div>
							</div>
							
							<div class="ProfileEdit-fields">
								<div class="Field">
									<h3 class="Field-label">Email</h3>
									<div class="Field-content">
										<div>
											<span class="Field-text" id="Emails" name="Emails"></span>
										</div>
									</div>
								</div>
							
									<div class="Field">
									<h3 class="Field-label">昵称</h3>
									<div class="Field-content">
										
										<div class="HeadlineField-input Input-wrapper">
										
											<input class="input" style="border:0px;outline:none;" id="nicknames" name="nicknames"></div>
											
									
									</div>
								</div>
								<div class="Field">
									<h3 class="Field-label">年龄</h3>
									<div class="Field-content">
										
											<div class="HeadlineField-input Input-wrapper">
										
											<input class="input" style="border:0px;outline:none;width:67px"  id="ages" name="ages"/><span style="margin-top: -6px;color:#139667">岁</span></div>
											
									
											
										</div>
									
								</div>
							
     
             <div class="Field"> 
									<h3 class="Field-label">修改头像</h3>
									<div class="Field-content">
										
											
										
						 	<form action="../UploadServlet?id=<%=id%>" method="post" enctype="multipart/form-data"> 
                    <label class="uploadImg">
                      
                      <input type="file" id="file" name="file" style="display:none" accept="image/jpeg,image/jpg,image/png"/>
                        <span>上传图片</span>
                        
                      
                      </label> <input type="submit" class="Button Button--primary Button--green" value="上传">
									</form>
									
											
										
								</div>
								<!-- </form> -->
        
        
        
        
								
							
							
						</div>
								<!-- </form> -->
        
        
        
        
								<div class="Field">
									<h3 class="Field-label">个人简介</h3>
									<div class="Field-content">
								<textarea class="DescriptionField-input TextArea" id="descs" name="descs">
								</textarea>
								<div class="DescriptionField-actions">
								<div class="ButtonGroup DescriptionField-buttonGroup">
								<div class="Button Button--primary Button--green" type="button" id="baocun" name="baocun">保存</button>
								</div></div>
									</div>
							
									</div>
							</div>
							
							
						</div>
					</div>
				</div>
			</div>
			</main>
			
			 <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">发布你的问题</h4>
				</div>
				<form
					action="${pageContext.request.contextPath }/TopicServlet?action=publish"
					method="post" enctype="multipart/form-data" onsubmit="return checkValue();">
					<div class="modal-body">
						<label>标题</label> <input type="text" class="form-control" id="topicTitle"
							name="topicTitle"><br>
							<label>描述</label>
						<textarea cols="10" rows="1" class="ckeditor" name="topicContent"
							id="topicContent"></textarea>
						<label>问题类别</label> <select class="form-control" name="topicType"
							id="topicType">
							<c:forEach var="type" items="${typeList}">
								<option value="${type.typeId }">${type.typeName }</option>
							</c:forEach>
						</select> <label>图片</label> <input type="file" class="form-control"
							name="file">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary">保存</button>
					</div>
				</form>
			</div>
		</div>
	</div>
			
	<!-- 	
			<div class="CornerButtons">
				<div class="CornerAnimayedFlex CornerAnimayedFlex--hidden">
					<button class="Button CornerButton Button--plain"
						data-tooltip="回到顶部" data-tooltip-position="left" aria-label="回到顶部"
						type="button">
						<svg width="16" height="16" viewBox="0 0 17 17"
							xmlns="http://www.w3.org/2000/svg"
							class="Icon Icon--backToTopArrow" aria-hidden="true"
							style="height: 16px; width: 16px;">
							<title>回到顶部</title><g>
							<path
								d="M12.036 15.59c0 .55-.453.995-.997.995H5.032c-.55 0-.997-.445-.997-.996V8.584H1.03c-1.1 0-1.36-.633-.578-1.416L7.33.29c.39-.39 1.026-.385 1.412 0l6.878 6.88c.782.78.523 1.415-.58 1.415h-3.004v7.004z"
								fill-rule="evenodd"></path></g></svg>
					</button>
				</div>
			</div> -->
		</div>
	</div>




	<span><div></div></span>
</body>
</html>