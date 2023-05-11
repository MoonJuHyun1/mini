// 일자 선택 옵션 생성 함수
function generateDateOptions() {
  const selectDate = document.getElementById("BoardingDate");
  const currentDate = new Date();
  let dateOptions = "";

  for (let i = 0; i < 8; i++) {
    const date = new Date();
    date.setDate(currentDate.getDate() + i);
    const formattedDate = `${date.getMonth() + 1}/${date.getDate()}`;
    const optionValue = `${date.getFullYear()}${(date.getMonth() + 1 < 10 ? '0' : '')}${date.getMonth() + 1}${(date.getDate() < 10 ? '0' : '')}${date.getDate()}`;

    dateOptions += `<option value="${optionValue}">${formattedDate}</option>`;
  }

  selectDate.innerHTML = dateOptions;
}

// 시간 선택 옵션 생성 함수
function generateTimeOptions() {
  const selectHour = document.getElementById("Hour");
  const selectMinute = document.getElementById("Minute");
  let timeOptions = "";

  for (let i = 0; i < 24; i++) {
    const hour = i.toString().padStart(2, '0');
    timeOptions += `<option value="${hour}">${hour}</option>`;
  }

  selectHour.innerHTML = timeOptions;

  timeOptions = "";

  for (let i = 0; i < 60; i += 5) {
    const minute = i.toString().padStart(2, '0');
    timeOptions += `<option value="${minute}">${minute}</option>`;
  }

  selectMinute.innerHTML = timeOptions;
}

window.onload = function() {
  generateDateOptions();
  generateTimeOptions();

};
