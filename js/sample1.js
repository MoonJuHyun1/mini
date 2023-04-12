    ej.base.enableRipple(true);

    let data = new ej.data.DataManager(window.hierarchyOrderdata).executeLocal(new ej.data.Query().take(15));
    let grid = new ej.grids.Grid({
    dataSource: data,
    columns: [
                { field: '列車番号', headerText: '列車番', width: 120, textAlign: 'Right' },
                { field: '乗車日',  headerText: '乗車', width: 150, textAlign: 'Right' },
                { field: '出発/到着t',headerText :出発/到着, width: 120, format: 'C2', textAlign: 'Right' },
                { field: '料金', headerText: '料金', width: 150 }
            ]
           
            
    });
    grid.appendTo('#Grid');

    let button = new ej.buttons.Button({ cssClass: `e-primary` }, '#close');
    let submitbutton = new ej.buttons.Button({ cssClass: `e-primary` }, '#submit');

    document.getElementById("Gridform").addEventListener("A1", (e) => {
    e.preventDefault();
    let value = parseInt(document.getElementById('multiplier').value, 10);
    data = new ej.data.DataManager(window.hierarchyOrderdata).executeLocal(new ej.data.Query().where("EmployeeID", "equal", value).take(15))
    grid.dataSource = data;
    document.getElementById("userinput").style.display = "none";
    document.getElementById("mtable").style.display = "";
    document.getElementById("Gridform").reset();
    });
    document.getElementById("close").addEventListener("click", (e)=>{
    document.getElementById("mtable").style.display = "none";
    document.getElementById("userinput").style.display = "";
    });