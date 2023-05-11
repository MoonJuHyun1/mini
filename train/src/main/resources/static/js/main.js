// 현재 시간을 표시하는 함수
function setDateTime() {
    // 현재 시간을 가져옴
    let now = new Date();

    // 날짜 input 요소에 현재 날짜를 설정
    let date = document.getElementById("date");
    date.value = now.toISOString().substr(0, 10);

    // 시간 input 요소에 현재 시간을 설정
    let time = document.getElementById("time");
    time.value = now.toTimeString().substr(0, 5);

    // 7일 후의 날짜를 계산하여 max 속성값으로 설정
    let maxDate = new Date();
    maxDate.setDate(now.getDate() + 7);
    let maxDateString = maxDate.toISOString().substr(0, 10);
    date.setAttribute("max", maxDateString);

    // 이전 날짜를 선택하지 못하도록 min 속성값으로 설정
    let minDateString = now.toISOString().substr(0, 10);
    date.setAttribute("min", minDateString);
}

// 페이지가 로딩될 때마다 현재 시간을 표시하는 함수 실행
window.onload = function () {
    setDateTime();
};

function validateForm() {
    const date = document.getElementById("date").value;
    const time = document.getElementById("time").value;
    const departure = document.getElementById("departure").value;
    const arrival = document.getElementById("arrival").value;
    const train = document.getElementById("train").value;

    if (!date || !time || !departure || !arrival || !train) {
        alert("모든 필수값을 입력하세요.");
        return false;
    }
    return true;
}
 