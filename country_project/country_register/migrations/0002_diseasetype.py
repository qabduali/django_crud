# Generated by Django 3.2.9 on 2021-11-29 13:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('country_register', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Diseasetype',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('description', models.CharField(blank=True, max_length=140, null=True)),
            ],
            options={
                'db_table': 'diseasetype',
                'managed': False,
            },
        ),
    ]
