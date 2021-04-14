// 删除博客
function setDelete(postId) {
    var flag = confirm("您确认要删除博客吗？");

    if(flag) {
        $.post(
            CONTEXT_PATH + "/discuss/delete",
            {"id": postId},
            function (data) {
                data = $.parseJSON(data);
                if (data.code == 0) {
                    location.href = CONTEXT_PATH + "/manage/post";
                } else {
                    alert(data.msg);
                }
            }
        );
    }else{

    }
}