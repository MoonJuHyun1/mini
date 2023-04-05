$("select[name=inputTransportType]").on("change",function(){
    var $addr = $(this).closest(".form").find("input[name=inputDate]");
    if($(this).val() == "etc"){
        $addr.val('');
        $addr.prop("readonly",false);
    }else {
        $addr.val($(this).val());
        $addr.prop("readonly",true);
    }
});


function sve()
{
    var fm = document.form;
    var route1 = document.getElementById("change-route1").Value;
    console.log(route1)
    fm.action = 'Train_select.html';
    fm.submit();
}

