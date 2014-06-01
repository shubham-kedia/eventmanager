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
      if (data.stat!="passed" && data.stat!="failed") {
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
    }else if(data.stat=="passed"){
      $('.modal-body').children('p').html("You Can't Attend or Unattend this event as it is already Passed");
      $('#mymodal').modal('show')
    }
    else{
      $('.modal-body').children('p').html("Something Went Wrong..!! Please Try Again");
      $('#mymodal').modal('show')
    }
    }// end of success
  });
  return false;
  }
});