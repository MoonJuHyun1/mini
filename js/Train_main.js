
function sve()
{
    // var fm = document.form;
    let fm = document.getElementById("from");
    let year1 = document.getElementById("year");
    let year = year1.options[year1.selectedIndex].value;
    console.log(year)
    let month1 = document.getElementById("month");
    let month = month1.options[month1.selectedIndex].value;
    console.log(month)
    let day1 = document.getElementById("day");
    let day = day1.options[day1.selectedIndex].value;
    console.log(day)
    let inputHour1 = document.getElementById("inputHour");
    let inputHour = inputHour1.options[inputHour1.selectedIndex].value;
    console.log(inputHour)
    let inputMinute1 = document.getElementById("inputMinute");
    let inputMinute = inputMinute1.options[inputMinute1.selectedIndex].value;
    console.log(inputMinute)

    let route00 = document.getElementById("change-route");
    let route = route00.options[route00.selectedIndex].text;
    console.log(route)

    let route11 = document.getElementById("change-route1");
    console.log(route11)
    let route1 = route11.options[route11.selectedIndex].value;
    console.log(route1)


    let route22 = document.getElementById("change-route2");
    console.log(route22)
    let route2 = route22.options[route22.selectedIndex].value;
    console.log(route2)

    fm.action = 'Train_select.html';
    fm.submit();
}

