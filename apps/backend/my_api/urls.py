from django.urls import path
from .views import ExampleModelViewSet

example_model_list = ExampleModelViewSet.as_view({
    'get': 'list',
    'post': 'create'
})

example_model_detail = ExampleModelViewSet.as_view({
    'get': 'retrieve',
    'put': 'update',
    'delete': 'destroy'
})

urlpatterns = [
    path('example-models/', example_model_list, name='example-model-list'),
    path('example-models/<int:pk>/', example_model_detail, name='example-model-detail'),
]
