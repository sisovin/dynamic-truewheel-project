from django.urls import path
from .views import ExampleModelViewSet, VehicleViewSet, UserViewSet, DealerViewSet, TestimonialViewSet, AuthViewSet, SearchViewSet

example_model_list = ExampleModelViewSet.as_view({
    'get': 'list',
    'post': 'create'
})

example_model_detail = ExampleModelViewSet.as_view({
    'get': 'retrieve',
    'put': 'update',
    'delete': 'destroy'
})

vehicle_list = VehicleViewSet.as_view({
    'get': 'list',
    'post': 'create'
})

vehicle_detail = VehicleViewSet.as_view({
    'get': 'retrieve',
    'put': 'update',
    'delete': 'destroy'
})

user_list = UserViewSet.as_view({
    'get': 'list',
    'post': 'create'
})

user_detail = UserViewSet.as_view({
    'get': 'retrieve',
    'put': 'update',
    'delete': 'destroy'
})

dealer_list = DealerViewSet.as_view({
    'get': 'list',
    'post': 'create'
})

dealer_detail = DealerViewSet.as_view({
    'get': 'retrieve',
    'put': 'update',
    'delete': 'destroy'
})

testimonial_list = TestimonialViewSet.as_view({
    'get': 'list',
    'post': 'create'
})

testimonial_detail = TestimonialViewSet.as_view({
    'get': 'retrieve',
    'put': 'update',
    'delete': 'destroy'
})

auth_login = AuthViewSet.as_view({
    'post': 'login'
})

auth_logout = AuthViewSet.as_view({
    'post': 'logout'
})

search = SearchViewSet.as_view({
    'get': 'search'
})

urlpatterns = [
    path('example-models/', example_model_list, name='example-model-list'),
    path('example-models/<int:pk>/', example_model_detail, name='example-model-detail'),
    path('vehicles/', vehicle_list, name='vehicle-list'),
    path('vehicles/<int:pk>/', vehicle_detail, name='vehicle-detail'),
    path('users/', user_list, name='user-list'),
    path('users/<int:pk>/', user_detail, name='user-detail'),
    path('dealers/', dealer_list, name='dealer-list'),
    path('dealers/<int:pk>/', dealer_detail, name='dealer-detail'),
    path('testimonials/', testimonial_list, name='testimonial-list'),
    path('testimonials/<int:pk>/', testimonial_detail, name='testimonial-detail'),
    path('auth/login/', auth_login, name='auth-login'),
    path('auth/logout/', auth_logout, name='auth-logout'),
    path('search/', search, name='search'),
]
