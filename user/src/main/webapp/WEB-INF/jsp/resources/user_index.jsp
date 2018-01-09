<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/11
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>门户管理系统</title>
    <jsp:include page="/res/inc/easyui.jsp"/>
    <script>
        $(function () {
            /**
             * 处理面板
             *
             */
            $('#user_accordion').accordion({
                animate:false
            });

            $('#user_tree').tree({
                onClick: function (node) {
                    console.log(node)

                    if (${user==null}) {
                        $.messager.confirm('提示','请登陆后操作,您确定登录吗？',function(r){
                            if (r){
                                window.location.href="<%=request.getContextPath()%>/user/v_login"
                            }
                        });
                    } else {
                        console.log(node.url)
                        if($("#user_tabs").tabs("exists",node.text)){

                            $("#user_tabs").tabs("select",node.text)
                        }else{
                            $('#user_tabs').tabs('add',{
                                title:node.text,
                                content:'<iframe src='+node.url+' style="width:100%;height:100%" ></iframe>',
                                closable:true,
                                tools:[{
                                    iconCls:'icon-mini-refresh',
                                    handler:function(){
                                        alert('refresh');
                                    }
                                }]
                            });
                        }

                    }
                }


            });

            /**
             * 栏目树
             */
            $('#channel_tree').tree({
                onClick: function (node) {
                    console.log(node)

                    if (${user==null}) {
                        $.messager.confirm('提示','请登陆后操作,您确定登录吗？',function(r){
                            if (r){
                                window.location.href="<%=request.getContextPath()%>/user/v_login"
                            }
                        });
                    } else {
                        console.log(node.url)
                        if($("#user_tabs").tabs("exists",node.text)){

                            $("#user_tabs").tabs("select",node.text)
                        }else{
                            $('#user_tabs').tabs('add',{
                                title:node.text,
                                content:'<iframe src='+node.url+' style="width:100%;height:100%" ></iframe>',
                                closable:true,
                                tools:[{
                                    iconCls:'icon-mini-refresh',
                                    handler:function(){
                                        alert('refresh');
                                    }
                                }]
                            });
                        }

                    }
                }


            });


            /**
             * 用户管理
             */
            $('#user_tree').tree({
                onClick: function (node) {
                    console.log(node)

                    if (${user==null}) {
                        $.messager.confirm('提示','请登陆后操作,您确定登录吗？',function(r){
                            if (r){
                                window.location.href="<%=request.getContextPath()%>/user/v_login"
                            }
                        });
                    } else {
                        console.log(node.url)
                        if($("#user_tabs").tabs("exists",node.text)){

                            $("#user_tabs").tabs("select",node.text)
                        }else{
                            $('#user_tabs').tabs('add',{
                                title:node.text,
                                content:'<iframe src='+node.url+' style="width:100%;height:100%" ></iframe>',
                                closable:true,
                                tools:[{
                                    iconCls:'icon-mini-refresh',
                                    handler:function(){
                                        alert('refresh');
                                    }
                                }]
                            });
                        }

                    }
                }
            });


            /**
             * 友情链接
             */
            $('#liks_tree').tree({
                onClick: function (node) {
                    console.log(node)

                    if (${user==null}) {
                        $.messager.confirm('提示','请登陆后操作,您确定登录吗？',function(r){
                            if (r){
                                window.location.href="<%=request.getContextPath()%>/user/v_login"
                            }
                        });
                    } else {
                        console.log(node.url)
                        if($("#user_tabs").tabs("exists",node.text)){

                            $("#user_tabs").tabs("select",node.text)
                        }else{
                            $('#user_tabs').tabs('add',{
                                title:node.text,
                                content:'<iframe src='+node.url+' style="width:100%;height:100%" ></iframe>',
                                closable:true,
                                tools:[{
                                    iconCls:'icon-mini-refresh',
                                    handler:function(){
                                        alert('refresh');
                                    }
                                }]
                            });
                        }

                    }
                }
            });



            /**
             * 友情链接
             */
            $('#user_tree4').tree({
                onClick: function (node) {
                    console.log(node)

                    if (${user==null}) {
                        $.messager.confirm('提示','请登陆后操作,您确定登录吗？',function(r){
                            if (r){
                                window.location.href="<%=request.getContextPath()%>/user/v_login"
                            }
                        });
                    } else {
                        console.log(node.url)
                        if($("#user_tabs").tabs("exists",node.text)){

                            $("#user_tabs").tabs("select",node.text)
                        }else{
                            $('#user_tabs').tabs('add',{
                                title:node.text,
                                content:'<iframe src='+node.url+' frameBorder="0" border="0" scrolling="no" style="width: 100%; height:100%;" ></iframe>',
                                closable:true,
                                tools:[{
                                    iconCls:'icon-mini-refresh',
                                    handler:function(){
                                        alert('refresh');
                                    }
                                }]
                            });
                        }

                    }
                }
            });

            /**
             * 数据中心
             */
            $('#user_tree5').tree({
                onClick: function (node) {
                    console.log(node)

                    if (${user==null}) {
                        $.messager.confirm('提示','请登陆后操作,您确定登录吗？',function(r){
                            if (r){
                                window.location.href="<%=request.getContextPath()%>/user/v_login"
                            }
                        });
                    } else {
                        console.log(node.url)
                        if($("#user_tabs").tabs("exists",node.text)){

                            $("#user_tabs").tabs("select",node.text)
                        }else{
                            $('#user_tabs').tabs('add',{
                                title:node.text,
                                content:'<iframe src='+node.url+' frameBorder="0" border="0" scrolling="no" style="width: 100%; height:100%;" ></iframe>',
                                closable:true,
                                tools:[{
                                    iconCls:'icon-mini-refresh',
                                    handler:function(){
                                        alert('refresh');
                                    }
                                }]
                            });
                        }

                    }
                }
            });



        })
    </script>
<body class="easyui-layout">
<div data-options="region:'north'" style="padding:0px;background:#eee; background-image: url('${pageContext.request.contextPath}/assets/img/backgrounds/11.jpg');background-repeat: no-repeat;background-attachment: fixed;background-size: 100% 100%">
    <div id="other_msg">
        <div class="fl">

            <script type='text/javascript'>var now=new Date();</script>
            <script language=javascript>
                var lunarinfo=new Array(0x04bd8,0x04ae0,0x0a570,0x054d5,0x0d260,0x0d950,0x16554,0x056a0,0x09ad0,0x055d2,
                    0x04ae0,0x0a5b6,0x0a4d0,0x0d250,0x1d255,0x0b540,0x0d6a0,0x0ada2,0x095b0,0x14977,
                    0x04970,0x0a4b0,0x0b4b5,0x06a50,0x06d40,0x1ab54,0x02b60,0x09570,0x052f2,0x04970,
                    0x06566,0x0d4a0,0x0ea50,0x06e95,0x05ad0,0x02b60,0x186e3,0x092e0,0x1c8d7,0x0c950,
                    0x0d4a0,0x1d8a6,0x0b550,0x056a0,0x1a5b4,0x025d0,0x092d0,0x0d2b2,0x0a950,0x0b557,
                    0x06ca0,0x0b550,0x15355,0x04da0,0x0a5d0,0x14573,0x052d0,0x0a9a8,0x0e950,0x06aa0,
                    0x0aea6,0x0ab50,0x04b60,0x0aae4,0x0a570,0x05260,0x0f263,0x0d950,0x05b57,0x056a0,
                    0x096d0,0x04dd5,0x04ad0,0x0a4d0,0x0d4d4,0x0d250,0x0d558,0x0b540,0x0b5a0,0x195a6,
                    0x095b0,0x049b0,0x0a974,0x0a4b0,0x0b27a,0x06a50,0x06d40,0x0af46,0x0ab60,0x09570,
                    0x04af5,0x04970,0x064b0,0x074a3,0x0ea50,0x06b58,0x055c0,0x0ab60,0x096d5,0x092e0,
                    0x0c960,0x0d954,0x0d4a0,0x0da50,0x07552,0x056a0,0x0abb7,0x025d0,0x092d0,0x0cab5,
                    0x0a950,0x0b4a0,0x0baa4,0x0ad50,0x055d9,0x04ba0,0x0a5b0,0x15176,0x052b0,0x0a930,
                    0x07954,0x06aa0,0x0ad50,0x05b52,0x04b60,0x0a6e6,0x0a4e0,0x0d260,0x0ea65,0x0d530,
                    0x05aa0,0x076a3,0x096d0,0x04bd7,0x04ad0,0x0a4d0,0x1d0b6,0x0d250,0x0d520,0x0dd45,
                    0x0b5a0,0x056d0,0x055b2,0x049b0,0x0a577,0x0a4b0,0x0aa50,0x1b255,0x06d20,0x0ada0);
                //==== 传回农历 y年的总天数
                function lyeardays(y) {
                    var i, sum = 348
                    for(i=0x8000; i>0x8; i>>=1) sum += (lunarinfo[y-1900] & i)? 1: 0
                    return(sum+leapdays(y))
                }
                //==== 传回农历 y年闰月的天数
                function leapdays(y) {
                    if(leapmonth(y))  return((lunarinfo[y-1900] & 0x10000)? 30: 29)
                    else return(0)
                }
                //==== 传回农历 y年闰哪个月 1-12 , 没闰传回 0
                function leapmonth(y) { return(lunarinfo[y-1900] & 0xf)}
                //====================================== 传回农历 y年m月的总天数
                function monthdays(y,m) { return( (lunarinfo[y-1900] & (0x10000>>m))? 30: 29 )}
                //==== 算出农历, 传入日期物件, 传回农历日期物件
                //     该物件属性有 .year .month .day .isleap .yearcyl .daycyl .moncyl
                function lunar(objdate) {
                    var i, leap=0, temp=0;
                    var basedate = new Date(1900,0,31);
                    var offset   = (objdate - basedate)/86400000;
                    var day='';
                    var myweekday='';
                    mydate=new Date();
                    myweekday=mydate.getDay();
                    if(myweekday == 0)
                        weekday=' 星期日 ';
                    else if(myweekday == 1)
                        weekday=' 星期一 ';
                    else if(myweekday == 2)
                        weekday=' 星期二 ';
                    else if(myweekday == 3)
                        weekday=' 星期三 ';
                    else if(myweekday == 4)
                        weekday=' 星期四 ';
                    else if(myweekday == 5)
                        weekday=' 星期五 ';
                    else if(myweekday == 6)
                        weekday=' 星期六 ';
                    this.daycyl = offset + 40;
                    this.moncyl = 14;
                    for(i=1900; i<2050 && offset>0; i++) {
                        temp = lyeardays(i);
                        offset -= temp;
                        this.moncyl += 12;
                    }
                    if(offset<0) {
                        offset += temp;
                        i--;
                        this.moncyl -= 12;
                    }
                    this.year = i;
                    this.yearcyl = i-1864;
                    leap = leapmonth(i); //闰哪个月
                    this.isleap = false
                    for(i=1; i<13 && offset>0; i++) {
                        //闰月
                        if(leap>0 && i==(leap+1) && this.isleap==false)
                        { --i; this.isleap = true; temp = leapdays(this.year); }
                        else
                        { temp = monthdays(this.year, i); }
                        //解除闰月
                        if(this.isleap==true && i==(leap+1)) this.isleap = false
                        offset -= temp
                        if(this.isleap == false) this.moncyl ++
                    }
                    if(offset==0 && leap>0 && i==leap+1)
                        if(this.isleap)
                        { this.isleap = false; }
                        else
                        { this.isleap = true; --i; --this.moncyl;}
                    if(offset<0){ offset += temp; --i; --this.moncyl; }
                    this.month = i
                    this.day = offset + 1
                }
                function cday(m,d){
                    var nstr1 = new Array('日','一','二','三','四','五','六','七','八','九','十');
                    var nstr2 = new Array('初','十','廿','卅','　');
                    var s;
                    if (m>10){s = '十'+nstr1[m-10]} else {s = nstr1[m]} s += '月'
                    if (s=='十二月') s = '腊月';
                    if (s=='一月') s = '正月';
                    switch (d) {
                        case 10:s += '初十'; break;
                        case 20:s += '二十'; break;
                        case 30:s += '三十'; break;
                        default:s += nstr2[Math.floor(d/10)]; s += nstr1[d%10];
                    }
                    return(s);
                }
                function solarday2(){
                    var sdobj = new Date(now.getFullYear(),now.getMonth(),now.getDate());
                    var ldobj = new lunar(sdobj);
                    var cl = '';
                    //农历bb'+(cld[d].isleap?'闰 ':' ')+cld[d].lmonth+' 月 '+cld[d].lday+' 日
                    var tt = cday(ldobj.month,ldobj.day);
                    document.write('今天是：'+now.getFullYear()+'年'+(now.getMonth()+1)+'月'+now.getDate()+'日'+ weekday + '  农历'+tt+'');
                }
                solarday2();
                function keepSession() {
                    $.ajax("/session.servlet");
                }
                setInterval("keepSession()",600000);
            </script>
        </div>
        <div align="right">
            <c:if test="${user==null}">
                <h2> 还没登陆！<a href="${pageContext.request.contextPath}/user/v_login">[去登陆]</a></h2>
            </c:if>
            <c:if test="${user!=null}">
            <h2>欢迎您:${user.username} <a href="${pageContext.request.contextPath}/user/v_zhuxiao">[注销]</a>
                </c:if>
        </div>
    </div>

</div>
<div data-options="region:'west',title:'功能菜单',split:true" style="width:180px;">
    <div id="user_accordion" class="easyui-accordion" fit='true' style="width:500px;height:200px;">



        <div title="管理中心"  style="overflow:auto;padding:20px; ">
            <%--  <p> <a  href="${pageContext.request.contextPath}/user/shouye">个人资料</a></p>
                 <p>  <a  href="${pageContext.request.contextPath}/user/shouye">修改密码</a></p>--%>
            <ul id="user_tree" class="easyui-tree">
                <li data-options="url:'${pageContext.request.contextPath}/user/v_showUser',iconCls:'icon-user_gray'">
                    <span>个人信息</span>
                </li>
<%--
                <li data-options="url:'${pageContext.request.contextPath}/user/v_showUser',iconCls:'icon-user_gray'">
                    <span>个人信息</span>
                </li>
--%>
                <li data-options="url:'${pageContext.request.contextPath}/user/v_update2',iconCls:'icon-user_key'">
                    <span>修改密码</span>
                </li>
            </ul>


        </div>
        <div title="文档中心" style="padding:20px;">
            <ul id="channel_tree" class="easyui-tree">
                <li data-options="url:'${pageContext.request.contextPath}/channel/v_list',iconCls:'icon-chart_bar'">
                    <span>栏目管理</span>
                </li>
            </ul>
        </div>
        <div title="功能组件">
            <ul id="liks_tree" class="easyui-tree">
                <li data-options="url:'${pageContext.request.contextPath}/links/v_index',iconCls:'icon-2012081511913'">
                    <span>友情链接</span>
                </li>
                <li data-options="url:'${pageContext.request.contextPath}/comment/v_index',iconCls:'icon-2012081511913'">
                    <span>评论管理</span>
                </li>
                <li data-options="url:'${pageContext.request.contextPath}/advert/v_toList',iconCls:'icon-2012081511913'">
                    <span>广告管理</span>
                </li>

            </ul>
            <%--<p><a>友情链接管理</a></p>
            <p> <a>评论管理</a></p>
            <p> <a>留言管理</a></p>
            <p> <a>广告管理</a></p>
            <p> <a>调查问卷管理</a></p>
            <p><a>板块管理</a></p>--%>
        </div>


        <div title="用户管理">
            <ul id="user_tree4" class="easyui-tree">
                <li data-options="url:'${pageContext.request.contextPath}/user/v_list',iconCls:'icon-user_red'">
                    <span>会员管理</span>
                </li>
            </ul>
            <%--<p><a>会员管理</a></p>
            <p><a>会员组管理</a></p>
            <p><a>管理列表</a></p>
            <p><a>角色管理</a></p>
            <p><a>部门管理</a></p>--%>
        </div>



        <div title="数据中心">
            <ul id="user_tree5" class="easyui-tree">
                <li data-options="url:'${pageContext.request.contextPath}/template/v_index',iconCls:'icon-user_red'">
                    <span>模板管理</span>
                </li>
            </ul>
        </div>

    </div>
</div>
<div data-options="region:'center',title:'信息展示'" style="padding:0px;background: #eee url('${pageContext.request.contextPath}/assets/img/backgrounds/5.jpg') no-repeat fixed;background-size: 100% 100%">

    <%--style="background-image: url('${pageContext.request.contextPath}/assets/img/backgrounds/b6c8598650db91a1d60358be01f95d6d.gif')"--%>
    <div id="user_tabs" class="easyui-tabs" fit="true" >


    </div>
</div>
</body>
</html>