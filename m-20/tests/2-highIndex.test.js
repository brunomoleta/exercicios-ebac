const highLowIndex = require('../2-highIndex');
const {array5,array2,array1,errorMessage,array3,array4} = require("./mock/2-highIndex.mock")

describe("Função: Encontrar índice do valor mais alto e mais baixo do array", () => {
    const successMessage = (lower, minIndex, higher, maxIndex) => `O menor número é ${lower} e o índice dele é ${minIndex}, enquanto o maior número é ${higher} e o índice dele é ${maxIndex}`

    test('retorna mensagem de erro caso input seja inválido', () => {
        expect(highLowIndex([])).toBe(errorMessage);
        expect(highLowIndex(["a", "bacate"])).toBe(errorMessage);
        expect(highLowIndex(["[]", {a: 1}])).toBe(errorMessage);
    });
    test('retorna índice mínimo e máximo corretamente', () => {
        expect(highLowIndex(array1)).toBe(successMessage(3,2,6,5));
        expect(highLowIndex(array2)).toBe(successMessage(12,1, 17,6));
        expect(highLowIndex(array3)).toBe(successMessage(24,3,29,8));
        expect(highLowIndex(array4)).toBe(successMessage(36,5,39,8));
        expect(highLowIndex(array5)).toBe(successMessage(41,0,50,9));
    });
})
