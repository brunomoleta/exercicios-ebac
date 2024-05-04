const highLowIndex = (arr) => {
    const higher = Math.max(...arr);
    const lower = Math.min(...arr);

    const minIndex = arr.indexOf(lower)
    const maxIndex = arr.indexOf(higher)

    return `O menor número é ${lower} e o índice dele é ${minIndex}, enquanto o maior número é ${higher} e o índice dele é ${maxIndex}`;
}

console.log(highLowIndex([12, 7, 34, 45, 78, 22, 9, 67, 83, 31]))