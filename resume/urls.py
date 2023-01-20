from django.urls import path
from .views import HomePageView, contact_view



urlpatterns = [
    
    path('contact/', contact_view, name='contact' ),
    path('', HomePageView.as_view(), name='home'),
]
