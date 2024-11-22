document.getElementById("checkButton").addEventListener("click", function () {
    const name = document.getElementById("nameInput").value.trim();
    const resultElement = document.getElementById("result");
  
    switch (name) {
      case "Ruan":
      case "Pedro":
      case "Katarina":
        console.log("Eu tenho um filho(a) com este nome");
        resultElement.textContent = "Eu tenho um filho(a) com este nome";
        //resultElement.textContent é uma propriedade do DOM (Document Object Model) que permite acessar ou alterar o conteúdo de texto de um elemento HTML.
        break;
  
      default:
        console.log("Que nome lindo o seu!");
        resultElement.textContent = "Que nome lindo o seu!";
        break;
    }
  });
  