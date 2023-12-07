import requests


def buscar_libro(query, api_key):
    url = 'https://www.googleapis.com/books/v1/volumes'
    params = {
        'q': query,
    }

    try:
        response = requests.get(url, params=params)
        data = response.json()

        print(response)

        if 'items' in data and len(data['items']) > 0:
            for item in data['items']:
                volume_info = item['volumeInfo']
                titulo = volume_info.get('title', 'No disponible')
                autores = volume_info.get('authors', ['No disponible'])
                generos = volume_info.get('categories', ['No disponible'])

                print(f'Título: {titulo}')
                print(f'Autor(es): {", ".join(autores)}')
                print(f'Géneros: {", ".join(generos)}')
                print(f'Description: {", ".join(description)}')
                print('---')

        else:
            print('No se encontraron resultados.')

    except requests.exceptions.RequestException as e:
        print(f'Error de conexión: {e}')

if __name__ == "__main__":
    # Reemplaza 'TU_CLAVE_DE_API' con tu clave de API de Google Cloud
    api_key = 'AIzaSyD48-4Ij8FXpSUbk-fcvL0X5sjqF5BTSnc'
    busqueda = input('Ingrese el término de búsqueda: ')
    buscar_libro(busqueda, api_key)

