# Page Summary Application

## Description
The URL Caption Summarizer API is designed to extract captions or descriptions from a given URL and summarize the content using an AI model. This API provides a convenient way to generate concise summaries of web content for various applications.

## Features
- Extract captions or descriptions from URLs
- Summarize content using AI model
- Trying to translate into Polish
- API-only functionality for easy integration with other systems

## Technologies Used
- Java (Spring Boot)
- Python (as internal service)
- AI/ML models for text summarization
- API development tools (Postman)
- {"libs" : ["youtube-transcript-api", "trafilatura"]}


## Installation
[]

## Usage
* CLI
```
curl --location 'http://somehost:80/summarize' \
--header 'Content-Type: application/json' \
--data '{
    "txt" : "https://your-url.here/sample-page"
}'
```
* Pure JSON
```json
{
"txt" : "https://your-url.here/sample-page"
}
````


## Contributing
[]

## License
[]