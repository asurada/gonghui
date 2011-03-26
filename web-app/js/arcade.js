function bootstrap(nickname) {
    $('#nickname').text(nickname);
    onUpdateStatus();
}

function onSubmitStatusUpdate() {
    var status = $('#status-update-input').val().trim();
    console.log(status);
    if(status.length < 3){
        alert('留言至少两个字。');
    } else {
        $.ajax({
            url: 'status/create',
            method: 'POST',
            data: {
                content: status
            }
        }).error(function(jqXHR, textStatus, errorThrown) {
            alert(textStatus + errorThrown);
        }).success(function() {
            $('#status-update-input').val('');
            onUpdateStatus();
        });
    }

    return false;
}

function onUpdateStatus() {
    $.ajax({
        url: 'status/list',
        method: 'GET',
        data : {
            sort: 'createDate',
            order: 'desc',
            format: 'json'
        }
    }).error(function(){
        alert('error');
    }).success(function(result){
        console.log(result);
        var ul = $('ul#status-list').empty();
        $.each(result, function(i, item){
            var li = $('<li>');
            $('<span>').addClass('status-user')
                       .text("用户ID " + item.user.id)
                       .appendTo(li);
            $('<span>').addClass('status-content')
                       .text(item.content)
                       .appendTo(li);
            $('<span>').addClass('status-date')
                       .text(item.createDate)
                       .appendTo(li);
            li.appendTo(ul);
        })
    });
    return false;
}