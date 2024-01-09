# Informação específica de fornecedor

> O sistema operacional que rede os roteadores se chama [Cisco IOS](https://www.cisco.com/c/en/us/products/ios-nx-os-software/ios-technologies/index.html).

## Resposta de verificação de acesso ao usuário do Cisco IOS.

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/f9b3259b-5e72-42b3-a444-79ee99ca95d9)

## VLAN

* Uma rede local virtual, normalmente denominada de VLAN, é uma rede logicamente independente. Várias VLANs podem coexistir em um mesmo comutador, de forma a dividir uma rede local em mais de uma rede, criando domínios de broadcast separados.

> Um atacante pode utilizar VLANs dinâmicos para captar endereços de MAC. Por isso o modelo mais utilizado são os VLANs estáticos, que provém diferentes IDs para cada porta.

## IEEE 802.1Q

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/f555dbe4-9374-4dcb-8581-55ff67cc4b2e)

> O protocolo TPID é usado para identificar a presença da especificação 802.1Q da IEEE.

## [Cadastrando VLAN cartões de interface de rede no Linux]()

## Cadastrando VLAN cartões de interface de rede no Windows

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/258eb72c-1dc7-4155-8337-0aecf6c97056)
![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/091f0d70-b7ad-467b-9c05-985779093803)
![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/b44d7632-4b0c-4881-9b80-7d3771528e3f)

### [Terminal]()

## Análise de tráfego de VLAN

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/d08c41d3-76ea-4a3d-88c6-2a33ee9875fe)
![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/67318b29-8174-47f1-ae90-8858a3c680a8)

### [Tshark enumaration]()

## Vulnerabilidades de VLAN

* Hopping com falso switch - permite o acesso a pacotes de rede de todas as VLANs
  * **Combate**: [Yersinia](https://linux.die.net/man/8/yersinia).
    ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/7ed6bafb-e2ce-4968-951e-c507e075c24a)
* Hopping com double tagging - permite que o atacante burle o sistema com uma tag falsa de isca e uma outra comprometedora.
  * **Combata**: [Scapy](https://scapy.readthedocs.io/en/latest/usage.html#vlan-hopping)
     ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/ef761076-d7d4-444c-b911-f5fb0f4a97d4)

---
