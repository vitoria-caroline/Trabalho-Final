 const calculadora = document.querySelector<HTMLFormElement>('#calculadora')!
const peso = document.querySelector<HTMLInputElement>('#peso')!
const altura = document.querySelector<HTMLInputElement>('#altura')!
const mensagem = document.querySelector<HTMLParagraphElement>('#mensagem')!
const valor = document.querySelector<HTMLParagraphElement>('#valor')!


function calculoIMC (peso: number, altura: number) {
  return (peso / (altura*altura)).toFixed(2)
}

calculadora.addEventListener('click', (e: Event ) => {
    e.preventDefault()
    let novoPeso = parseFloat(peso.value)
    let novaAltura = parseFloat(altura.value)
    mensagem.innerText = "Seu IMC e de :" + (calculoIMC (novoPeso, novaAltura)) 
})





