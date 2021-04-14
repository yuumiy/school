// 拉黑
function setDelete(btn,userId) {
    if($(btn).hasClass("btn-danger")) {
        //拉黑
        $.post(
            CONTEXT_PATH + "/user/delete",
            {"id": userId},
            function (data) {
                //从服务器返回的json字符串中取出code值
                data = $.parseJSON(data);
                if (data.code == 0) {
                    window.location.reload();
                } else {
                    alert(data.msg);
                }
            }
        );
    }else{
        //取消拉黑
        $.post(
            CONTEXT_PATH + "/user/undelete",
            {"id": userId},
            function (data) {
                //从服务器返回的json字符串中取出code值
                data = $.parseJSON(data);
                if (data.code == 0) {
                    window.location.reload();
                } else {
                    alert(data.msg);
                }
            }
        );
    }
}


// 激活
function setActive(userId) {
        $.post(
            CONTEXT_PATH + "/user/active",
            {"id": userId},
            function (data) {
                //从服务器返回的json字符串中取出code值
                data = $.parseJSON(data);
                if (data.code == 0) {
                    window.location.reload();
                } else {
                    alert(data.msg);
                }
            }
        );
}