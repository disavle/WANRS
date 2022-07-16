from django.db import models

class CardType(models.Model):
    type = models.CharField(max_length=100, blank=True, default='')

    def __str__(self):
        return self.type

    class Meta:
        verbose_name = "Тип карты"
        verbose_name_plural = "Типы карт"

class Card(models.Model):
    text = models.TextField(blank=True, default='')
    type = models.ForeignKey(CardType, on_delete=models.CASCADE)

    def __str__(self):
        return self.text

    class Meta:
        verbose_name = "Карта"
        verbose_name_plural = "Карты"



