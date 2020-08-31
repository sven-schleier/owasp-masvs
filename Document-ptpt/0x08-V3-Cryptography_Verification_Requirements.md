# V3: Requisitos de Criptografia

## Objetivo de Controlo

A criptografia é um conjunto de práticas/ protocolos essenciais no processo de protecção de dados em dispositivos móveis. Quando esses protocolos não são correctamente implementados, tornam-se pouco seguros e possivelmente exploráveis. O propósito deste capítulo é assegurar a aplicação das boas práticas da criptografia, o que inclui:

- O uso de bibliotecas de criptografia verificadas;
- A configuração correta das primitivas criptográficas;
- O uso de um gerador de números aleatórios adequado.

## Requisitos para verificação de segurança

| # | MSTG-ID | Descrição | L1 | L2 |
| -- | -------- | ---------------------- | - | - |
| **3.1** | MSTG-CRYPTO-1 | A aplicação não se baseia em criptografia simétrica com chaves escritas em código imutável (hardcoded) como método único de encriptação. | ✓ | ✓ |
| **3.2** | MSTG-CRYPTO-2 | A aplicação faz uso de primitivas criptográficas verificadas. | ✓ | ✓ |
| **3.3** | MSTG-CRYPTO-3 | A aplicação faz uso de primitivas criptográficas apropriadas ao caso específico, configuradas de acordo com as boas práticas. | ✓ | ✓ |
| **3.4** | MSTG-CRYPTO-4 | A aplicação não faz uso de protocolos ou algoritmos criptográficos que são considerados descontinuados. | ✓ | ✓ |
| **3.5** | MSTG-CRYPTO-5 | A aplicação não faz uso da mesma chave para múltiplos propósitos. | ✓ | ✓ |
| **3.6** | MSTG-CRYPTO-6 | Todos os valores aleatórios são gerados a partir de um gerador de números aleatórios seguro. | ✓ | ✓ |

## Referências

O OWASP Mobile Security Testing Guide providencia instruções detalhadas para a verificação dos requisitos listados abaixo.

- Android: Testing Cryptography - <https://github.com/OWASP/owasp-mstg/blob/master/Document/0x05e-Testing-Cryptography.md>
- iOS: Testing Cryptography - <https://github.com/OWASP/owasp-mstg/blob/master/Document/0x06e-Testing-Cryptography.md>

Para mais informação:

- OWASP Mobile Top 10: M5 (Insufficient Cryptography) - <https://owasp.org/www-project-mobile-top-10/2016-risks/m5-insufficient-cryptography>
- CWE 310 (Cryptographic Issues) - <https://cwe.mitre.org/data/definitions/310.html>
- CWE 321 (Use of Hard-coded Cryptographic Key) - <https://cwe.mitre.org/data/definitions/321.html>
- CWE 326 (Inadequate Encryption Strength) - <https://cwe.mitre.org/data/definitions/326.html>
- CWE 327 (Use of a Broken or Risky Cryptographic Algorithm) - <https://cwe.mitre.org/data/definitions/327.html>
- CWE 329 (Not Using a Random IV with CBC Mode) - <https://cwe.mitre.org/data/definitions/329.html>
- CWE 330 (Use of Insufficiently Random Values) - <https://cwe.mitre.org/data/definitions/330.html>
- CWE 337 (Predictable Seed in PRNG) - <https://cwe.mitre.org/data/definitions/337.html>
- CWE 338 (Use of Cryptographically Weak Pseudo Random Number Generator (PRNG)) - <https://cwe.mitre.org/data/definitions/338.html>
