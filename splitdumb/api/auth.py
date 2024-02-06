import functools
from django.http import HttpResponseForbidden

def check_auth(func):
    @functools.wraps(func)
    def wrapper_decorator(req, *args, **kwargs):
        if not req.user.is_authenticated:
            return HttpResponseForbidden("fuck you")
        return func(req, *args, **kwargs)
    return wrapper_decorator
