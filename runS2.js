const s2 = require("@radarlabs/s2");

const cell1 = new s2.CellId(9926595695177891840n);
console.log(cell1.token());

const cell2 = new s2.CellId("89c25a31");
console.log(cell2.id());

console.log("SUCCESS!!");
