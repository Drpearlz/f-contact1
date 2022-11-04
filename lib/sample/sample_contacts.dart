import 'package:pcontacts/models/contact.dart';
import 'package:pcontacts/models/contact_dets.dart';


mixin SampleContact implements Contact {
  static final List<Contact> items = [
    Contact(
        name: 'Robert Peters',
        url:
            'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg',
        dets: <ContactDets>[
          ContactDets(
              title: 'Summary',
              text:
                  'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
          ContactDets(
              title: 'How to Get There',
              text:
                  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]),
    Contact(
        name: 'Moses Wellington',
        url:
            'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg',
        dets: <ContactDets>[
          ContactDets(
              title: 'Summary',
              text:
                  'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
          ContactDets(
              title: 'How to Get There',
              text:
                  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]),
    Contact(
        name: 'Orabelema Dick',
        url:
            'https://images.pexels.com/photos/3992656/pexels-photo-3992656.png',
        dets: <ContactDets>[
          ContactDets(
              title: 'Summary',
              text:
                  'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
          ContactDets(
              title: 'How to Get There',
              text:
                  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]),
    Contact(
        name: 'Sandra Wike',
        url:
            'https://images.pexels.com/photos/2071660/pexels-photo-2071660.jpeg',
        dets: <ContactDets>[
          ContactDets(
              title: 'Summary',
              text:
                  'A Pharmacist'),
          ContactDets(
              title: 'How to Get There',
              text:
                  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]),
        
    Contact(
        name: 'Esther Osu-ji',
        url:
            'https://images.pexels.com/photos/3385338/pexels-photo-3385338.jpeg',
        dets: <ContactDets>[
          ContactDets(
              title: 'Summary',
              text:
                  'Software Developer'),
          ContactDets(
              title: 'How to contact them',
              text:
                  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]),
    Contact(
        name: 'Tonye West',
        url:
            'https://images.pexels.com/photos/3992656/pexels-photo-3992656.png',
        dets: <ContactDets>[
          ContactDets(
              title: 'Summary',
              text:
                  'Tonye is a fulltime photographer'),
          ContactDets(
              title: 'How to Get to Them',
              text:
                  'Tonye grew up with pictures, in a picturesque scene with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]),
    Contact(
        name: 'Fredrick David',
        url: 'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg',
        dets: <ContactDets>[
          ContactDets(
              title: 'Summary',
              text:
                  'An Economics Student'),
          ContactDets(
              title: 'How to Get to Them',
              text:
                  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]),
    Contact(
        name: 'Valerie Austin',
        url:
            'https://images.pexels.com/photos/3992656/pexels-photo-3992656.png',
        dets: <ContactDets>[
          ContactDets(
              title: 'Summary',
              text:
                  'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
          ContactDets(
              title: 'How to Get There',
              text:
                  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]),
    Contact(
        name: 'Frank Nyesom',
        url:
            'https://images.pexels.com/photos/2071660/pexels-photo-2071660.jpeg',
        dets: <ContactDets>[
          ContactDets(
              title: 'Summary',
              text:
                  'A Pharmacist'),
          ContactDets(
              title: 'How to Get There',
              text:
                  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ]),
  ];
  static Contact fetchAny() {
    return items[0];
  }

  static List<Contact> fetchAll() {
    return items;
  }
}