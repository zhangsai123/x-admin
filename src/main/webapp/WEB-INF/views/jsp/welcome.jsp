<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/26
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.2</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="LayUI/css/font.css">
    <link rel="stylesheet" href="LayUI/css/xadmin.css">

    <%--  页面Loading弹出层需要使用layer.css  --%>
    <link rel="stylesheet" href="LayUI/lib/layui/css/modules/layer/default/layer.css">
</head>
<body>
<div class="layui-fluid" id="app">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <blockquote class="layui-elem-quote">欢迎管理员：
                        <span class="x-red">test</span>！当前时间:2018-04-25 20:50:53
                    </blockquote>
                </div>
            </div>
        </div>
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header">数据统计</div>
                <div class="layui-card-body ">
                    <ul class="layui-row layui-col-space10 layui-this x-admin-carousel x-admin-backlog">
                        <li class="layui-col-md2 layui-col-xs6">
                            <a href="javascript:;" class="x-admin-backlog-body">
                                <h3>文章数</h3>
                                <p>
                                    <cite>66</cite></p>
                            </a>
                        </li>
                        <li class="layui-col-md2 layui-col-xs6">
                            <a href="javascript:;" class="x-admin-backlog-body">
                                <h3>会员数</h3>
                                <p>
                                    <cite>12</cite></p>
                            </a>
                        </li>
                        <li class="layui-col-md2 layui-col-xs6">
                            <a href="javascript:;" class="x-admin-backlog-body">
                                <h3>回复数</h3>
                                <p>
                                    <cite>99</cite></p>
                            </a>
                        </li>
                        <li class="layui-col-md2 layui-col-xs6">
                            <a href="javascript:;" class="x-admin-backlog-body">
                                <h3>商品数</h3>
                                <p>
                                    <cite>67</cite></p>
                            </a>
                        </li>
                        <li class="layui-col-md2 layui-col-xs6">
                            <a href="javascript:;" class="x-admin-backlog-body">
                                <h3>文章数</h3>
                                <p>
                                    <cite>67</cite></p>
                            </a>
                        </li>
                        <li class="layui-col-md2 layui-col-xs6 ">
                            <a href="javascript:;" class="x-admin-backlog-body">
                                <h3>文章数</h3>
                                <p>
                                    <cite>6766</cite></p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-header">下载
                    <span class="layui-badge layui-bg-cyan layuiadmin-badge">月</span></div>
                <div class="layui-card-body  ">
                    <p class="layuiadmin-big-font">33,555</p>
                    <p>新下载
                        <span class="layuiadmin-span-color">10%
                                    <i class="layui-inline layui-icon layui-icon-face-smile-b"></i></span>
                    </p>
                </div>
            </div>
        </div>
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-header">下载
                    <span class="layui-badge layui-bg-cyan layuiadmin-badge">月</span></div>
                <div class="layui-card-body ">
                    <p class="layuiadmin-big-font">33,555</p>
                    <p>新下载
                        <span class="layuiadmin-span-color">10%
                                    <i class="layui-inline layui-icon layui-icon-face-smile-b"></i></span>
                    </p>
                </div>
            </div>
        </div>
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-header">下载
                    <span class="layui-badge layui-bg-cyan layuiadmin-badge">月</span></div>
                <div class="layui-card-body ">
                    <p class="layuiadmin-big-font">33,555</p>
                    <p>新下载
                        <span class="layuiadmin-span-color">10%
                                    <i class="layui-inline layui-icon layui-icon-face-smile-b"></i></span>
                    </p>
                </div>
            </div>
        </div>
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-header">下载
                    <span class="layui-badge layui-bg-cyan layuiadmin-badge">月</span></div>
                <div class="layui-card-body ">
                    <p class="layuiadmin-big-font">33,555</p>
                    <p>新下载
                        <span class="layuiadmin-span-color">10%
                                    <i class="layui-inline layui-icon layui-icon-face-smile-b"></i></span>
                    </p>
                </div>
            </div>
        </div>

        <template id="sysFiles">
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-header">磁盘信息</div>
                    <div class="layui-card-body ">
                        <table class="layui-table">
                            <tbody>
                            <tr>
                                <th>盘符路径</th>
                                <th>盘符类型</th>
                                <th>文件系统类型</th>
                                <th>总大小</th>
                                <th>已用空间</th>
                                <th>可用空间</th>
                                <th>已用百分比</th>
                            </tr>
                            <tr v-for="(sysFiles,index) in sysFiles">
                                <th>{{sysFiles.dirName}}</th>
                                <th>{{sysFiles.typeName}}</th>
                                <th>{{sysFiles.sysTypeName}}</th>
                                <th>{{sysFiles.total}}</th>
                                <th>{{sysFiles.used}}</th>
                                <th>{{sysFiles.free}}</th>
                                <th>{{sysFiles.usage}}%</th>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </template>


        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header">开发团队</div>
                <div class="layui-card-body ">
                    <table class="layui-table">
                        <tbody>
                        <tr>
                            <th>版权所有</th>
                            <td>张赛
                                <a href="http://www.baidu.com/" target="_blank">访问官网</a></td>
                        </tr>
                        <tr>
                            <th>开发者</th>
                            <td>张赛(958216604@qq.com)</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
<%--        <style id="welcome_style"></style>--%>
    </div>
</div>
</div>

<script src="vue/vue.js" charset="utf-8" type="text/javascript"></script>
<script src="LayUI/jquery/3.2.1/jquery.min.js" charset="utf-8" type="text/javascript"></script>
<script src="LayUI/lib/layui/layui.js" charset="utf-8"></script>
<script src="LayUI/lib/layui/lay/modules/layer.js" charset="utf-8" type="text/javascript"></script>
<script src="LayUI/js/xadmin.js" charset="utf-8" type="text/javascript"></script>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
<script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
<script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script>
    //磁盘信息
    var sysFiles = Vue.extend({
        template:'#sysFiles'
    })

    var app = new Vue({
        el: "#app",
        data: {
            name:"zhangsai",
            sysFiles:[],
        },
        create: function () {
        },
        mounted: function () {
            //页面上的Loading,弹出层
            var loading = layer.load(0, {shade:0.2,time:0});
           //var loading = layer.msg('正在加载', {icon: 16, shade: 0.3, time:0});
           var _this = this;
            $.ajax({
                url:"server/getSystemInfo.action",
                dataType:"JSON",
                type:"GET",
                data:"",
                success:function (data) {
                    _this.sysFiles = data.data.sysFiles;
                    layer.close(loading);
                },
                error:function () {

                }
            })
        },
        components:{
            sysFiles
        },
        methods: {}
    })

</script>

</body>
</html>
