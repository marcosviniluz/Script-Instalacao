echo "Seja Bem-Vindo a AIR-TOTEM"
echo "Agora vamos configurar sua máquina para que seja possível rodar nossa aplicação"

java -version
if [ $? = 0 ]; then
    echo "java instalado"
else
    echo "java não instalado"
    echo "gostaria de instalar o java? [s/n]"
    read get
    if [ "$get" == "s" ]; then
        sudo apt install openjdk-17-jre -y
        echo "java instalado"
    fi
fi

echo "Instalando nosso projeto em sua máquina"
git clone https://github.com/marcosviniluz/Arquivo-Jar.git

mysql --version
if [ $? = 0 ]; then
    echo "mysql instalado"
else
    echo "mysql não instalado"
    echo "gostaria de instalar o mysql? [s/n]"
    read resposta
    if [ "$resposta" == "s" ]; then
        sudo apt install mysql-server
    fi
fi
