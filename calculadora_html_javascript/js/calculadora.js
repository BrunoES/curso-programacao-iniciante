var operacao = "";
var valor1 = 0;
var valor2 = 0;

function somar(a, b) {
    return a + b;
}

function subtrair(a, b) {
    return a - b;
}

function dividir(a, b) {
    return a / b;
}

function multiplicar(a, b) {
    return a * b;
}

function definirOperacao(operacaoParam) {
    operacao = operacaoParam;
    valor1 = pegarValorDoCampo("valor");
    limparCampo("valor");
}

function limpar() {
    operacao = "";
    valor1 = 0;
    valor2 = 0;
    limparCampo("valor"); // fazer por último
}

// Primeiro fazer sem função, depois separar
function pegarValorDoCampo(id) {
    var valor = document.getElementById(id).value;
    return parseFloat(valor); // Deixar dar problema de concatenação, depois mudar para parseFloat e explicar
}

// Primeiro fazer sem função, depois separar
function limparCampo(id) {
    document.getElementById(id).value = "";
    document.getElementById(id).focus();
}

// Primeiro fazer sem função, depois separar
function atribuirValorAoCampo(id, valor) {
    document.getElementById(id).value = valor;
}

function realizarOperacao() {
    var resultado = 0;

    valor2 = pegarValorDoCampo("valor");
    console.log(operacao);
    console.log(valor1);
    console.log(valor2);

    // Primeiro fazer IF, depois mudar para Case
    switch (operacao) {
    case "soma":
        resultado = somar(valor1, valor2);
        break;
    case "subtracao":
        resultado = subtrair(valor1, valor2);
        break;
    case "divisao":
        resultado = dividir(valor1, valor2);
        break;
    case "multiplicacao":
        resultado = multiplicar(valor1, valor2);
        break;
    default:
        console.log("Operação não suportada");
    }

    console.log(resultado);
    atribuirValorAoCampo("valor", resultado);
}