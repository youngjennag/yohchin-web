
// function命令
function getRectangle(height, width) {
    return height * width;
}

console.log(getRectangle(3, 5));

// 関数リテラル（無名関数）
const getRectangleArea = function(height, width) {
    return height * width;
}

console.log(getRectangleArea(3, 5));

// Functionコンストラクタ
const getRectangleArea1 = new Function('height','width','return height * width');
console.log(getRectangleArea1(3, 5));

// アロー関数
const getRectangleArea2 = (height, width) =>{
        return height * width;
}

console.log(getRectangleArea2(3, 5));

// 演習
// リンゴの値段を計算するプログラムの関数化

function price(unitPrice, n) {
    return unitPrice * n;
}

console.log(price(100,13));