const mdc = require('../1-mdc');

describe("Função: Executar função de mdc", () => {
    test('retorna mensagem de erro caso input seja inválido', () => {
        const message = 'Por favor inserir apenas números inteiros maiores que 0'
        expect(mdc(-20, 100)).toBe(message);
        expect(mdc("manga", "goiaba")).toBe(message);
        expect(mdc(14, null)).toBe(message);
        expect(mdc(14.5, 4.99)).toBe(message);
    });
    test('retorna mdc correto', () => {
        expect(mdc(20, 100)).toBe(20);
        expect(mdc(4, 5)).toBe(1);
        expect(mdc(200, 200)).toBe(200);
        expect(mdc(100, 20)).toBe(20);
        expect(mdc(125, 25)).toBe(25);
    });
})
