<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebAutomaticCheckIn.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>WebAutomaticCheckIn</title>
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/layui/layui.all.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align: center">自动签到系统</h1>
        <div class="site-text" style="margin: 5%; display: none" id="wuliuedit" target="test123">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-block">
                    <input type="text" id="form_userName" name="delivery_id" lay-verify="title" autocomplete="off" placeholder="用户名" class="layui-input" value="张三" />
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码</label>
                <div class="layui-input-block">
                    <input type="password" id="form_userPwd" name="delivery_id" lay-verify="title" autocomplete="off" placeholder="密码" class="layui-input" value="111111" />
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        var intsd = true;
        var timer = window.setInterval(function () {
            if (intsd) {
                console.log("自动签到定时任务。" + "<%=CheckinTip() %>");
                var vbool ="<%=CheckinTip() %>"
                if (vbool != "False") {
                    wuliu();//要执行的方法
                }

            } else {
                //根据返回的ID可以停止定时
                layer.msg('签到成功', {
                    icon: 6,
                    time: 2000
                }, function () {
                    window.location.href = '/MainIndex.aspx?Name=' + $.trim($('#form_userName').val());
                });
                clearInterval(timer);
            }

        }, 1000 * 5);




        (function () {

            //wuliu();

        })();

        function wuliu() {
            intsd = false;
            //页面层
            layer.open({
                type: 1 //Page层类型
                , skin: 'layui-layer-molv'
                , area: ['220px', '270px']
                , title: ['自动签到板块', 'font-size:18px']
                //, btn: ['确定', '取消']
                , shadeClose: false
                , shade: 0.5 //遮罩透明度
                , maxmin: false //允许全屏最小化
                , content: $("#wuliuedit")
                , success: function () {
                }
                , yes: function () {
                   

                }
            });
        }


    </script>
</body>
</html>
