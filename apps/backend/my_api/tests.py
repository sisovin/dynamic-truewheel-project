from django.test import TestCase
from django.urls import reverse
from rest_framework import status
from rest_framework.test import APIClient
from .models import User, Vehicle, Dealer, Testimonial

class UserModelTest(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(email='test@example.com', username='testuser', password='testpassword')

    def test_user_creation(self):
        self.assertEqual(self.user.email, 'test@example.com')
        self.assertEqual(self.user.username, 'testuser')
        self.assertTrue(self.user.check_password('testpassword'))

class VehicleModelTest(TestCase):
    def setUp(self):
        self.dealer = Dealer.objects.create(name='Test Dealer', address='123 Test St', phone_number='1234567890', email='dealer@example.com')
        self.vehicle = Vehicle.objects.create(make='Test Make', model='Test Model', year=2020, price=10000.00, dealer=self.dealer)

    def test_vehicle_creation(self):
        self.assertEqual(self.vehicle.make, 'Test Make')
        self.assertEqual(self.vehicle.model, 'Test Model')
        self.assertEqual(self.vehicle.year, 2020)
        self.assertEqual(self.vehicle.price, 10000.00)
        self.assertEqual(self.vehicle.dealer, self.dealer)

class DealerModelTest(TestCase):
    def setUp(self):
        self.dealer = Dealer.objects.create(name='Test Dealer', address='123 Test St', phone_number='1234567890', email='dealer@example.com')

    def test_dealer_creation(self):
        self.assertEqual(self.dealer.name, 'Test Dealer')
        self.assertEqual(self.dealer.address, '123 Test St')
        self.assertEqual(self.dealer.phone_number, '1234567890')
        self.assertEqual(self.dealer.email, 'dealer@example.com')

class TestimonialModelTest(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(email='test@example.com', username='testuser', password='testpassword')
        self.dealer = Dealer.objects.create(name='Test Dealer', address='123 Test St', phone_number='1234567890', email='dealer@example.com')
        self.vehicle = Vehicle.objects.create(make='Test Make', model='Test Model', year=2020, price=10000.00, dealer=self.dealer)
        self.testimonial = Testimonial.objects.create(user=self.user, vehicle=self.vehicle, content='Great car!', rating=5)

    def test_testimonial_creation(self):
        self.assertEqual(self.testimonial.user, self.user)
        self.assertEqual(self.testimonial.vehicle, self.vehicle)
        self.assertEqual(self.testimonial.content, 'Great car!')
        self.assertEqual(self.testimonial.rating, 5)

class UserAPITest(TestCase):
    def setUp(self):
        self.client = APIClient()
        self.user = User.objects.create_user(email='test@example.com', username='testuser', password='testpassword')

    def test_user_list(self):
        response = self.client.get(reverse('user-list'))
        self.assertEqual(response.status_code, status.HTTP_200_OK)

    def test_user_detail(self):
        response = self.client.get(reverse('user-detail', kwargs={'pk': self.user.pk}))
        self.assertEqual(response.status_code, status.HTTP_200_OK)

class VehicleAPITest(TestCase):
    def setUp(self):
        self.client = APIClient()
        self.dealer = Dealer.objects.create(name='Test Dealer', address='123 Test St', phone_number='1234567890', email='dealer@example.com')
        self.vehicle = Vehicle.objects.create(make='Test Make', model='Test Model', year=2020, price=10000.00, dealer=self.dealer)

    def test_vehicle_list(self):
        response = self.client.get(reverse('vehicle-list'))
        self.assertEqual(response.status_code, status.HTTP_200_OK)

    def test_vehicle_detail(self):
        response = self.client.get(reverse('vehicle-detail', kwargs={'pk': self.vehicle.pk}))
        self.assertEqual(response.status_code, status.HTTP_200_OK)

class AuthenticationTest(TestCase):
    def setUp(self):
        self.client = APIClient()
        self.user = User.objects.create_user(email='test@example.com', username='testuser', password='testpassword')

    def test_login(self):
        response = self.client.post(reverse('login'), {'email': 'test@example.com', 'password': 'testpassword'})
        self.assertEqual(response.status_code, status.HTTP_200_OK)

    def test_logout(self):
        self.client.login(email='test@example.com', password='testpassword')
        response = self.client.post(reverse('logout'))
        self.assertEqual(response.status_code, status.HTTP_200_OK)
