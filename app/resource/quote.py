import falcon
from service.quote import QuoteService


class QuoteResource:
    def on_get(self, req: falcon.Request, resp: falcon.Response) -> None:
        """Handle GET requests."""
        q_svc = QuoteService()
        quote = q_svc.quote()

        resp.status = falcon.HTTP_200
        resp.media = quote
