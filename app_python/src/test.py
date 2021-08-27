
from django.test import TestCase, Client
from django.urls import reverse
from app_python.src import settings


from app_python.src import views

class ViewsTestCase(TestCase):
    def setUp(self):
        self.client = Client()

    from django.urls import reverse

    def test_index_returns_code_200(self):
        response = self.client.get(reverse('index', args=[]))
        self.assertEqual(response.status_code, 200)

    def test_index_returns_correct_template(self):
        response = self.client.get(reverse('index', args=[]))
        self.assertTemplateUsed(response, '../templates/index.html')