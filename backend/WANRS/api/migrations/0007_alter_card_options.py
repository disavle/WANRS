# Generated by Django 4.0.6 on 2022-07-16 13:55

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0006_alter_card_options_alter_cardtype_options'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='card',
            options={'ordering': ['type'], 'verbose_name': 'Карта', 'verbose_name_plural': 'Карты'},
        ),
    ]
