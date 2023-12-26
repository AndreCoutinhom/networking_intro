# Tipos de Rede

> Essas anotações são entendimentos pessoais sobre o que foi lido na seção `Networking Types` do curso **Introduction to Networking** da *HTB Academy*

## Terminologias comuns
| Tipo de rede | Tradução direta | Definição |
|-------------|-------------|-------------|
| Wide Area Network (WAN) | Rede de área ampla | Internet |
| Local Area Network | Rede de área local | Redes Internas (Casa ou escritório) |
| Wireless Local Area Network (WLAN) | Rede sem fio de área local | Redes Internas acessadas via Wi-Fi |
| Virtual Private Network (VPN)	 | Rede virtual privada | Conecta múltiplos sites de rede em uma rede interna |

* Uma rede WAN é basicamente um grande número de LANs combinadas. É geralmente identificada na presença de protocolos da rede pública e verificado caso o endereço IP não seja privado (*RFC 1918*).
* Não há diferenças entre LAN e WLAN exceto pelo fato de que WLAN é regida por comunicação sem fio. São identificadas quando os endereços IPs são designados para uso local (*RFC 1918*).
* VPN é uma rede em que o usuário possui acesso a outra rede.

### Tipos de VPN

* **Site-to-Site**: Realizado entre roteadores ou firewalls. Geralmente usado em empresas, permitindo que múltiplas máquinas em diferentes locais possam usar a mesma rede como se fosse uma rede local.
* **Remote Access VPN**: Realizado por meio de serviços e softwares especializados. Principais exemplos envolvem o **OpenVPN** e **Split-TunneL VPN**.
* **SSL VPN**: Oferece comunicação segura e protegida diretamente ao navegador. Conta com protocolos de segurança e criptografia atualizados de acordo com o navegador utilizado.

---

## Termos literários
| Tipo de rede | Tradução direta | Definição |
|-------------|-------------|-------------|
| Global Area Network (GAN) | Rede de área global | Internet |
| Metropolitan Area Network (MAN) | Rede de área metropolitana | Redes regionais (múltiplas redes locais) |
| Wireless Personal Area Network (WLAN) | Rede sem fio de área pessoal | Rede pessoal (Bluetooth) |

* Além da Internet, GANs são utilizadas para cabos submarinos internacionais e transmissões via satélite.
* MANs conectam LANs em proximidade geográfica. Comunicações muito mais ágeis em relação à internet global são alcançadas. As cidades podem ser conectadas através dessas redes, permitindo a comunicação e o compartilhamento de recursos entre diferentes regiões geográficas.
* PANs e WPAN são conexões específicas entre dois ou mais dispositivos como smartphones, tablets, notebooks ou desktops. Esse tipo de rede é comumente usada para aplicações IOT (Internet das coisas) através do compartilhamento de rede Wi-Fi ou Piconet (rede de dados via bluetooth). 
