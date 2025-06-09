class QuoteService:
    def quote(self) -> str:
        """
        Returns a quote
        """
        quote = "To be or not to be, that is the question."
        return {"quote": quote}
