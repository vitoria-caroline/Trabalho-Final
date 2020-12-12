"use strict";
const calculadora = document.querySelector('#calculadora');
const peso = document.querySelector('#peso');
const altura = document.querySelector('#altura');
const mensagem = document.querySelector('#mensagem');
const retorno = document.querySelector('#retorno');
function calculoIMC(peso, altura) {
    return peso / (altura * altura);
}
calculadora.addEventListener('click', (e) => {
    e.preventDefault();
    let novoPeso = parseFloat(peso.value);
    let novaAltura = parseFloat(altura.value);
    mensagem.innerText = "Seu IMC e de :" + Math.floor(calculoIMC(novoPeso, novaAltura));
});
var IMC = (parseFloat(peso.value));
(parseFloat(altura.value));
if (parseFloat(IMC) < 18.5) {
    retorno.innerText = "Você está com magreza.";
}
if (parseFloat(IMC) < 24.9) {
    retorno.innerText = "Você está saudável.";
}
if (parseFloat(IMC) < 29.9) {
    retorno.innerText = "Você está com sobrepeso.";
}
if (parseFloat(IMC) < 34.9) {
    retorno.innerText = "Você está com obesidade grau I (LEVE).";
}
if (parseFloat(IMC) < 39.9) {
    retorno.innerText = "Você está com obesidade grau II (SEVERA).";
}
if (parseFloat(IMC) < 49.9) {
    retorno.innerText = "Você está com obesidade grau III (MORBÍDA).";
}
if (parseFloat(IMC) < 59.9) {
    retorno.innerText = "Você está super obeso.";
}
if (parseFloat(IMC) > 60) {
    retorno.innerText = "Você está hiper obeso.";
}
