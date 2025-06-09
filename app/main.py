import falcon
from resource.quote import QuoteResource


app = falcon.App()
app.add_route("/quote", QuoteResource())
