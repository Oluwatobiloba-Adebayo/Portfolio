from django.conf import settings
from .forms import  ContactForm 
from django.views.generic import TemplateView 
from django.core.mail import send_mail
from django.shortcuts import render
from django.http import HttpResponse
from django.shortcuts import render




class HomePageView(TemplateView):
    template_name = 'index.html'



def contact_view(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        
        if form.is_valid():
            form.save()
            email_subject = f'New contact {form.cleaned_data["email"]}: {form.cleaned_data["name"]}'
            email_message = form.cleaned_data['message']
            send_mail(email_subject, email_message, settings.CONTACT_EMAIL, settings.ADMIN_EMAILS)
            return render(request, 'contact_success.html')

    form = ContactForm()
    context = {'form': form}
    return render(request, 'index.html', context)

        




