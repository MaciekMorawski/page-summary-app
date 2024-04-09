from flask import Flask, jsonify, request
from youtube_transcript_api import YouTubeTranscriptApi
import trafilatura as tra
import json


app = Flask(__name__)

@app.route('/extract_caption/<video_id>', methods=['GET'])
def extract_data(video_id):
    print(f'extract_caption / {video_id}')
    
    # transcript_list = YouTubeTranscriptApi.list_transcripts(video_id)
    # print(transcript_list)

    data = YouTubeTranscriptApi.get_transcript(video_id, languages=['en', 'pl'])

    names = [obj['text'] for obj in data]
    result = ', '.join(names)

    output_data = {"txt": result}

    return jsonify(output_data)


def converterJson(mainAsJson: dict, l: list):
    d ={}
    for i in l:
        d[i] = mainAsJson[i]
    return d

@app.route('/extract_main_article', methods=['POST'])
def simple():
    url_of_webpage = request.get_json().get('url_of_webpage')
    
    print(f'extract_main_article / {url_of_webpage}')
    
    downloaded = tra.fetch_url(url_of_webpage)
    main2 = tra.extract(downloaded, include_comments=False, output_format='json')
    mainAsJson =json.loads(str(main2))
    list_of_keys = ['title', 'text', 'tags', 'excerpt']

    d = converterJson(mainAsJson, list_of_keys)
    
    return d

@app.route('/', methods=['GET'])
def hello2():
    task = {"service": "works"}
    return jsonify(task)


if __name__ == '__main__':
    app.run(port=5000, debug=False, host='0.0.0.0')