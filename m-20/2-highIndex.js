const highLowIndex = (arr) => {
    const errorMessage = "Por favor insira um array com um número ou mais."
    if (!arr) return errorMessage;
    if (!arr.some(Number.isFinite)) return errorMessage;

    const successMessage = (lower, minIndex, higher, maxIndex) => `O menor número é ${lower} e o índice dele é ${minIndex}, enquanto o maior número é ${higher} e o índice dele é ${maxIndex}`

    const numbersArr = arr.filter(Number.isFinite)
    const higher = Math.max(...numbersArr);
    const lower = Math.min(...numbersArr);

    const minIndex = arr.indexOf(lower);
    const maxIndex = arr.indexOf(higher);


    return successMessage(lower, minIndex, higher, maxIndex);
}

module.exports = highLowIndex