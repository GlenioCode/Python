from pytubefix import YouTube
import yt_dlp

def baixar_video():
   
    video_url = input('Cole aqui o vídeo do YouTube: ')

    print("Escolha a resolução do vídeo:")
    print("1 - 1080p")
    print("2 - 720p")
    print("3 - 480p")
    print("4 - 360p")

    choice = input("Digite o número da resolução desejada: ")

    resolutions = {
        '1': '1080',
        '2': '720',
        '3': '480',
        '4': '360'
    }

    if choice in resolutions:
        selected_resolution = resolutions[choice]
        print(f"Baixando o vídeo na resolução {selected_resolution}p...")
    else:
        print("Escolha inválida! Baixando na resolução padrão (720p)...")
        selected_resolution = '720'

    ydl_opts = {
        'format': f'bestvideo[height<={selected_resolution}]+bestaudio/best[height<={selected_resolution}]',
        'outtmpl': '%(title)s.%(ext)s',  
    }

    with yt_dlp.YoutubeDL(ydl_opts) as ydl:
        ydl.download([video_url])


def baixar_audio():
    video_url = input('Cole o link do YouTube aqui: ')
    yt = YouTube(video_url)

    print("Baixando o áudio...")
    audio_stream = yt.streams.filter(only_audio=True).order_by('abr').desc().first()
    audio_stream.download()
    print("Download do áudio concluído!")
 

def main():
    while True:
        resposta = input('Digite [V] para baixar Vídeo ou [A] para baixar o áudio: ')
        if resposta.lower() == 'v':
            baixar_video()
        elif resposta.lower() == 'a':
            baixar_audio()
        else:
            print('Opção inválida, tente novamente.')

if __name__== '__main__':
    main()
