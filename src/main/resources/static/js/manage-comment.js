// 删除博客
function setDelete(id,postId) {
    var flag = confirm("您确认要删除评论吗？");

    if(flag){
        $.post(
            CONTEXT_PATH + "/comment/deleteComment",
            {"id":id,"postId":postId},
            function(data) {
                data = $.parseJSON(data);
                if(data.code == 0) {
                    window.location.reload();
                } else {
                    alert(data.msg);
                }
            }
        );
    }else{

    }
}