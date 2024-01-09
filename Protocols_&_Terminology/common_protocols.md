# Protocolos comuns

## TCP
![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/c7054bba-a367-49cc-ac5e-e1ac60905b4d)
![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/f5849d7b-cc5c-4301-90da-567e11a4b436)
![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/21567f6a-678a-4049-82c7-7f2f0e719bcc)

## UDP

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/aca91488-4179-4656-b7bb-e0c8d727a741)
![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/bd6bdf52-a635-49cd-b659-b7b082a1d789)

## Mensagens ICMP

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/b4a97d44-bb7c-4e78-9eda-5b3b50012e00)

> "Outra parte crucial do ICMP para nós é o campo Time-To-Live (TTL) no cabeçalho do pacote ICMP, que limita a vida útil do pacote à medida que ele percorre a rede. Isso impede que os pacotes circulem indefinidamente na rede em caso de loops de roteamento. Cada vez que um pacote passa por um roteador, o roteador decrementa o valor TTL em 1. Quando o valor TTL atinge 0, o roteador descarta o pacote e envia de volta ao remetente uma mensagem ICMP de Tempo Excedido."

### TTLs padrões
* Windows: 128
* MacOS: 64
* Linux: 64
* Solaris: 255

## Métodos SIP (Protocolo de iniciação de sessão - usado para comunicações pela Internet usando recursos multidmídia)

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/0a29991d-bf03-4f21-b81c-dd7234cce5d8)

---
