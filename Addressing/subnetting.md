# Criando sub-redes

* Já foi explicado a diferença entre partes de rede e partes de host com a analogia do crachá de funcionário.

* As tabelas abaixo demonstran como isso é aplicado em notação binária.

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/c1976d92-83e3-4cc2-a90f-aab14865e03e)
![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/dec34ba9-b07c-42f3-b9de-fc460cbc0309)

* Basicamente, o pacote de dados segue um fluxo dentro da rede caso seja enviado na mesma parte da rede, e segue o fluxo determinado pelo roteador para enviar para outras partes de rede.

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/38a05c85-08fb-4bb8-8af3-a737c05b1be1)

## Endereço de rede

* O endereço de rede aparece quando, na notação binária, se transformam todos os bits de host em `0`.

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/a5e0e0ab-61d0-4f9e-b651-5b614dd71e17)

## Endereço de transmissão

* O endereço de broadcast aparece quando, na notação binária, se transformam todos os bits de host em `1`.

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/7a110631-8d35-4932-a773-f2c035a78d37)\

## Endereços presentes

* Nos exemplos acima foram definidos o endereço de rede e o endereço de transmissão como sendo `192.168.12.128` e `192.168.12.191`, o que quer dizer que os host entre eles terão seus últimos bytes variando nos valores `.129` e `.190` (um dígito a mais que o endereço de rede e um a menos que o endereço de transmissão). Dessa forma define-se que todos os dispositivos presentes na rede irão variar em seus endereços IPv4 como `192.168.12.129-190`, totalizando 62 endereços IPv4 possíveis. Os endereços `192.168.12.129` e `192.168.12.190` são respectivamente o primeiro host e o segundo host.

### Exercício de numeração decimal de CIDR

* Qual o valor decimal da máscara de sub-rede no CIDR:`10.200.20.0/27`?
 	* **R**: `255.255.255.224`
  * **Explicação**: Em notação binária o octeto `1111 1111`, que é considerado o valor máximo entre octetos binários, é `255` em decimal. Foi definido pelo CIDR que os bits que compõem a parte da rede são os 27 primeiros bits do endereço, o que significa que os 27 primeiros bits do endereço possuem o valor de `1`. Por isso, a máscara de sub-rede, que atribui o dígito `1` para as partes de rede, nos três primeiros octetos recebe o valor de 255 cada um, e o último octeto recebe o valor de `1110 0000` que é 224 em decimal.

### Exercício de identificação de endereço de transmissão de CIDR

* Qual o endereço de transmissão do CIDR: `10.200.20.0/27`?
 * **R**: `10.200.20.31`
 * **Explicação**: A definição do endereço de transmissão é concedida quando os dígitos de host são todos convertidos em `1`. Já que os 27 primeiros bits do endereço foram nomeados como partes da rede, então os últimos 5 bits são convertidos em `1`, fazendo com que o último octeto tenha o valor de `0001 1111` que é 31 em decimal.

## Sub-redes em sub-redes

* É bastante comum a atribuição de tarefas como sub-dividir a sub-rede. Para isso segue-se o seguinte passo a passo:
 	* Encontrar o expoente de dois referente ao número de sub-redes a serem geradas.
  
  ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/7d7b58df-ba18-4f8a-ba8b-72c89e6843b5)
  
  * Adicionar o número referente de bits ao formato CIDR (no exemplo abaixo a intenção é criar 4 sub-redes, ou seja 2^2. De 26 bits de parte da rede, o valor subiu para 28)

  ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/07cfc3ce-a735-4fcc-96f3-cdbff8cbe129)

  * Dividir o número de endereços IPv4 possíveis pelo número de sub-redes desejado.
    
  ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/d83e9ae5-68e1-40c6-bde8-eb738fec554f)

  * O número se torna referente à nova quantidade de endereços possíveis. Em linhas gerais isso significa que cada sub-divisão terá um novo endereço de rede e um novo endereço de transmissão baseado no número de hosts possível. No exemplo abaixo, o endereço de rede sendo `192.168.12.128` leva à existência do endereço de transmissão `192.168.12.143`, totalizando 16 hosts possíveis. Depois soma-se o número 16 para cada último octeto, criando assim as variações de sub-rede.
    
  ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/fcf7c8f5-667f-45f8-a00e-393042e4a5ba)

## Tabelas para cálculo mental

### Valor de bits por octeto

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/bb65915c-d37a-49b1-a043-d5cbaea15d8a)

### Valores em números decimais, exponenciais por dois e fórmulas de divisão

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/86be5bcc-f699-49bb-82e7-aefb009fcb33)

### Exercício de divisão de sub-redes

* Qual o terceiro endereço de rede em uma divisão de 4 sub-redes pelo CIDR `10.200.20.0/27`?
 * **R**: `10.200.20.16`
 * **Explicação**: Considerando que os primeiros 29 (27 + 2) bits serão classificados como parte da rede, tem-se que o endereço de rede possui o último byte no valor decimal de 0, e o endereço de transmissão no valor decimal de 7, totalizando 8 hosts possíveis. Dessa forma foi traçado os últimos bytes a partir de uma somatória contínua levando como base a tabuada do 8. Na primeira sub-rede o endereço termina em 0, na segunda em 8 e na terceira em 16.

* Qual o terceiro endereço de transmissão em uma divisão de 4 sub-redes pelo CIDR `10.200.20.0/27`?
 * **R**: `10.200.20.15`
 * **Explicação**: Se o terceiro endereço de rede da divisão termina em 16, logicamente o endereço de transmissão da sub-rede anterior é um dígito a menos desse valor, ou seja 15.

---



