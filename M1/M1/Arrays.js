// Criando um array
let numeros = [1, 2, 3, 4, 5];
              [0, 1, 2, 3, 4]
// Adicionando um elemento no final do array
numeros.push(6);

// Removendo o último elemento do array
numeros.pop();

nomes = [ joão, pedro, felipe, maria]

// Adicionando um elemento no início do array
numeros.unshift(0);

// Removendo o primeiro elemento do array
numeros.shift();

// Encontrando a posição de um elemento no array
let posicao = numeros.indexOf(3);

// Removendo um elemento pela posição
numeros.splice(posicao, 1);

// Iterando sobre os elementos do array
numeros.forEach(function(elemento) {
    console.log(elemento);
});

// Filtrando elementos do array
let pares = numeros.filter(function(elemento) {
    return elemento % 2 === 0;
});

// Mapeando elementos do array
let quadrados = numeros.map(function(elemento) {
    return elemento * elemento;
});



// Criando um array de números
let numeros = [1, 2, 3, 4, 5];

// Acessando elementos do array
console.log(numeros[0]);  // Saída: 1
console.log(numeros[2]);  // Saída: 3

// Modificando um elemento do array
numeros[1] = 10;
console.log(numeros);     // Saída: [1, 10, 3, 4, 5]



