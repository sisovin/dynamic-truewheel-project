from django.utils.deprecation import MiddlewareMixin
import jwt
from django.conf import settings
from django.http import JsonResponse

class JWTAuthenticationMiddleware(MiddlewareMixin):
    def process_request(self, request):
        auth_header = request.headers.get('Authorization')
        if auth_header:
            try:
                token = auth_header.split(' ')[1]
                payload = jwt.decode(token, settings.SECRET_KEY, algorithms=['HS256'])
                request.user = payload
            except (jwt.ExpiredSignatureError, jwt.InvalidTokenError):
                return JsonResponse({'error': 'Invalid token'}, status=401)
        else:
            request.user = None

    def process_response(self, request, response):
        return response

class CORSMiddleware(MiddlewareMixin):
    def process_request(self, request):
        response = self.process_response(request, None)
        return response

    def process_response(self, request, response):
        if response:
            response['Access-Control-Allow-Origin'] = '*'
            response['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
            response['Access-Control-Allow-Headers'] = 'Authorization, Content-Type'
        return response
