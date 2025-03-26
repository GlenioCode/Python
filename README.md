# YouTube Video & Audio Downloader

Este projeto permite baixar vídeos em alta definição em até 1080p e áudios do YouTube utilizando as bibliotecas `yt_dlp` e `pytubefix`. O usuário pode escolher a resolução do vídeo a ser baixado ou optar por baixar apenas o áudio.

## Pré-requisitos

Certifique-se de que você tem as seguintes bibliotecas instaladas:

- `yt_dlp`: para download de vídeos em diferentes resoluções.
- `pytubefix`: para download de áudios.
- FFmpeg para mesclar as partes.

Para instalar as dependências necessárias, use o seguinte comando:

```bash
pip install -r requirements.txt
````
````bash
python -m pip install --upgrade yt-dlp pytubefix
````

## Inserir FFmpeg ao Path do sistema

### Windows:
1. Baixe o **ffmpeg** do [site oficial](https://ffmpeg.org/download.html).
2. Crie um pasta no disco C:\ com o nome ffmpeg.
3. Extraia o arquivo e copie tudo para a pasta ffmpeg no disco C:\.
4. Adicione essa pasta ao **PATH**:
   - Em configurações clique em sistema > sobre > proteção do sistema > avançado > variáveis de ambiente  
   - Encontre a variável `Path` na seção **Variáveis do Sistema**, selecione-a e clique em **Editar**.
   - Adicione o caminho da pasta bin onde você extraiu o `ffmpeg` (por exemplo, `C:\ffmpeg\bin`).
   - Clique em **OK** e feche todas as janelas.
5. Para testar, abra o **Prompt de Comando** e execute `ffmpeg -version`. Se aparecer a versão do ffmpeg, está funcionando.


## Funcionalidades
+ Baixar vídeo do YouTube em diferentes resoluções (1080p, 720p, 480p, 360p).
+ Baixar apenas o áudio do vídeo.


## Como Usar
Clone este repositório ou copie o código para um arquivo Python.



Execute o script: 
````
python Down_Tube.py
````

Escolha entre baixar vídeo ou áudio:
+ Digite V para vídeo.
+ Digite A para áudio.

Se a opção V for escolhida, você deverá selecionar a resolução do vídeo:
+ 1 para 1080p
+ 2 para 720p
+ 3 para 480p
+ 4 para 360p

O vídeo/áudio será baixado e salvo no diretório atual.

## Exemplo de Uso

### Baixando um vídeo
Ao iniciar o script e escolher a opção V (vídeo), o usuário deverá colar o link do vídeo do YouTube e escolher a resolução. O vídeo será baixado com o melhor áudio disponível.

### Baixando apenas o áudio
Se a opção A for escolhida, o usuário deverá colar o link do vídeo do YouTube. O script automaticamente baixa o áudio com a melhor qualidade disponível.

## Contribuições
Sinta-se à vontade para abrir uma issue ou enviar um pull request se encontrar algum problema ou quiser sugerir melhorias.
