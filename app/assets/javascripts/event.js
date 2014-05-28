$(document).on('click','.btn-primary',function(){
  if($(this).hasClass('not-logged')){
    return true
  }else{
  if($(this).hasClass('green-btn')){
    url = '/unattend.json';
  }
  else{
    url = '/attend.json';
  }
  var id= $(this).data('id');
  var that = this;
  $.ajax({
    type: "POST",
    url: url,
    data: {'id': id},
    success: function (data) {
      console.log(data);
      if (data.stat!="passed") {
        if(url=='/unattend.json'){
          if (data.stat=="success") {
            $(that).removeClass('green-btn')
            $(that).addClass('blue-btn')
            $(that).text("Attend");
          }
        }
        else
        { 
          if (data.stat=="success") {
            $(that).removeClass('blue-btn')
            $(that).addClass('green-btn')
            $(that).text('Unattend')
          }
        }
      // end of status passed
    }else{
      $('.modal-body').children('p').html("You Can't Attend or Unattend this event as it is already Passed");
      $('#mymodal').modal('show')
    }
    }// end of success
  });
  return false;
  }
});