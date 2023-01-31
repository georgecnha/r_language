### Instalação do R no Windows

Download do R base e do Rtools [aqui](https://cran-r.c3sl.ufpr.br/).
Download do Rstudio (IDE) [aqui](https://posit.co/download/rstudio-desktop/).

### Instalação do R no Jupyter Notebooks pelo Anaconda

Para instalar o "R Essentials" no seu environment atual, utilize o comando:

```shell
conda install -c r r-essentials 
```

Caso você queira criar um novo environment, basta usar o comando abaixo (para explicitar o interpretador do R como padrão, adicionamos o r-base ao final do comando):

```shell
conda create -n r_env r-essentials r-base
```

Pronto! Agora é só esperar a conclusão da instalação e você já terá um environment configurado com a linguagem R e seus principais pacotes.

### Utilizando o R no Jupyter Notebook

Se você instalou o "R Essentials" no seu environment corrente, então basta abrir o Jupyter Notebook e você já verá a linguagem R disponível.

Caso você tenha usado um novo environment, então é necessário ativá-lo antes de abrir o Jupyter Notebook.

```shell
conda activate r_env
jupyter notebook
```
