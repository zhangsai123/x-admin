<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/26
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.2</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="LayUI/css/font.css">
    <link rel="stylesheet" href="LayUI/css/xadmin.css">
    <script src="LayUI/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="LayUI/js/xadmin.js"></script>
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="x-nav">
            <span class="layui-breadcrumb">
                <a href="">首页</a>
                <a href="">演示</a>
                <a><cite>会员列表</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
    </a>
</div>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <form class="layui-form layui-col-space5">
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" autocomplete="off" placeholder="开始日" name="start" id="start"></div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" autocomplete="off" placeholder="截止日" name="end" id="end"></div>
                        <div class="layui-inline layui-show-xs-block">
                            <input type="text" name="username" placeholder="请输入用户名" autocomplete="off" class="layui-input"></div>
                        <div class="layui-inline layui-show-xs-block">
                            <button class="layui-btn" lay-submit="" lay-filter="sreach">
                                <i class="layui-icon">&#xe615;</i></button>
                        </div>
                    </form>
                </div>
                <div class="layui-card-body ">
                    <table class="layui-table" lay-data="{url:'Json/user.json',page:true,toolbar: '#toolbarDemo',id:'test',defaultToolbar: []}" lay-filter="test">
                        <thead>
                        <tr>
                            <th lay-data="{type:'checkbox'}">ID</th>
                            <th lay-data="{field:'id',align:'center',sort:true,width:80}">ID</th>
                            <th lay-data="{field:'username',align:'center',sort: true,edit:'text',width:120}">用户名</th>
                            <th lay-data="{field:'email',align:'center',edit:'text',minWidth: 150}">邮箱</th>
                            <th lay-data="{field:'sex',align:'center',width:80,}">性别</th>
                            <th lay-data="{field:'city',align:'center',minWidth: 100,edit:'text',}">城市</th>
                            <th lay-data="{field:'experience', align:'center',sort: true, edit: 'text'}">积分</th>
                            <th lay-data="{field:'dw_xinzhi',align:'center',templet: function(d){ return d.dw_xinzhi.titel;}}">学校</th>
                            <th lay-data="{fixed:'right',align:'center', toolbar: '#barDemo', width:150}">操作</th>

                        </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/html" id="toolbarDemo">
    <div class = "layui-btn-container" >
        <button class = "layui-btn layui-btn-sm" lay-event = "getCheckData" > 获取选中行数据 </button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button >
        <button class = "layui-btn layui-btn-sm" lay-event = "isAll" > 验证是否全选</button>
    </div >
</script>
<script type="text/html" id="barDemo">
    <a title="编辑" href="javascript:;" lay-event="update">
        <i class="layui-icon">&#xe642;</i>
    </a>
    <a title="删除" href="javascript:;" lay-event="del">
        <i class="layui-icon">&#xe640;</i>
    </a>
</script>
<script type="text/html" id="switchTpl">
    <!-- 这里的checked的状态只是演示 -->
    <input type = "checkbox" name = "sex" value = "{{d.id}}" lay-skin = "switch" lay-text = "女|男" lay-filter = "sexDemo" {{ d.id == 10003 ? 'checked': ''}} >
</script>
<script>layui.use('laydate',
    function() {
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });

    });</script>
<script>
    layui.use('table',function() {
        var table = layui.table;

        //监听单元格编辑
        table.on('edit(test)',
            function(obj) {
                var value = obj.value //得到修改后的值
                    ,
                    data = obj.data //得到所在行所有键值
                    ,
                    field = obj.field; //得到字段
                layer.msg('[ID: ' + data.id + '] ' + field + ' 字段更改为：' + value);
            });

        //头工具栏事件
        table.on('toolbar(test)',function(obj) {
            var checkStatus = table.checkStatus(obj.config.id);
            switch (obj.event) {
                case 'getCheckData':
                    var data = checkStatus.data;
                    layer.alert(JSON.stringify(data));
                    break;
                case 'getCheckLength':
                    var data = checkStatus.data;
                    layer.msg('选中了：' + data.length + ' 个');
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选': '未全选');
                    break;
            };
        });

        //监听行时间
        table.on('tool(test)', function (obj) {
            console.log(obj)
            switch (obj.event) {
                case 'update':
                    layer.msg('更新了数据');
                    break;
                case 'del':
                    layer.confirm('确认要删除吗？',function(index){
                        layer.msg('删除了数据');
                    });
                    break;
            };
        });
    });
</script>
<script>var _hmt = _hmt || []; (function() {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();</script>

</html>
