//employee/delete/
$(document).on({
    ajaxStart: function(){
        $("body").addClass("loading"); 
    },
    ajaxStop: function(){ 
        $("body").removeClass("loading"); 
    }
});

$(document).ready(function(){
    $("#addEmpForm").submit(function(event){
      $(".has-error").remove();
      $("#id_eid,#id_ename,#id_email,#id_econtact").removeClass('has-emp-error')
      event.preventDefault();
      $.ajax({
        type: "POST",
        url: $(this).attr('action'),
        data: $(this).serialize(),
        dataType: "json",
        encode: true,
      }).done(function (data) {
          
         if(data.status=='true'){
             window.location.href='/employee/show' 
          }else{
             if(data.message.eid !=undefined && data.message.eid[0]!=''){
               $("#id_eid").addClass('has-emp-error')
               $("#id_eid").after("<p class='has-error'><span>"+data.message.eid[0]+"</span></p>")
             }if(data.message.ename !=undefined && data.message.ename[0]!=''){
               $("#id_ename").addClass('has-emp-error')
               $("#id_ename").after("<p class='has-error'><span>"+data.message.ename[0]+"</span></p>")
             }if(data.message.email !=undefined && data.message.email[0]!=''){
               $("#id_email").addClass('has-emp-error')
               $("#id_email").after("<p class='has-error'><span>"+data.message.email[0]+"</span></p>")
             }if(data.message.econtact !=undefined && data.message.econtact[0]!=''){
               $("#id_econtact").addClass('has-emp-error')
               $("#id_econtact").after("<p class='has-error'><span>"+data.message.econtact[0]+"</span>")
            }

            }  
         
      });
   })
   $(".empDelete").click(function(){
     var message="Do You Want Delete It ?";
     $("#message").html(message)
     alert($(this).attr('data-empID'));
     $("#empid").val($(this).attr('data-empID'))
     $("#popupFooter").removeClass('d-none')
     $('#messagePopUp').modal('show');
   })
   $("#dismiss").click(function(){
    $("#message").html("")
    $('#messagePopUp').modal('hide');
   })
   $("#allow").click(function(){
       
    $("#deleteEmpForm").submit()
    
   })

});