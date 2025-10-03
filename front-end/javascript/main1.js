'use strict'

// const x = 99;
// if (x >= 100){
//     console.log('100以上の値です');
// }else{
//     console.log('100未満の値です');
// }

const x = 80;
if (x >= 90) {
    console.log('A');
} else if (x >= 80) {
    console.log('B');
} else if (x >= 60) {
    console.log('C');
} else {
    console.log('D');
}

let num = 100;
let str = '100';

// if(num == str){
//     console.log('同じ');

// }else{
//     console.log('同じではない');
// }

if (num === str) {
    console.log('同じ');

} else {
    console.log('同じではない');
}

const n = 3;

switch (n) {
    case 1:
        console.log('one');
        break;
    case 2:
        console.log('two');
        break;
    case 3:
        console.log('three');
        break;
    default:
        console.log('other');
        break;
}

// 分岐処理
// 演習:テーマパークの入場料の計算
const age = 30;
if (age >= 12) {
    console.log('5000yen');
} else if (age >= 6) {
    console.log('2,500yen');
} else {
    console.log('1,000yen');
}

// for文
for (let i = 1; i <= 3; i++) {
    console.log(i);
}

// // while文
// let i = 1;
// while (i <= 3) {
//     console.log(i);
//     i++;
// }

// do while文
let i = 1;
do {
    console.log(i);
    i++;
} while (i <= 3);

// 繰り返し処理
// 演習：
let sum = 0;
for (let i = 1; i <= 100; i++) {
    sum += i;
}
console.log(sum);

// 配列
const colors = ['Red', 'Green', 'Blue'];
// console.log(colors[0]);
// console.log(colors[1]);
// console.log(colors[2]);

for (let i = 0; i < colors.length; i++) {
    console.log(colors[i]);
}

// 連想配列
const user = {name:'Olivia',gender:'woman',birth:'1990/10/1'};
// 要素の取り出し①
// console.log(user['name']);
// console.log(user['gender']);
// console.log(user['birth']);

console.log(user.name);
console.log(user.gender);
console.log(user.birth);
console.log(user.hoge); // Undefined

// 演習：
// 配列を使ったテストの点数の集計
const scores = [100,90,80,70,60];
let sum1 = 0;
for (let i = 0; i < scores.length; i++) {
    sum1 += scores[i];
}
const average = sum1 /scores.length;
console.log(sum1);
console.log(average);


