<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh" data-reactroot="" data-reactid="1"
    data-react-checksum="800382219" data-focus-method="pointer">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head data-reactid="2">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title data-reactid="4">我的主页 - 知乎</title>
<meta name="viewport"
    content="width=device-width,initial-scale=1,maximum-scale=1"
    data-reactid="5">
<meta name="renderer" content="webkit" data-reactid="6">
<meta name="force-rendering" content="webkit" data-reactid="7">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"
    data-reactid="8">
<meta name="google-site-verification"
    content="FTeR0c8arOPKh8c5DYh_9uu98_zJbaWw53J-Sch9MTg" data-reactid="9">
<link rel="icon" href="/ZHIHU/images/logo.png" type="image/x-icon"/>
<link href="../css/personIndex.css"
    rel="stylesheet" data-reactid="16">
    <link rel="stylesheet" type="text/css"
    href="../bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet"
    href="../bootstrap/css/bootstrap-theme.min.css">
<script
    src="../bootstrap/js/jquery.min.js"></script>
<script
    src="../bootstrap/js/bootstrap.min.js"></script>
<script
    src="../ckeditor/ckeditor.js"></script>
<style type="text/css">
* {
    margin: 0px;
    padding: 0px;
}
</style>
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
<base>
<meta name="apple-itunes-app"
    content="app-id=432274380,
              app-argument=zhihu://people/mu-mu-gao-20"
    data-react-helmet="true">
</head>
<script src="../js/jquery.js"></script>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
String id = request.getParameter("id");//用request得到 
%>
<script>
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
        url: "../SelectTopicController",
        data:{UserId:id},
        dataType: "json",
     
        success: function (data) {
        	
        	   if (data.code == 1) {
        		   $("#dongtainum").html(data.data.length);
        		   var str="";
        		   for(var i=0;i<data.data.length;i++){
        			   
        			   str+="<div class='List-item'><div class='List-itemMeta'><div class='ActivityItem-meta'><span class='ActivityItem-metaTitle'>发布了话题"+
    "</span><span>"+getLocalTime(data.data[i].topicTime)+"</span></div></div><div class='ContentItem' data-za-module='TopicItem'"+
    "data-za-module-info='{&quot;card&quot;:{&quot;content&quot;:{&quot;type&quot;:&quot;Topic&quot;,&quot;token&quot;:&quot;19553298&quot;,&quot;follower_num&quot;:10511458}}}'>"+
    "<div class='ContentItem-main'><div class='ContentItem-image'><a class='TopicLink' href=''><div class='Popover'><div id='Popover-61619-24330-toggle'"+
    "aria-haspopup='true' aria-expanded='false' aria-owns='Popover-61619-24330-content'><img class='Avatar Avatar--large TopicLink-avatar' width='60' height='60' src='${pageContext.request.contextPath }/topic-images/"+data.data[i].topicPic+"'"+
    " alt='知乎mini'></div></div></a></div><div class='ContentItem-head'>"+
    "<h2 class='ContentItem-title'><a class='TopicLink' href='/ZHIHU/TopicInfoServlet?TopicId="+data.data[i].topicId+"'><div class='Popover'>"+
    "<div id='Popover-61620-36821-toggle' aria-haspopup='true' aria-expanded='false' aria-owns='Popover-61620-36821-content'>"+data.data[i].topicTitle.substring(0,20)+"...</div><div id='Popover-61620-36821-toggle' style='color:black;font-size:14px'"+
    "aria-haspopup='true' aria-expanded='false' aria-owns='Popover-61620-36821-content'><span style='font-weight:normal;'>"+data.data[i].topicContent.substring(0,30)+"</span>...<br><br><img src='/ZHIHU/images/more.png'>&nbsp;<span style='color:gray;font-weight:normal;'>查看详情<span></div></div></a></h2>"+
    "</div></div></div></div><div></div>";
        			   
        			   
        			   
        			   
        		   }
        		   
        		   $("#listTopic").html(str);
        		  
        	   }else{
        		   var str="<div class='EmptyState'><div class='EmptyState-inner'>"+
        		   "<svg xmlns='http://www.w3.org/2000/svg' width='150' height='120' viewBox='0 0 150 120' class='EmptyState-image'><title></title><g><g fill='none' fill-rule='evenodd'><path fill='#EBEEF5' fill-rule='nonzero' d='M37.273 69.98c.212-3.3 3.063-5.98 6.387-5.98h63.91c3.315 0 6.175 2.673 6.387 5.98l1.285 20.04c.212 3.302-2.302 5.98-5.615 5.98H41.603c-3.313 0-5.827-2.673-5.615-5.98l1.285-20.04zm1.71 20.23C38.88 91.788 40.02 93 41.603 93h68.023c1.58 0 2.722-1.215 2.62-2.79l-1.284-20.037c-.11-1.726-1.657-3.173-3.394-3.173H43.66c-1.74 0-3.282 1.447-3.393 3.173L38.982 90.21zM47 58h58v-3.5a1.5 1.5 0 0 1 3 0v5c0 .414-.168.79-.44 1.06a1.49 1.49 0 0 1-1.06.44h-61a1.49 1.49 0 0 1-1.06-.44A1.49 1.49 0 0 1 44 59.5v-5a1.5 1.5 0 0 1 3 0V58zm50-31H55v28.008h-3V25.992c0-1.1 1.025-1.992 2.283-1.992h43.434c1.26 0 2.283.898 2.283 1.992v29.016h-3V27zM60 87.5c0-.828.668-1.5 1.5-1.5h29c.828 0 1.5.666 1.5 1.5 0 .828-.668 1.5-1.5 1.5h-29c-.828 0-1.5-.666-1.5-1.5zM46 72.01c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm-52 7c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98z'></path><path fill='#F7F8FA' d='M71 34.5a1.5 1.5 0 0 1 1.497-1.5h7.006a1.5 1.5 0 1 1 0 3h-7.006A1.495 1.495 0 0 1 71 34.5zm-9 8c0-.828.665-1.5 1.505-1.5h24.99a1.5 1.5 0 1 1 0 3h-24.99A1.5 1.5 0 0 1 62 42.5zm0 7c0-.828.67-1.5 1.495-1.5h19.01c.826 0 1.495.666 1.495 1.5 0 .828-.67 1.5-1.495 1.5h-19.01A1.494 1.494 0 0 1 62 49.5z'></path></g></g></svg><span><!-- react-text: 535 -->还没有发表过任何东西噢!<!-- /react-text --><a class='EmptyState-action' href='/ZHIHU/first.jsp' >  看看别人都在讨论什么</a></span></div></div>";
        			   $("#listTopic").html(str);
        	   }
         
        }
    });});
function getLocalTime(unixTime) {//由于东八区 所以加8小时
    var time = new Date(unixTime + 8 * 60 * 60 * 1000);
    var ymdhis = "";
    ymdhis += time.getUTCFullYear() + "-";
    if(time.getUTCMonth()+1<10){
        ymdhis += "0"+(time.getUTCMonth()+1) + "-";
    }else{
    ymdhis += (time.getUTCMonth()+1) + "-";}
    ymdhis += time.getUTCDate();
   /* ymdhis += " " + time.getUTCHours() + ":";
    ymdhis += time.getUTCMinutes() + ":";
    ymdhis += time.getUTCSeconds();*/
    return ymdhis;
}
function dongtai(){
    
    var id=$("#hiddenid").val();
      $.ajax({
             
            type: "POST",
            cache: false,
            url: "../SelectTopicController",
            data:{UserId:id},
            dataType: "json",
         
            success: function (data) {
                  
            	   if (data.code == 1) {
            		   var str="";
            		   for(var i=0;i<data.data.length;i++){
            			   
            			   str+="<div class='List-item'><div class='List-itemMeta'><div class='ActivityItem-meta'><span class='ActivityItem-metaTitle'>发布了话题"+
"</span><span>"+getLocalTime(data.data[i].topicTime)+"</span></div></div><div class='ContentItem' data-za-module='TopicItem'"+
"data-za-module-info='{&quot;card&quot;:{&quot;content&quot;:{&quot;type&quot;:&quot;Topic&quot;,&quot;token&quot;:&quot;19553298&quot;,&quot;follower_num&quot;:10511458}}}'>"+
"<div class='ContentItem-main'><div class='ContentItem-image'><a class='TopicLink' href=''><div class='Popover'><div id='Popover-61619-24330-toggle'"+
"aria-haspopup='true' aria-expanded='false' aria-owns='Popover-61619-24330-content'><img class='Avatar Avatar--large TopicLink-avatar' width='60' height='60' src='${pageContext.request.contextPath }/topic-images/"+data.data[i].topicPic+"'"+
"alt='知乎mini'></div></div></a></div><div class='ContentItem-head'>"+
"<h2 class='ContentItem-title'><a class='TopicLink' href='/ZHIHU/TopicInfoServlet?TopicId="+data.data[i].topicId+"' ><div class='Popover'>"+
"<div id='Popover-61620-36821-toggle' aria-haspopup='true' aria-expanded='false' aria-owns='Popover-61620-36821-content'>"+data.data[i].topicTitle.substring(0,20)+"...</div><div id='Popover-61620-36821-toggle' style='color:black;font-size:14px'"+
"aria-haspopup='true' aria-expanded='false' aria-owns='Popover-61620-36821-content'><span style='font-weight:normal;'>"+data.data[i].topicContent.substring(0,30)+"</span>....<br><br><img src='/ZHIHU/images/more.png'>&nbsp;<span style='color:gray;font-weight:normal;'>查看详情<span></div></div></a></h2>"+
"</div></div></div></div><div></div>";
            			   
            			   
            			   
            			   
            		   }
            		   
            		   $("#listTopic").html(str);
            		  
            	   }else{
            		   var str="<div class='EmptyState'><div class='EmptyState-inner'>"+
            		   "<svg xmlns='http://www.w3.org/2000/svg' width='150' height='120' viewBox='0 0 150 120' class='EmptyState-image'><title></title><g><g fill='none' fill-rule='evenodd'><path fill='#EBEEF5' fill-rule='nonzero' d='M37.273 69.98c.212-3.3 3.063-5.98 6.387-5.98h63.91c3.315 0 6.175 2.673 6.387 5.98l1.285 20.04c.212 3.302-2.302 5.98-5.615 5.98H41.603c-3.313 0-5.827-2.673-5.615-5.98l1.285-20.04zm1.71 20.23C38.88 91.788 40.02 93 41.603 93h68.023c1.58 0 2.722-1.215 2.62-2.79l-1.284-20.037c-.11-1.726-1.657-3.173-3.394-3.173H43.66c-1.74 0-3.282 1.447-3.393 3.173L38.982 90.21zM47 58h58v-3.5a1.5 1.5 0 0 1 3 0v5c0 .414-.168.79-.44 1.06a1.49 1.49 0 0 1-1.06.44h-61a1.49 1.49 0 0 1-1.06-.44A1.49 1.49 0 0 1 44 59.5v-5a1.5 1.5 0 0 1 3 0V58zm50-31H55v28.008h-3V25.992c0-1.1 1.025-1.992 2.283-1.992h43.434c1.26 0 2.283.898 2.283 1.992v29.016h-3V27zM60 87.5c0-.828.668-1.5 1.5-1.5h29c.828 0 1.5.666 1.5 1.5 0 .828-.668 1.5-1.5 1.5h-29c-.828 0-1.5-.666-1.5-1.5zM46 72.01c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm-52 7c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98zm8 0c0-.558.443-1.01 1.01-1.01h1.98c.558 0 1.01.443 1.01 1.01v1.98c0 .558-.443 1.01-1.01 1.01h-1.98c-.558 0-1.01-.443-1.01-1.01v-1.98z'></path><path fill='#F7F8FA' d='M71 34.5a1.5 1.5 0 0 1 1.497-1.5h7.006a1.5 1.5 0 1 1 0 3h-7.006A1.495 1.495 0 0 1 71 34.5zm-9 8c0-.828.665-1.5 1.505-1.5h24.99a1.5 1.5 0 1 1 0 3h-24.99A1.5 1.5 0 0 1 62 42.5zm0 7c0-.828.67-1.5 1.495-1.5h19.01c.826 0 1.495.666 1.495 1.5 0 .828-.67 1.5-1.495 1.5h-19.01A1.494 1.494 0 0 1 62 49.5z'></path></g></g></svg><span><!-- react-text: 535 -->还没有发表过任何东西噢!<!-- /react-text --><a class='EmptyState-action' href='/ZHIHU/first.jsp' >  看看别人都在讨论什么</a></span></div></div>";
            			   $("#listTopic").html(str);
            	   }
             
            }
        });
     $("#Profile-answers").hide();
     $("#Profile-posts").hide();
     $("#Profile-activities").show();
     $("#text1").addClass("is-active");
   
     $("#text2").removeClass("is-active");
     $("#text3").removeClass("is-active");
   
     
     
}
function deletep(data){
    
    var b = data.replace(/<.*?>/ig,"");
    return b;
}
function huida(){
    var id=$("#hiddenid").val();
      $.ajax({
             
            type: "POST",
            cache: false,
            url: "../SelectCommentController",
            data:{UserId:id},
            dataType: "json",
         
            success: function (data) {
                  
            	   if (data.code == 1) {
            		  $("#commentcount").html(data.data.length);
            		   
            		   var str="";
            		   for(var i=0;i<data.data.length;i++){
            			   
            			   str+="<div class='List-item'><div class='ContentItem AnswerItem' data-zop='"+
            			   "{&quot;authorName&quot;:&quot;木木高&quot;,&quot;itemId&quot;:207697504,&quot;title&quot;:&quot;去三亚"+
"拍婚纱照大概多少钱，三亚婚纱照价格是多少11？&quot;,&quot;type&quot;:&quot;answer&quot;}' name='207697504' itemprop='zhihu:answer' itemtype='"+
"http://schema.org/Answer' itemscope='' data-za-module='AnswerItem' data-za-module-info='{&quot;card&quot;:{&quot;has_image&quot;:false,&quot;has_video&quot;:false,&quot;content&quot;:{&quot;type&quot;:&quot;Answer&quot;,&quot;token&quot;:&quot;207697504&quot;,&quot;upvote_num&quot;:0,&quot;comment_num&quot;:0,&quot;publish_timestamp&quot;:null,&quot;parent_token&quot;:&quot;50345391&quot;,&quot;author_member_hash_id&quot;:&quot;f27e7e5590ac72a4685f8b9cfdd37a09&quot;}}}'>"+
"<h2 class='ContentItem-title'><div itemprop='zhihu:question' itemtype='http://schema.org/Question' itemscope=''><meta itemprop='url'"+
"content='https://www.zhihu.com/question/50345391'><meta itemprop='name' content='去三亚拍婚纱照大概多少钱，三亚婚纱照价格是多少22？'><a style='text-decoration:none' target='_blank'"+
"href='/ZHIHU/TopicInfoServlet?TopicId="+data.data[i].commentTopic+"'><img src='/ZHIHU/images/title.png'>&nbsp;&nbsp;"+deletep(data.data[i].commentReplay).substring(0,20)+"...</div></h2><div class='ContentItem-meta'><div class='AnswerItem-meta'>"+
"<div class='RichContent-inner'><span class='RichText CopyrightRichText-richText' itemprop='text'>"+
"<p><img src='/ZHIHU/images/content.png'>&nbsp;&nbsp;<span style='color:black'>"+data.data[i].commentContent.substring(0,30)+"</span>...<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src='/ZHIHU/images/more.png'>&nbsp;<span style='color:gray;font-weight:normal;'>查看详情<span></p></span><!-- react-empty: 662 --></div></a><div><div class='ContentItem-time'>"+
"<span data-tooltip='发布于 "+getLocalTime(data.data[i].commentTime)+"'><!-- react-text: 667 -->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;编辑于 <!-- /react-text --><!-- react-text: 668 -->"+getLocalTime(data.data[i].commentTime)+"<!-- /react-text --></span></div></div></div></div><!-- react-empty: 262 --><!-- react-empty: 263 --><!-- react-empty: 264 --><!-- react-empty: 265 --><!-- react-empty: 616 --><!-- react-empty: 267 --></div></div>";
            			   
            			   
            			   
            			   
            		   }
            		   
            		   $("#answerList").html(str);
            		  
            	   }else{
            		   var str="<div class='EmptyState' id='answerList'><div class='EmptyState-inner'>"+
            		   "<svg xmlns='http://www.w3.org/2000/svg' width='150' height='120' viewBox='0 0 150 120' class='EmptyState-image'><title></title>"+
            		   "<g><g fill='none' fill-rule='evenodd'><path fill='#EBEEF5' fill-rule='nonzero' d='M67.757 83H45c-1.66 0-3-1.338-3-2.998V37.998A3.003 3.003 0 0 1 45 35h53.42v-3H45c-3.31 0-6 2.686-6 5.998v42.004A5.994 5.994 0 0 0 45 86h21.515l6.853 6.854a2.99 2.99 0 0 0 4.234 0L84.456 86H105c3.31 0 6-2.686 6-5.998v-36.54h-3v36.54A3.003 3.003 0 0 1 105 83H83.214l-7.728 7.728L67.756 83z'></path><path fill='#F7F8FA' d='M55 48.5c0-.828.67-1.5 1.508-1.5h26.984a1.5 1.5 0 1 1 0 3H56.508A1.5 1.5 0 0 1 55 48.5zm0 11c0-.828.677-1.5 1.495-1.5h37.01c.826 0 1.495.666 1.495 1.5 0 .828-.677 1.5-1.495 1.5h-37.01A1.494 1.494 0 0 1 55 59.5zm0 11c0-.828.677-1.5 1.495-1.5h37.01c.826 0 1.495.666 1.495 1.5 0 .828-.677 1.5-1.495 1.5h-37.01A1.494 1.494 0 0 1 55 70.5z'></path><path fill='#EBEEF5' fill-rule='nonzero' d='M94.868 50.46l18.92-18.92-2.83-2.827-18.918 18.92-2.12-2.123 18.917-18.918a3.005 3.005 0 0 1 4.245-.002l2.828 2.828a3.004 3.004 0 0 1-.002 4.245L96.99 52.58l-2.122-2.12zm-7.193 2.377l2.244-7.327 7.07 7.07-7.328 2.245c-1.575.482-2.473-.405-1.988-1.988z'></path></g></g></svg>"+
            		   "<span><!-- react-text: 1630 -->还没有回答，看看<!-- /react-text -->"+
            		   "<a class='EmptyState-action' href='/ZHIHU/first.jsp' target='_blank'>为你推荐的问题</a></span></div></div>";
            			$("#answerList").html(str);
            	   }
             
            }
        });
    $("#Profile-answers").show();
    $("#Profile-posts").hide();
    $("#Profile-activities").hide();
    $("#text1").removeClass("is-active");
    $("#text2").addClass("is-active");
    $("#text3").removeClass("is-active");
}
function fengxiang(){
    
    
    var id=$("#hiddenid").val();
      $.ajax({
             
            type: "POST",
            cache: false,
            url: "../UserLikeController",
            data:{uid:id},
            dataType: "json",
         
            success: function (data) {
                  
            	   if (data.code == 1) {
            		  $("#mylikecount").html(data.data.length);
            		   
            		   var str="";
            		   for(var i=0;i<data.data.length;i++){
            			   
            			   str+="<div class='List-item'><div class='ContentItem AnswerItem' data-zop='"+
            			   "{&quot;authorName&quot;:&quot;木木高&quot;,&quot;itemId&quot;:207697504,&quot;title&quot;:&quot;去三亚"+
"拍婚纱照大概多少钱，三亚婚纱照价格是多少11？&quot;,&quot;type&quot;:&quot;answer&quot;}' name='207697504' itemprop='zhihu:answer' itemtype='"+
"http://schema.org/Answer' itemscope='' data-za-module='AnswerItem' data-za-module-info='{&quot;card&quot;:{&quot;has_image&quot;:false,&quot;has_video&quot;:false,&quot;content&quot;:{&quot;type&quot;:&quot;Answer&quot;,&quot;token&quot;:&quot;207697504&quot;,&quot;upvote_num&quot;:0,&quot;comment_num&quot;:0,&quot;publish_timestamp&quot;:null,&quot;parent_token&quot;:&quot;50345391&quot;,&quot;author_member_hash_id&quot;:&quot;f27e7e5590ac72a4685f8b9cfdd37a09&quot;}}}'>"+
"<h2 class='ContentItem-title'><div itemprop='zhihu:question' itemtype='http://schema.org/Question' itemscope=''><meta itemprop='url'"+
"content='https://www.zhihu.com/question/50345391'><a style='text-decoration:none' target='_blank'"+
"href='/ZHIHU/TopicInfoServlet?TopicId="+data.data[i].topicId+"'><img src='/ZHIHU/images/title.png'>&nbsp;&nbsp;"+data.data[i].topicTitle.substring(0,20)+"...</div></h2><div class='ContentItem-meta'><div class='AnswerItem-meta'>"+
"<div class='RichContent-inner'><span class='RichText CopyrightRichText-richText' itemprop='text'>"+
"<p><img src='/ZHIHU/images/content.png'>&nbsp;&nbsp;<span style='color:black'>"+deletep(data.data[i].topicContent).substring(0,30)+"</span>...<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src='/ZHIHU/images/more.png'>&nbsp;<span style='color:gray;font-weight:normal;'>查看详情<span></p></span><!-- react-empty: 662 --></div></a><div>"+
"<span data-tooltip='发布于'><!-- react-text: 667 -->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!-- /react-text --><!-- react-text: 668 --><!-- /react-text --></span></div></div></div></div><!-- react-empty: 262 --><!-- react-empty: 263 --><!-- react-empty: 264 --><!-- react-empty: 265 --><!-- react-empty: 616 --><!-- react-empty: 267 --></div></div>";
            			   
            			   
            			   
            			   
            		   }
            		   
            		   $("#mylike").html(str);
            		  
            	   }else{
            		   var str="<div class='EmptyState'>"+
            		   "<div class='EmptyState-inner'>"+
            		   "<svg xmlns='http://www.w3.org/2000/svg' width='150' height='120' viewBox='0 0 150 120' class='EmptyState-image'><title></title><g><g fill='none' fill-rule='evenodd'>"+
            		   "<path fill='#EBEEF5' fill-rule='nonzero' d='M102 30.998A2.996 2.996 0 0 0 98.998 28H50.002A2.996 2.996 0 0 0 47 30.998v58.147l.193-.125c1.453-.94 3.473-.94 4.927 0l2.537 1.64 2.536-1.64c1.453-.94 3.473-.94 4.927 0l2.537 1.64 2.536-1.64c1.453-.94 3.473-.94 4.927 0l2.537 1.64 2.536-1.64c1.453-.94 3.473-.94 4.927 0l2.537 1.64 2.536-1.64c1.453-.94 3.473-.94 4.927 0l2.537 1.64 2.536-1.64c1.413-.913 3.363-.94 4.807-.075V30.998zm-1.508 60.542c-.464-.3-1.21-.298-1.67 0l-4.165 2.692-4.165-2.692c-.464-.3-1.21-.298-1.67 0l-4.165 2.692-4.165-2.692c-.464-.3-1.21-.298-1.67 0l-4.165 2.692-4.165-2.692c-.464-.3-1.21-.298-1.67 0l-4.165 2.692-4.165-2.692c-.464-.3-1.21-.298-1.67 0l-4.165 2.692-4.165-2.692c-.464-.3-1.21-.298-1.67 0l-4.316 2.79A1.99 1.99 0 0 1 44 93V30.997C44 27.687 46.68 25 50.002 25h48.996A5.996 5.996 0 0 1 105 30.998v62c0 .45-.147.866-.396 1.2l-4.112-2.658z'></path>"+
            		   "<path fill='#F7F8FA' d='M55 39c0-.553.44-1 1-1h19c.553 0 1 .44 1 1v19c0 .553-.44 1-1 1H56c-.553 0-1-.44-1-1V39zm25 .5c0-.828.675-1.5 1.498-1.5h11.004c.827 0 1.498.666 1.498 1.5 0 .828-.675 1.5-1.498 1.5H81.498A1.495 1.495 0 0 1 80 39.5zm0 9c0-.828.675-1.5 1.498-1.5h11.004c.827 0 1.498.666 1.498 1.5 0 .828-.675 1.5-1.498 1.5H81.498A1.495 1.495 0 0 1 80 48.5zm0 9c0-.828.675-1.5 1.498-1.5h11.004c.827 0 1.498.666 1.498 1.5 0 .828-.675 1.5-1.498 1.5H81.498A1.495 1.495 0 0 1 80 57.5zm-25 9c0-.828.677-1.5 1.505-1.5h35.99a1.5 1.5 0 1 1 0 3h-35.99A1.5 1.5 0 0 1 55 66.5zm0 9c0-.828.665-1.5 1.505-1.5h24.99a1.5 1.5 0 1 1 0 3h-24.99A1.5 1.5 0 0 1 55 75.5z'></path></g></g></svg><span>还没有喜欢过呢</span>"+
            		   "</div>";
            			$("#mylike").html(str);
            	   }
             
            }
        });
    
    
    
    
     $("#Profile-answers").hide();
     $("#Profile-posts").show();
     $("#Profile-activities").hide();
     $("#text1").removeClass("is-active");
     $("#text2").removeClass("is-active");
     $("#text3").addClass("is-active");
}
</script>
<script>
$(document).ready(function(){ 
    var id=$("#hiddenid").val();
     $.ajax({
         
            type: "POST",
            cache: false,
            url: "../UserMessageUpdateController",
            data:{uid:id},
            dataType: "json",
         
            success: function (data) {
                  
            	   if (data.code == 1) {
            		   
            		   $("#editMessage").show();
            		  
            	   }else{
            		   $("#editMessage").hide();
            	   }
             
            }
        });
});
$(document).ready(function(){ 
    var id=$("#hiddenid").val();
     $.ajax({
         
            type: "POST",
            cache: false,
            url: "../UserCountController",
            data:{UserId:id},
            dataType: "json",
         
            success: function (data) {
                  
            	   if (data.code == 1) {
            		   
            		   $("#count").html(data.data);
            		  
            	   }else{
            		   window.location.href="../common/error.jsp"; 
            	   }
             
            }
        });
    
});
$(document).ready(function(){ 
    var id=$("#hiddenid").val();
     $.ajax({
         
            type: "POST",
            cache: false,
            url: "../userMessages",
            data:{UserId:id},
            dataType: "json",
         
            success: function (data) {
                  
            	   if (data.code == 1) {
            		   
            		   $("#nickname").html(data.data[1]);
            		   $("#who").html(data.data[1]);
            		   $("#who1").html(data.data[1]);
            		   $("#who2").html(data.data[1]);
            		   $("#who3").html(data.data[1]);
            		   $("#email").html("["+data.data[0]+"]");
            		   $("#desc").html(data.data[3]);
            		   $("#sex").html(data.data[2]+"岁");
            		   $("#myphoto").attr('src',data.data[4]); 
            		   $("#photoa").attr('href',data.data[4]); 
            		   $("#photoa").attr('title',data.data[1]); 
            	   }else{
            		   window.location.href="../common/error.jsp"; 
            	   }
             
            }
        });
});
$(document).ready(function(){ 
    var id=$("#hiddenid").val();
    $.ajax({
         
        type: "POST",
        cache: false,
        url: "../SelectCommentController",
        data:{UserId:id},
        dataType: "json",
     
        success: function (data) {
              
        	   if (data.code == 1) {
        		  $("#commentcount").html(data.data.length);}}
        	   });
    });
    
$(document).ready(function(){ 
    var id=$("#hiddenid").val();
    $.ajax({
         
        type: "POST",
        cache: false,
        url: "../UserLikeController",
        data:{uid:id},
        dataType: "json",
     
        success: function (data) {
              
        	   if (data.code == 1) {
        		   $("#mylikecount").html(data.data.length);}}
        	   });
    });
</script>
<body class="Entry-body" data-reactid="17">
<jsp:include page="../common/header.jsp"></jsp:include>
<input type="hidden" id="hiddenid" name="hiddenid" value=<%=id%>>
    <br><br><br>
    <div id="root" data-reactid="18">
        <div data-reactroot=""
            data-zop-usertoken="{&quot;urlToken&quot;:&quot;mu-mu-gao-20&quot;}">
            <!-- react-empty: 2 -->
            <div class="LoadingBar"></div>
            <!-- react-empty: 4 -->
        
            <!-- react-empty: 46 -->
            <main role="main" class="App-main">
            <div>
                <!-- react-empty: 4282 -->
                <div itemprop="people" itemtype="http://schema.org/Person"
                    itemscope="">
                    <meta itemprop="url"
                        content="https://www.zhihu.com/people/mu-mu-gao-20">
                    <meta itemprop="gender" content="Male">
                    <meta itemprop="image"
                        content="https://pic2.zhimg.com/e343e185171d23a3cf7aebe977957145_is.jpg">
                    <meta itemprop="zhihu:voteupCount" content="0">
                    <meta itemprop="zhihu:thankedCount" content="0">
                    <meta itemprop="zhihu:followerCount" content="0">
                    <meta itemprop="zhihu:answerCount" content="0">
                    <meta itemprop="zhihu:articlesCount" content="0">
                    <!-- react-empty: 4449 -->
                    <div id="ProfileHeader" class="ProfileHeader"
                        data-za-module="Unknown"
                        data-za-module-info="{&quot;card&quot;:{&quot;content&quot;:{&quot;type&quot;:&quot;User&quot;,&quot;token&quot;:&quot;mu-mu-gao-20&quot;}}}">
                        <div class="Card">
                            <div class="ProfileHeader-userCover">
                                <div class="UserCoverEditor">
                                    <div class="UserCoverGuide">
                                        <div class="UserCoverGuide-inner">
                                            <div class="UserCoverGuide-buttonContainer">
                                                
                                            </div>
                                            
                                        </div>
                                        <ul class="UserCoverGuide-items" style="margin-top:-100px">
                                            <li class="UserCoverGuide-item"
                                                style="background-image: url(&quot;https://static.zhihu.com/heifetz/guide-cover-1.4423ce0fcec2132f058c.jpg&quot;);"></li>
                                            <li class="UserCoverGuide-item"
                                                style="background-image: url(&quot;https://static.zhihu.com/heifetz/guide-cover-2.4c5018526e42872a056b.jpg&quot;);"></li>
                                            <li class="UserCoverGuide-item"
                                                style="background-image: url(&quot;https://static.zhihu.com/heifetz/guide-cover-3.d59ac68c89726deb3a26.jpg&quot;);"></li>
                                            <li class="UserCoverGuide-item"
                                                style="background-image: url(&quot;https://static.zhihu.com/heifetz/guide-cover-4.5518ba1a1aeb013b4c5c.jpg&quot;);"></li>
                                            <li class="UserCoverGuide-item"
                                                style="background-image: url(&quot;https://static.zhihu.com/heifetz/guide-cover-5.2b2adaebc37bf48bacae.jpg&quot;);"></li>
                                        </ul>
                                    </div>
                                    <div class="UserCover UserCover--colorBlock" style="background-color:#139667;opacity:0.6">
                                        <!-- react-text: 4496 -->
                                        <!-- /react-text -->
                                        <img src="../images/person1.png" style="width:600px;">
                                    </div>
                                    <input type="file" accept="image/png,image/jpeg"
                                        style="display: none;">
                                </div>
                            </div>
                            <div class="ProfileHeader-wrapper">
                                <div class="ProfileHeader-main">
                                    <div class="UserAvatarEditor ProfileHeader-avatar"
                                        style="top: -25px;">
                                        <div class="UserAvatar">
                                         <a class="preview" href="" title="" id="photoa" style="width:50px">
                                            <img class="Avatar Avatar--large UserAvatar-inner"
                                                width="160" height="160"
                                                src="" id="myphoto" name="myphoto"></a>
                                        </div>
                                        <div class="Mask UserAvatarEditor-mask Mask-hidden">
                                            <div
                                                class="Mask-mask Mask-mask--black UserAvatarEditor-maskInner"></div>
                                        
                                        </div>
                                        <input type="file" accept="image/png,image/jpeg"
                                            style="display: none;">
                                    </div>
                                    <div class="ProfileHeader-content">
                                        <div class="ProfileHeader-contentHead">
                                            <h1 class="ProfileHeader-title">
                                                <span class="ProfileHeader-name" id="nickname" name="nickname" ></span>
                                                <span
                                                    class="RichText ProfileHeader-headline" id="email" name="email"></span>
                                                <!-- react-empty: 4516 -->
                                            </h1>
                                        </div>
                                        <div class="ProfileHeader-contentBody" style="height: 52px;">
                                            <span><div class="ProfileHeader-info">
                                                    <div class="ProfileHeader-infoItem">
                                                        <div class="ProfileHeader-iconWrapper">
                                                            <svg viewBox="0 0 20 18" class="Icon Icon--company"
                                                                width="13" height="16" aria-hidden="true"
                                                                style="height: 16px; width: 13px;">
                                                                <title></title><g>
                                                                <path
                                                                    d="M15 3.998v-2C14.86.89 13.98 0 13 0H7C5.822 0 5.016.89 5 2v2l-3.02-.002c-1.098 0-1.97.89-1.97 2L0 16c0 1.11.882 2 1.98 2h16.033c1.1 0 1.98-.89 1.987-2V6c-.007-1.113-.884-2.002-1.982-2.002H15zM7 4V2.5s-.004-.5.5-.5h5c.5 0 .5.5.5.5V4H7z"></path></g></svg>
                                                        </div>
                                                        <!-- react-text: 4525 -->
                                                        <span id="desc" name="desc"></span>
                                                        <!-- /react-text -->
                                                    </div>
                                                    <div class="ProfileHeader-infoItem">
                                                        <div class="ProfileHeader-iconWrapper">
                                                        <img src="../images/ages.png">
                                                        </div>
                                                        <span id="sex" name="sex"></span>
                                                    </div>
                                                </div></span>
                                        </div>
                                        <div class="ProfileHeader-contentFooter">
                                        
                                            <div class="ProfileButtonGroup ProfileHeader-buttons" style="color:#139667">
                                                <a href="/ZHIHU/pages/person.jsp?id=<%=id%>" id="editMessage"><button class="Button Button--blue"  type="button">
                                                    <!-- react-text: 4539 -->
                                                    编辑
                                                    <!-- /react-text -->
                                                    <!-- react-text: 4540 -->
                                                    个人
                                                    <!-- /react-text -->
                                                    <!-- react-text: 4541 -->
                                                    资料
                                                    <!-- /react-text -->
                                                </button></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
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
                    
                    <div class="Profile-main">
                        <div class="Profile-mainColumn">
                            <div class="Card ProfileMain" id="ProfileMain">
                                <div class="ProfileMain-header">
                                    <ul role="tablist" class="Tabs ProfileMain-tabs">
                                        <li id="dongtai" onclick="dongtai()" role="tab" class="Tabs-item Tabs-item--noMeta"
                                            aria-controls="Profile-activities"><span id="text1"
                                            class="Tabs-link is-active"
                                            >动态</span>&nbsp;<span class="Tabs-meta" id="dongtainum"></span></li>
                                        <li id="huida" onclick="huida()" role="tab" class="Tabs-item"
                                            aria-controls="Profile-answers"><span class="Tabs-link" id="text2"
                                            >
                                                <!-- react-text: 4372 -->回答<!-- /react-text -->
                                                <span class="Tabs-meta" id="commentcount"></span>
                                        </span></li>
                                        
                                        <li id="fenxiang" onclick="fengxiang()" role="tab" class="Tabs-item"
                                            aria-controls="Profile-collections"><span class="Tabs-link" id="text3"
                                            >
                                                <!-- react-text: 4384 -->我喜欢的<!-- /react-text -->
                                                <span class="Tabs-meta" id="mylikecount"></span>
                                        </span></li>
                                
                                    </ul>
                                </div>
                                <div>
                                    <div>
                                        <div class="Sticky"></div>
                                    </div>
                                </div>
                                
                        
<!-- 	回答		 ---------------------------------------------------------> 					
    <div class="List Profile-answers" id="Profile-answers" data-zop-feedlistfather="1" style="display:none">
<div class="List-header"><h4 class="List-headerText">
<span><!-- react-text: 1614 --><span id="who3" style="color:#139667;"name="who3"></span><!-- /react-text --><!-- react-text: 1615 -->&nbsp;的回答<!-- /react-text --></span>
</h4>
<div class="List-headerOptions"><div class="Popover">
<title></title><g><path d="M4 11.183L1.284 8.218c-.293-.29-.77-.29-1.064 0-.293.29-.293.76 0 1.052l3.25 3.512c.292.29.768.29 1.062 0L7.78 9.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.064 0L4 11.182zM4 1.818L1.284 4.782c-.293.29-.77.29-1.064 0-.293-.29-.293-.76 0-1.052L3.47.218c.292-.29.768-.29 1.062 0L7.78 3.73c.293.29.293.76 0 1.052-.295.29-.77.29-1.064 0L4 1.82z"></path></g></svg></button><!-- react-empty: 1623 --></div></div></div>
<div id="answerList"></div>
</div>
<!-- 	回答		 ---------------------------------------------------------> 
    
<!-- 	分享 ------------------------------------------------------------------>
    
    <div class="List" id="Profile-posts" style="display:none">
<div class="List-header">
<h4 class="List-headerText">
<span><!-- react-text: 353 --><span id="who2" style="color:#139667;"name="who2"></span><!-- /react-text --><!-- react-text: 354 -->&nbsp;的点赞<!-- /react-text --></span></h4>
<div class="List-headerOptions" ></div></div>
<div id="mylike"></div>
</div></div>
    
<!-- 	分享 ------------------------------------------------------------------>	
    
    
    
    
    
    
    
    
                                
                                
                                <div class="List ProfileActivities" id="Profile-activities"
                                    data-zop-feedlistfather="1" style="display:block">
                                    <div class="List-header">
                                        <h4 class="List-headerText">
                                            <span>
                                            <span id="who" style="color:#139667;"name="who"></span>
                                                
                                                <!-- react-text: 4547 -->的动态<!-- /react-text -->
                                            </span>
                                        </h4>
                                        <div class="List-headerOptions"></div>
                                    </div><div id="listTopic" class=''></div>
                                    
                    
                                    
                                    
                                    
                                    
                                    
                                        
                                    
                        
                                    
                                    
                                    
                                    
                                </div>
                            </div>
                        </div>
                        <div class="Profile-sideColumn" style="margin-top:-700px;margin-left:970px" data-za-module="RightSideBar">
                            <!-- react-empty: 4420 -->
                        
                            <div class="Profile-footerOperations">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span id="who1" style="color:#139667;" name="who1"></span>
                                
                                的个人主页被浏览
                                <!-- /react-text -->
                                <!-- react-text: 4446 -->
                                <span id="count" name="count"></span>
                                <!-- /react-text -->
                                <!-- react-text: 4447 -->
                                次
                                <!-- /react-text -->
                            </div>
                            <footer class="Footer">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a class="Footer-item" target="_blank"
                                    href="contact.jsp">联系我们</a><span> ©
                                    2017 知乎MINI</span>
                            </footer>
                        </div>
                    </div>
                </div>
            </div>
            </main>
            <!-- react-empty: 703 -->
            <!-- react-empty: 704 -->
            <!-- react-empty: 705 -->
            <div class="CornerButtons">
                <div class="CornerAnimayedFlex">
                    <button class="Button CornerButton Button--plain"
                        data-tooltip="建议反馈" data-tooltip-position="left" aria-label="建议反馈"
                        type="button">
                        <svg width="18" height="16" viewBox="0 0 18 16"
                            xmlns="http://www.w3.org/2000/svg" class="Icon Icon--feedback"
                            aria-hidden="true" style="height: 16px; width: 18px;">
                            <title>建议反馈</title><g>
                            <path
                                d="M1.01 2.99L3 1s1-1 2-1h8c1 0 2 1 2 1l2 2s1 1 1 2v9s0 2-2.002 2H2c-2 0-2-2-2-2V5c0-1 1.01-2.01 1.01-2.01zM4.5 1.5h9L16 4H2l2.5-2.5zm2 5.5h5s.5 0 .5.5-.5.5-.5.5h-5S6 8 6 7.5s.5-.5.5-.5z"
                                fill-rule="evenodd"></path></g></svg>
                    </button>
                </div>
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
            </div>
        </div>
    </div>
    <script src="../js/person.js"
        data-reactid="20"></script>
    
    <span><div></div></span>
  <script type="text/javascript" src="../js/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="../js/jquery.imagePreview.1.0.js"></script>
<script type="text/javascript">

$(document).ready(function(){ 
	$("#photoa").preview();	  
});
</script>  
</body>
</html>