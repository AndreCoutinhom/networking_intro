# Uma revisão de networking

> Essas anotações são entendimentos pessoais sobre o que foi lido na seção `Networking Overview` do curso **Introduction to Networking** da *HTB Academy*

## O que é Network

* O Network (rede) é o meio pelo qual dois ou mais computadores podem se comunicar. É importante que profissionais de cibersegurança o compreendam, pois pode ser mais difícil de interpretar erros no sistema se a rede falhar.

### Usando a analogia de casas

* Práticas de construção de pequenas redes com vários recursos de controle de acesso se assemelham a ideia de uma cerca. Você pode controlar como e quem pode ter acesso a seu sistema se atitudes suspeitas como requisições HTTP atípicas (pular a cerca) são facilmente notáveis.
* Documentar e organizar o propósito de cada rede é como iluminar a casa; tudo pode ser visto.
* Sistemas de detecção de intrusos como [Suricata](https://suricata.io) e [Snort](https://www.snort.org) são como arbustos e árvores bloqueando janelas. Torna mais difícil e mais audível a tentativa de acesso a janelas.

---

## Sub-redes e máscaras

* Uma sub-rede é como uma pequena rede inserida dentro de um network maior. Basicamente existem diversas máscaras de reconhecimento de endereço IP, o que permite um maior filtro de máquinas que podem acessar tal rede.

### Entendendo código binário em endereço IP

* Cada seção de um endereço IP é um número de 8 bits (1 byte), ou octeto.
* Matematicamente, um octeto pode ter até 256 combinações possíveis, variando de 0 (00000000) a 255 (11111111). Portanto, cada seção do endereço IP possui valores variáveis entre 0 a 255.
* Quando é definida uma máscara, ocorre uma divisão da rede que é capaz de identificar quais dispositivos fazem parte de uma determinada sub-rede. Essa divisão define quais seções do endereço IP serão utilizadas para identificação na rede e identificação de host (propriedade individual da máquina). O que for definido como identificação na rede será utilizado como parâmetro de acesso, enquanto o que estiver no campo de identificação por host determinará especificamente a máquina referida
> De forma muito semelhante como em um crachá, que possui uma identificação com o nome e logo da empresa (rede) e uma identificação pessoal com o nome e sobrenome do funcionário (host). Para que o funcionário seja reconhecido como parte da empresa, não basta seu crachá possuir seu nome, ele precisa que sua identidade possua os parâmetros da empresa.
* Em código binário, os bits identificáveis como parte da rede são definidos como `1` e os bits parte do host como `0`. Então os bits presentes em cada seção do endereço IP irão definir os parâmetros de acesso para cada máquina presente na sub-rede.


* Máscaras são `/` seguidas por um múltiplo de 8, referente ao número de bits que serão interpretados como iguais. 
* A máscara mais utilizada de sub-rede é a **/24** (255.255.255.0), em que os três primeiros bytes (24 bits) são verificados como parte da rede. As máquinas que tiverem iguais os três primeiros bytes do endereço IP, podem se comunicar entre si, já que o número decimal `255` é um byte em que todos os bits possuem valor de `1`, ou seja, identificam a seção como parte da rede.

*/24 em decimal e binário*

``` yaml
Decimal: 255.255.255.0
Binário: 11111111.11111111.11111111.00000000
```

* Há, no entanto, a máscara **/25**(255.255.255.128), que divide as máquinas em duas metades, permitindo que apenas máquinas pertencentes à suas respectivas metades possam se comunicar. 
* Em código binário, todos os números iguais ou inferiores a 127 se iniciam com o número `0` e todos os iguais ou inferiores a 128 se iniciam com o número `1`. Atribuindo a máscara como `255.255.255.128`, estamos afirmando que os bits do endereço IP identificados como parte da rede, não apenas envolvem os três primeiros bytes, mas também o primeiro bit depois dos três primeiros bytes, totalizando os primeiros 25 bits.


*/25 em decimal e binário*

``` yaml
Decimal: 255.255.255.128
Binário: 11111111.11111111.11111111.10000000
```

---

## Internet

* A Internet é uma rede subdividida entre várias sub-redes (nossas casas por exemplo).

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/88c8a5fb-58b6-4556-84a1-97360b0bbd13)

* Endereços de redes comerciais podem ser identificadas por URLs (Uniform Resource Locator - Localizador uniforme de recursos) ou FQDNs (Fully Qualified Domain Name - Nome de domínio totalmente qualificado). Estes se diferenciam por complexidade de dados presentes na digitação.

*Exemplo*

``` yaml
Exemplo de URL: https://www.hackthebox.eu/example?floor=2&office=dev&employee=17
Exemplo de FQDN: www.hackthebox.eu
```

* Todo e qualquer envio de informações via Internet necessita de um roteador, que envia nossos dados de entrada para a rede desejada através de seus endereços IP.

### Dicas da HTB

Recomenda-se que a rede de uma empresa consista nos seguintes fatores:

* O Servidor Web deve estar em uma DMZ (Zona Desmilitarizada) porque clientes na internet podem iniciar comunicações com o site, aumentando a probabilidade de comprometimento. Colocá-lo em uma rede separada permite que os administradores implementem proteções de rede entre o servidor web e outros dispositivos.

* Estações de trabalho devem estar em sua própria rede, e, em um mundo ideal, cada estação de trabalho deveria ter uma regra de Firewall Baseado em Host impedindo-a de se comunicar com outras estações de trabalho. Se uma estação de trabalho estiver na mesma rede que um servidor, ataques de rede como spoofing ou man-in-the-middle se tornam muito mais problemáticos.

* O Switch e o Roteador devem estar em uma "Rede de Administração". Isso impede que as estações de trabalho espionem qualquer comunicação entre esses dispositivos. Já realizei muitos Testes de Penetração e vi anúncios OSPF (Open Shortest Path First). Como o roteador não tinha uma rede confiável, qualquer pessoa na rede interna poderia enviar um anúncio malicioso e realizar um ataque man-in-the-middle contra qualquer rede.

* Os Telefones IP devem estar em sua própria rede. Em termos de segurança, isso evita que computadores possam interceptar a comunicação. Além da segurança, os telefones são únicos no sentido de que a latência é significativa. Colocá-los em sua própria rede permite que os administradores de rede priorizem seu tráfego para evitar alta latência com mais facilidade.

* As Impressoras devem estar em sua própria rede. Isso pode parecer estranho, mas é quase impossível garantir a segurança de uma impressora. Devido ao funcionamento do Windows, se uma impressora informar a um computador que é necessária autenticação durante um trabalho de impressão, esse computador tentará uma autenticação NTLMv2, o que pode levar ao roubo de senhas. Além disso, esses dispositivos são ótimos para persistência e, em geral, recebem muitas informações sensíveis.

## Nota: Cuidado com impressoras

### Estudo de caso:

* O indivíduo comprou uma impressora cara com a intenção de explorar suas vulnerabilidades de segurança.

* Ele explorou a impressora para inserir um "shell reverso". Isso significa que, quando a impressora se conectasse à rede, ela enviaria um shell (um tipo de interface de linha de comando) para o invasor, concedendo acesso remoto.

* Após comprometer a impressora, o invasor enviou fisicamente a impressora para a empresa que estava sendo testada.

* Ele enviou um e-mail de phishing para os funcionários da empresa, agradecendo-os por virem ao escritório e explicando que a nova impressora permitiria imprimir ou digitalizar mais rapidamente. Essa é uma tática enganosa para motivar os funcionários a conectar a impressora à rede.

* Ao conectar a impressora à rede, a máquina do administrador de domínio da empresa automaticamente enviou suas credenciais para a impressora, possivelmente devido a configurações inadequadas ou vulnerabilidades na impressora.

* Com as credenciais do administrador, o invasor obteve acesso remoto não autorizado aos sistemas da empresa, potencialmente comprometendo dados sensíveis e sistemas críticos.

Esse cenário destaca como as impressoras, muitas vezes negligenciadas em termos de segurança, podem ser exploradas como pontos de entrada em uma rede corporativa, resultando em sérias ameaças à segurança cibernética. Isso ressalta a importância de implementar práticas robustas de segurança, inclusive para dispositivos aparentemente simples, como impressoras.
