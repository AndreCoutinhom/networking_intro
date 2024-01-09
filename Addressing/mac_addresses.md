# Endereços de MAC (Media Access Control)

* Possui 6 octetos.
* Denominada notação hexadecimal.
* Atribuido aos recursos físicos dos dispositivos.
* Exemplos:
  * DE:AD:BE:EF:13:37
  * DE-AD-BE-EF-13-37
  * DEAD.BEEF.1337

## Notação Hexadecimal

 ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/0d3554a2-a181-48a1-99d1-aa34eeb21b1e)

* Os primeiros 24 bits são chamados OUI (Organization Unique Identifier), definido pelo IEEE (Institute of Electrical and Electronics Engineers).

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/9959c205-9a58-48e6-adb4-4b60b37eb0fb)

* Os últimos bits são definidos pelo fabricante e são chamados de NIC (Network Interface Controller).

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/787fe3c1-d67b-4fb5-a6b2-da20575aea89)

> Como falado anteriormente, o MAC do roteador é acionado quando um pacote de dados é enviado para um endereço não integrado à rede local, seguindo o protocolo ARP (Address Resolution Protocol).

## Unicast vs. Multicast

* Unicast é quando o conteúdo é enviado para um host específico. Definido pelo dígito `0` no oitavo bit da sequência.

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/7f790d54-b11a-4962-b7d0-4f0a563e63aa)

* Multicast é quando o conteúdo é transmitido para os hosts presentes na rede. Definido pelo dígito `1` no oitavao bit da sequência.

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/9f148cc4-3a3b-4da2-a252-da6918d69813)

## OUI Global

* Define se o dispositivo é localmente administrado ou de forma global. Definido pelo sétimo bit da sequência; `0` para valor global e `1` para valor local.

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/e96cb59c-de89-4e63-bb0d-b7536e14b907)

## Potenciais ataques utilizando endereço MAC:

* MAC spoofing - implantar o endereço de um dispositivo paralelo;
* MAC flooding - enviar um volume excessivo de pacotes para um endereço MAC, sujeitando-o a mau funcionamento.

## Resolução ARP

* Processo em que se identifica o endereço MAC de dois dispositivos em comunicação e suas respectivas identificações por meio do endereço IP.
* O transmissor dos dados usa o ARP Request e o receptor usa o ARP Reply.

### ARP Request

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/060570ff-e15a-41d9-8c83-f468d74974ae)

### ARP Reply

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/a904e38c-0fd2-47e7-ae08-2dc7a70ae096)

## Potenciais ataques usando requisições ARP

* Utilizando softwares como [Ettercap](https://github.com/Ettercap/ettercap) ou [Cain & Abel](https://github.com/xchwarze/Cain) é possível enviar mensagens falsas indicando endereços MAC de potencial malicioso como se fossem legítimos. Para se proteger desse tipo de ataque, é necessário que se estabeleçam protocolos rígidos de segurança para o acesso a LAN (Local Area Network).

### Exemplo de tentativa de ataque com ARP Request

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/457f6779-a735-48cc-b12a-06ac30a7973a)

> No exemplo acima o usuário de IP `10.129.12.100` pode ser um potencial hacker malicioso. Ao se identificar o endereço MAC de outros usuários, ele pode mapear a tabela ARP para que os dados que geralmente seriam enviados para o endereço MAC BB:BB:BB:BB:BB:BB, sejam na verdade enviados para o seu endereço, potencializando-lhe o acesso a informações sigilosas.

--- 
