// 변수 초기화
let trainNumber = "";
let departureArrival = "";
let selectedSeat = "";
let seatPrice = 0;

// seat list에 좌석 정보 추가하는 함수
function addSeatToList() {
  // seat list table 가져오기
  const seatListTable = document.querySelector("#seat-list");

  // 좌석이 3개 이상인 경우 alert 표시
  if (seatListTable.rows.length >= 3) {
    alert("좌석은 3개 이상 추가할 수 없습니다.");
    return;
  }

  // 이미 선택된 좌석인 경우 alert 표시
  for (let i = 0; i < seatListTable.rows.length; i++) {
    const seat = seatListTable.rows[i].cells[2].innerHTML;
    if (seat === selectedSeat) {
      alert("이미 선택된 좌석입니다.");
      return;
    }
  }

  // 새로운 row 생성
  const newRow = seatListTable.insertRow(-1);
  // row에 cell 추가
  const trainNumberCell = newRow.insertCell(0);
  const departureArrivalCell = newRow.insertCell(1);
  const selectedSeatCell = newRow.insertCell(2);
  const seatPriceCell = newRow.insertCell(3);
  const deleteCell = newRow.insertCell(4);

  // cell에 값 추가
  trainNumberCell.innerHTML = trainNumber;
  departureArrivalCell.innerHTML = departureArrival;
  selectedSeatCell.innerHTML = selectedSeat;
  seatPriceCell.innerHTML = seatPrice;

  // delete button 추가
  const deleteButton = document.createElement("button");
  deleteButton.innerHTML = "삭제";
  deleteButton.addEventListener("click", () => {
    // 삭제 버튼을 클릭하면 해당 row 삭제
    newRow.remove();
  });
  deleteCell.appendChild(deleteButton);
}

// 좌석 선택 함수
function selectSeat(seatName) {
  // 선택한 좌석 정보 저장
  selectedSeat = seatName;

  // 좌석 요금 계산
  if (seatName[0] === "A") {
    seatPrice = 10000;
  } else {
    seatPrice = 8000;
  }

  // 선택한 좌석 정보를 seat-list에 추가
  addSeatToList();
}

// 출발/도착 정보 선택 함수
function selectDepartureArrivalInfo() {
  // 출발/도착 정보 가져오기
  const departureArrivalElement = document.querySelector(
    ".js-train-selector .route-train-list__station:not(.route-train-list__station--non-selectable) .route-train-list__station-name"
  );
  departureArrival = departureArrivalElement.textContent.trim();
}

// 열차 선택 함수
function selectTrain(trainNumberElement) {
  // 열차 번호 가져오기
  trainNumber = trainNumberElement.textContent.trim();

  // 출발/도착 정보 선택
  selectDepartureArrivalInfo();

  // 선택한 좌석 정보 초기화
  selectedSeat = "";
  seatPrice = 0;
}

// 열차 선택 이벤트 등록
const trainNumberElements = document.querySelectorAll(
  ".js-train-selector .route-train-list__train-name"
);
