
function sve()
{
    // var fm = document.form;
    var fm = document.getElementById("from");
    var year1 = document.getElementById("year");
    var year = year1.options[year1.selectedIndex].value;
    console.log(year)
    var month1 = document.getElementById("month");
    var month = month1.options[month1.selectedIndex].value;
    console.log(month)
    var day1 = document.getElementById("day");
    var day = day1.options[day1.selectedIndex].value;
    console.log(day)
    var inputHour1 = document.getElementById("inputHour");
    var inputHour = inputHour1.options[inputHour1.selectedIndex].value;
    console.log(inputHour)
    var inputMinute1 = document.getElementById("inputMinute");
    var inputMinute = inputMinute1.options[inputMinute1.selectedIndex].value;
    console.log(inputMinute)

    var route00 = document.getElementById("change-route");
    var route = route00.options[route00.selectedIndex].text;
    console.log(route)

    var route11 = document.getElementById("change-route1");
    console.log(route11)
    var route1 = route11.options[route11.selectedIndex].value;
    console.log(route1)


    var route22 = document.getElementById("change-route2");
    console.log(route22)
    var route2 = route22.options[route22.selectedIndex].value;
    console.log(route2)

    fm.action = 'Train_select.html';
    fm.submit();
}

