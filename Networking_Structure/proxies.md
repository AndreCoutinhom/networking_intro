# Proxy

* Um proxy é como um mediador que inspeciona o conteúdo na transição de dados.
* Há três tipos principais de Proxy
  * **Proxy dedicado**: Quando um sistema se encarrega de todas as funções computacionais de saída. Em algumas empresas, computadores comuns não possuem acesso à internet, mas fazem requisições de acesso à web para um servidor superior.
    
    ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/7870706a-2d61-40a1-b11d-6ba0b1285864)

  > Hackear ilegalmente um sistema regido por um proxy dedicado é potencialmente difícil. O uso de um navegador como FireFox, que habilita o mesmo sistema de código para qualquer sistema operacional (libcurl), o que o diferencia de navegadores como Chrome, Explorer e Edge; muitas vezes dá conta do recado.
  * **Proxy reverso**: Quando um sistema se encarrega de todas as funções computacionais de entrada. Enquanto o proxy dedicado lida com requisições de envio, o proxy reverso inspeciona requisições que estão sendo enviadas para o próprio node. Por exemplo, o Cloudflare é uma maneira de filtrar a quantidade de informações que pode ser enviada para os servidores, o que barra tentativas de DDOS.

    ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/ed48d292-1824-4e48-8c9a-20e4c507a6d1)

  > Em um estudo de caso de um testador de penetração, é falado que é possível usar um proxy reverso para redirecionar tráfego de clientes para outro destino. Potenciais hackers criminosos podem usar essa estratégia e infectar endpoints de forma que os usuários tenham seu tráfego de rede redirecionado para um local com potencial perigoso. Uma forma de contornar esse tipo de ataque é utilizando um WAF (Web Application Firewall), que inspeciona requisições web e as bloqueia se tiverem potencial malicioso.
  > **Material de apoio:** [OWASP: ModSecurity Core Rule Set](https://owasp.org/www-project-modsecurity-core-rule-set/).
  * **Proxy não transparente**: A definição de proxy transparente é quando ele intercepta a comunicação na rede de forma sutil e sem o conhecimento do usuário. Proxys não transparentes informam os clientes de que ele existe e está fazendo seu trabalho através de um set de configurações específicas. Geralmente, o acesso de um node para sistemas em Internet estabelecem suas comunicações com base em proxys não transparentes. Por isso não se pode acessar a Internet sem uma devida configuração de proxy.

---
  
