# O modelo OSI

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/57cae02e-1741-433b-8140-987a03e16835)

* **Camada de Aplicação**: Controla dados de `input` e `output` e fornece as funções da aplicação (`FTP`, `HTTP`).
* **Camada de apresentação**: Adaptar os dados de forma a poderem ser lidos fora da aplicação, como formatos de arquivo (`PNG`, `JPEG`, `MP4`, `MP3`, `JS`, `CPP`).
* **Camada de sessão**: Garante a conexão bem sucedida entre dois sistemas (`BIOS`).
* **Camada de transporte**: Detecta e evita congestionamentos de dados entre um ponto e outro (`UDP`, `TCP`).
* **Camada de rede**: Dados e ações de circuito são comutados na rede e enviados do transmissor para o receptor (Roteador).
* **Camada de link**: Divisão de blocos contendo dados binários (fibra óptica, cabos).
* **Camada física**: Transmissão de dados por meios físicos de envio de componentes interpretáveis pelo computador (sinais de rádio, cabos elétricos, ondas eletromagnéticas, iodos)

---

* Cada camada oferece serviços para serem utilizados pela camada diretamente acima dela. Para disponibilizar esses serviços, a camada utiliza os serviços da camada abaixo dela e realiza as tarefas específicas de sua própria camada.
* Quando os dados são transmitidos, eles seguem um caminho indo da camada 7 até a camada 1. Depois os dados caminham da camada 1 até a camada 7 para chegar ao receptor.

![image](https://github.com/AndreCoutinhom/networking_intro/assets/91290799/394e1caf-21dd-4a7a-881d-1c9507c054f3)

---
