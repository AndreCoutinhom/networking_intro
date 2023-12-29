# Endereços IPv4

* Consiste em um dígito binário de 32 bits dividido em 4 bytes, variando entre os valores de 0-255. Exemplo: `127.0.0.1` (`0111 1111.0000 0000.0000 0000.0000 0001` em notação binária).
* O formato IPv4 permite a existência de 4.294.967.296 endereços únicos.
* O que aloca e gerencia diferentes e únicos endereços IPs na Internet é chamado de IANA (Internet Assigned Numbers Authority). A Autoridade para Atribuição de Números da Internet é a organização mundial que supervisiona a atribuição global dos números na Internet, entre os quais estão os números das portas, os endereços IP, sistemas autónomos, servidores-raiz de números de domínio DNS e outros recursos relativos aos protocolos de Internet.

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/fc9d3a31-21df-49f5-83bf-0a306eaaf484)


## Máscaras de sub-rede

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/f614e8f8-5eee-43ed-879b-97f439b0db04)


* Descreve quais pontos do endereço IP agem como rede e quais agem como host.
> Foi explicado anteriormente que as partes de rede identificam as responsáveis pela identificação de dispositivos como partes da rede, enquanto as partes de host, identificam os dispositivos como individuais. A analogia utilizada anteriormente é a do crachá de funcionário: a parte da rede é o texto informando o nome da empresa para qual o funcionário trabalha, e o host é o nome do próprio funcionário.

## Endereços de rede e *gateway*

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/5e400aed-1a23-4c1a-8148-df519816760a)

* *Default Gateway* é o endereço IPv4 do roteador. É comum que este se torne o primeiro ou último endereço acionável em uma sub-rede.

## Endereço de transmissão

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/a3c14091-36e2-4fcc-a678-b7497f3bb8fa)

* Utilizado para comunicar mensagens entre dispositivos pertencentes a mesma rede.

## Sistema binário

* Endereços IPv4 são definidos a partir de seus valores binários.
  * Primeiro é considerado o caminho de 8 expoentes de 2 (`128 64 32 16 8 4 2 1`).
  * Depois é definido um valor binário referente a esses números, definido alguns no valor de `1` e outros no valor de `0`.
  * ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/542da4eb-3c02-401e-bfd1-28b084abb7d5)
  * Para cada byte (octeto de bits), há uma posição variada de `0`s e `1`s, e essas posições definem quais números farão parte da somatória.
  * ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/b936ea8c-5ed9-4865-8854-560b51c37223)
  * Portanto, o endereço IPv4 `192.168.10.39` em notação binária seria `1100 000 . 1010 1000 . 0000 1010 . 0010 0111`

## CIDR (Classless Inter-Domain Routing)

* Atribui o número de bits que farão parte da identificação na rede. Se uma sub-rede usa uma máscara `255.255.255.0`, isso atribui o valor aos três primeiros bytes, ou seja os primeiros 24 bits, como números de identificação na rede. Usando o mesmo exemplo de endereço IPv4 anterior, o CIDR do endereço seria `192.168.10.39/24`.

---

 
