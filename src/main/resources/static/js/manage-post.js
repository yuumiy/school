$(function(){

});
// 删除博客
function setDelete(postId) {
    $.post(
        CONTEXT_PATH + "/discuss/delete",
        {"id":postId},
        function(data) {
            data = $.parseJSON(data);
            if(data.code == 0) {
                location.href = CONTEXT_PATH + "/manage/post";
            } else {
                alert(data.msg);
            }
        }
    );
}