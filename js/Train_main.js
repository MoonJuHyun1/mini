
function sve()
{
    var fm = document.form;
    var route1 = document.getElementById("change-route1").Value;
    console.log(route1)
    fm.action = 'Train_select.html';
    fm.submit();
}

