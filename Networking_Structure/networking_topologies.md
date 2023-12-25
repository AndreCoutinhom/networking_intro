# Topologias de rede

* Topologia de network é o nome dado ao sistema organizacional de conexões físicas e/ou lógicas entre dispositivos.
* Determina os componentes a serem usados e os métodos de acesso para transmissão de mídia.
* Topologias podem ser divididas entre três áreas:
  * **Conexões**: Podem ser com fio (fibra óptica, cabo traçado ou coaxial) e sem fio (rede celular, Wi-Fi e satélite).
  * **Nodes**: Meios pelo qual transmissores de dados e receptores estabelecem comunicações (repetidores, botões, roteadores, firewalls, etc)
  * **Classificações**: Considera-se que estruturas de rede podem ser físicas e também lógicas, não necessariamente com as mesmas representações.

* Principais tipos de topologia:
  * **Point-to-point (ponto ao ponto)**: Conexão dedicada a dois dispositivos unicamente.
    ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/1cce9adb-a650-419f-b2eb-76a13ebf9f8c)
  * **Bus**: Topologia em que todos os dispositivos compartilham da mesma fonte de informação sem um centro definido.
    ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/1e2d61ff-b134-4b5a-9336-1d19cd023a85)
  * **Star (estrela)**: Conexão entre múltiplos dispositivos a partir de um centro armazenador de dados.
    ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/175083d6-dc62-4131-9ae9-393cd9edf2f3)
  * **Ring (círculo)**: Meio de comunicação entre entradas e saídas de diferentes dispositivos. Geralmente organizado através de *tokens*, criando um ciclo de informações que são recebidas e reinterpretadas por diferentes máquinas.
    ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/6b6dd074-6d8c-4db2-b857-4141af26c6d0)
  > Tokens são como reivindicações em forma de dados estruturados que carregam informações atribuídas a um contexto. Podem ser senhas, dados em JSON, padrões semânticos, etc.
  * **Mesh (malha)**: Topologia em que todos os dispositivos se conectam com um centro (roteador por exemplo) e partilham seus dados cada um com um outro dispositivo em uma comunicação point-to-point. Outra forma de se realizar é atribuindo mais de um centro, permitindo que cada roteador funcione de forma independente ao outro.
    ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/a801f5b5-a957-4d8a-98b4-81b4250d097c)
  > Essa topologia é muito utilizada em redes de alto alcance como a própria Internet e redes metropolitanas.
  * **Tree (árvore)**: Uma versão extendida da topologia de estrela (comunicação de dados por um único centro), porém com maior complexidade de portas de entradas e saídas.
    ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/95979a98-790a-4322-8ece-408f38d524ac)
  > Altamente utilizado em redes empresariais.
  * **Híbrido**: Formado quando duas ou mais topologias são interconectadas.
    ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/b253df67-0f18-461e-b254-fe33cbf2f267)
  * **Daisy Chain (cadeia de margarida)**: Uma topologia similar a circular, porém com um fim melhor definido. A topologia Daisy Chain é exclusivamente utilizada em conexões físicas de hardware através de cabos.
    ![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/1cb17ac5-c673-44aa-bc33-b4913f7db821)

---


 

