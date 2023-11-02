import scrapy


class KannadaSpiderSpider(scrapy.Spider):
    name = "kannada_spider"
    allowed_domains = ["prajavani.net"]
    start_urls = ["https://prajavani.net"]

    def parse(self, response):
        pass
