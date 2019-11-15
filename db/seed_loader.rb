# data = []
# require 'json'
# require 'open-uri'

# class Loader
#   @@venues = []

#   def self.load_data(url)
#     results = JSON.parse(open(url).read)
#     next_link = results["meta"]["pagination"]["links"]["next"]
#     @@venues = data.concat(results["data"])

#     if next_link
#       load_data(next_link)
#     end
#   end

#   def self.data
#     @@venues
#   end
# end


# # Loader.load_data('https://www.indieonthemove.com/venues?genre=9&sort_by=popularity&sort_order=descending')
# Loader.load_data('https://www.indieonthemove.com/api/venues?include=genres,blacklist_genres&genre=9&sort_by=popularity&sort_order=descending')


# // 20191106222245
# // https://www.indieonthemove.com/api/venues?include=genres,blacklist_genres&genre=9&sort_by=popularity&sort_order=descending

class Seed_Loader
  @@seeder = {
  "data": [
    {
      "uuid": "925704e3-ae84-4e07-ac3f-26ac66f75a10",
      "title": "Rockwood Music Hall",
      "slug": "rockwood-music-hall-new-york-new-york",
      "phone": "212.477.4155",
      "website": "http://www.rockwoodmusichall.com",
      "age": 21,
      "description": "<p>They host live music 7 nights a week on all 3 stages; stage 3 is reserved for softer acts. All shows are FREE unless otherwise noted.</p>",
      "status": "enabled",
      "featured": 0,
      "capacity": 70,
      "capacity_extra": "(Stage 1), 200 (Stage 2), 64 (stage 3).",
      "notes": "",
      "yelp": "",
      "twitter": "https://twitter.com/RockwoodNYC",
      "facebook": "https://www.facebook.com/rockwoodmusichall/",
      "eventful": "V0-001-001015033-0",
      "img_url": "/resize/408-5.jpg",
      "quickpitch": 1,
      "rating": 4.94,
      "popularity": 4.767865156805798,
      "vote_count": 17,
      "song_types": "All Song Types",
      "distance": 0,
      "postal_code": "10002",
      "address": "196 Allen Street",
      "longitude": -73.9887,
      "latitude": 40.7224,
      "country_id": 1,
      "state_id": 271,
      "city_id": 491,
      "country": "United States",
      "state": "New York",
      "state_code": "NY",
      
      "created_at": "2008-09-02 04:40:43",
      "genres": {
        "data": [
          {
            "id": 3,
            "genre": "All Genres",
            "order": 0
          }
        ]
      },
      "blacklist_genres": {
        "data": [
          {
            "id": 84,
            "genre": "Hard Rock",
            "order": 500
          },
          {
            "id": 37,
            "genre": "Hardcore",
            "order": 500
          },
          {
            "id": 38,
            "genre": "Hip Hop",
            "order": 500
          },
          {
            "id": 45,
            "genre": "Metal",
            "order": 500
          },
          {
            "id": 57,
            "genre": "Punk",
            "order": 500
          },
          {
            "id": 59,
            "genre": "Rap",
            "order": 500
          },
          {
            "id": 68,
            "genre": "Screamo",
            "order": 500
          },
          {
            "id": 78,
            "genre": "Thrash",
            "order": 500
          }
        ]
      }
    },
    {
      "uuid": "1dc222cd-bfd2-4328-8d68-b7e3b9e5081f",
      "title": "Alley Cat Restaurant & Bar",
      "slug": "alley-cat-restaurant-and-bar-carrollton-georgia",
      "phone": "770.834.2642",
      "website": "http://www.facebook.com/Alley-Cat-70555334926/",
      "age": 18,
      "description": "<p>\r\n\t\"Alley Cat Restaurant &amp; Bar in the heart of downtown Carrollton, Georgia is one of West Georgia's favorite locations for local nightlife gatherings, live music, good food, and a playful atmosphere.\"&nbsp;Live music is typically held on Friday and Saturday nights, but they are flexible.</p>",
      "status": "enabled",
      "featured": 0,
      "capacity": 100,
      "capacity_extra": "",
      "notes": "",
      "yelp": "",
      "twitter": "",
      "facebook": "",
      "eventful": "V0-001-002307449-2",
      "img_url": "/resize/alley311730_10150315087209927_70555334926_7463595_323422833_n.jpg",
      "quickpitch": 1,
      "rating": 5,
      "popularity": 4.720254681647943,
      "vote_count": 10,
      "song_types": "All Song Types",
      "distance": 0,
      "postal_code": "30117",
      "address": "120 Newnan Street",
      "longitude": -85.0743,
      "latitude": 33.5803,
      "country_id": 1,
      "state_id": 244,
      "city_id": 1782,
      "country": "United States",
      "state": "Georgia",
      "state_code": "GA",
      "city": "Carrollton",
      "created_at": "2010-10-11 16:11:50",
      "genres": {
        "data": [
          {
            "id": 3,
            "genre": "All Genres",
            "order": 0
          }
        ]
      },
      "blacklist_genres": {
        "data": [
          
        ]
      }
    },
    {
      "uuid": "7357d7b3-01eb-44be-b364-369ab0df994b",
      "title": "Red Rooster Coffee House",
      "slug": "red-rooster-coffee-house-aberdeen-south-dakota",
      "phone": "605.225.6603",
      "website": "http://www.redroostercoffeehouse.com",
      "age": 0,
      "description": "<p>This is a coffee shop/music venue. Most shows take place on Friday and Saturday nights but they can be held any night. Regular events include Tuesdays: Old Time Jam - 2:30pm - 5:30pm, Thursdays: Art &amp; Music Night - 5:30pm - 8:30pm, 2nd &amp; 4th Thursdays: Open Mic Night - 7pm. They avoid Wednesday nights and are closed on Sundays.</p>",
      "status": "enabled",
      "featured": 0,
      "capacity": 80,
      "capacity_extra": "",
      "notes": "",
      "yelp": "",
      "twitter": "https://www.twitter.com/redroosterhouse",
      "facebook": "https://www.facebook.com/RedRoosterCoffeeHouse/",
      "eventful": "V0-001-001070176-3",
      "img_url": "/resize/redrooster.jpg",
      "quickpitch": 1,
      "rating": 4.86,
      "popularity": 4.669912695357612,
      "vote_count": 14,
      "song_types": "All Song Types",
      "distance": 0,
      "postal_code": "57401",
      "address": "218 S. Main Street",
      "longitude": -98.4884742,
      "latitude": 45.4624404,
      "country_id": 1,
      "state_id": 280,
      "city_id": 747,
      "country": "United States",
      "state": "South Dakota",
      "state_code": "SD",
      "city": "Aberdeen",
      "created_at": "2008-12-13 19:21:53",
      "genres": {
        "data": [
          {
            "id": 3,
            "genre": "All Genres",
            "order": 0
          }
        ]
      },
      "blacklist_genres": {
        "data": [
          
        ]
      }
    },
    {
      "uuid": "3b1c7837-063d-4a79-b9cf-4451a35bc228",
      "title": "Woodlands Tavern",
      "slug": "woodlands-tavern-columbus-ohio",
      "phone": "614.299.4987",
      "website": "http://www.woodlandstavern.com",
      "age": 21,
      "description": "<p>Live music up to 7 nights a week.</p>",
      "status": "enabled",
      "featured": 0,
      "capacity": 300,
      "capacity_extra": "",
      "notes": "",
      "yelp": "",
      "twitter": "http://twitter.com/WoodlandsTavern",
      "facebook": "https://www.facebook.com/woodlandstavern",
      "eventful": "V0-001-004705935-6",
      "img_url": "/resize/woodland431033_309843222411330_1230806535_n.jpg",
      "quickpitch": 1,
      "rating": 5,
      "popularity": 4.667995675156178,
      "vote_count": 8,
      "song_types": "All Song Types",
      "distance": 0,
      "postal_code": "43212",
      "address": "1200 W. Third Avenue",
      "longitude": -83.0376,
      "latitude": 39.9851,
      "country_id": 1,
      "state_id": 272,
      "city_id": 367,
      "country": "United States",
      "state": "Ohio",
      "state_code": "OH",
      "city": "Columbus",
      "created_at": "2009-05-14 16:07:56",
      "genres": {
        "data": [
          {
            "id": 3,
            "genre": "All Genres",
            "order": 0
          }
        ]
      },
      "blacklist_genres": {
        "data": [
          
        ]
      }
    },
    {
      "uuid": "58628e1f-4c97-4940-9b04-f8d39b4e4704",
      "title": "Knitting Factory",
      "slug": "knitting-factory-brooklyn-new-york",
      "phone": "347.529.6696",
      "website": "http://bk.knittingfactory.com",
      "age": 0,
      "description": "<p>\"Serving music and beer all night every night.\"&nbsp;<a href=\"https://www.indieonthemove.com/venues?q=knitting%20factory&amp;sort_by=relevance&amp;sort_order=descending\">Browse other Knitting Factory locations</a>.</p>",
      "status": "enabled",
      "featured": 0,
      "capacity": 300,
      "capacity_extra": "",
      "notes": "",
      "yelp": "",
      "twitter": "https://twitter.com/Knitfactorybk",
      "facebook": "http://www.facebook.com/knittingfactorybrooklyn",
      "eventful": "V0-001-001149947-6",
      "img_url": "/resize/41578_110218607088_2522_n.jpg",
      "quickpitch": 1,
      "rating": 5,
      "popularity": 4.667995675156178,
      "vote_count": 8,
      "song_types": "All Song Types",
      "distance": 0,
      "postal_code": "11211",
      "address": "361 Metropolitan Avenue",
      "longitude": -73.9557,
      "latitude": 40.7142,
      "country_id": 1,
      "state_id": 271,
      "city_id": 678,
      "country": "United States",
      "state": "New York",
      "state_code": "NY",
      "city": "Brooklyn",
      "created_at": "2008-09-02 04:40:43",
      "genres": {
        "data": [
          {
            "id": 3,
            "genre": "All Genres",
            "order": 0
          }
        ]
      },
      "blacklist_genres": {
        "data": [
          
        ]
      }
    },
    {
      "uuid": "5ba5079b-f93b-4172-a8b5-bf303f817771",
      "title": "Molly's Bar",
      "slug": "mollys-bar-tijeras-new-mexico",
      "phone": "505.281.9911",
      "website": "http://www.mollys-music.com",
      "age": 21,
      "description": "<p>\n\tThey can host live music Monday-Saturday nights. Most Mondays are reserved for a Bluegrass jam. Shows take place outside when the weather is nice.</p>",
      "status": "enabled",
      "featured": 0,
      "capacity": 90,
      "capacity_extra": "- 150",
      "notes": "",
      "yelp": "",
      "twitter": "",
      "facebook": "",
      "eventful": "V0-001-003698507-3",
      "img_url": "/resize/mollybarphotos013.jpg.w180h135_.jpg",
      "quickpitch": 1,
      "rating": 5,
      "popularity": 4.63378996885974,
      "vote_count": 7,
      "song_types": "All Song Types",
      "distance": 0,
      "postal_code": "87059",
      "address": "546 State Highway 333",
      "longitude": -106.381,
      "latitude": 35.084,
      "country_id": 1,
      "state_id": 269,
      "city_id": 3377,
      "country": "United States",
      "state": "New Mexico",
      "state_code": "NM",
      "city": "Tijeras",
      "created_at": "2013-02-07 09:51:15",
      "genres": {
        "data": [
          {
            "id": 3,
            "genre": "All Genres",
            "order": 0
          }
        ]
      },
      "blacklist_genres": {
        "data": [
          
        ]
      }
    },
    {
      "uuid": "04290ae3-9588-4be6-867a-bb164217c115",
      "title": "Celtic Irish Pub",
      "slug": "celtic-irish-pub-pascagoula-mississippi",
      "phone": "228.938.6800",
      "website": "http://www.celticirishpub.com",
      "age": 18,
      "description": "<p>\r\n\t&quot;A neighborhood bar in Pascagoula, MS providing a variety of beers and cocktails as well as local entertainment including bands and karaoke.&quot; Live music up to 7 nights a week with Wednesdays being reserved for open mic.</p>",
      "status": "enabled",
      "featured": 0,
      "capacity": 209,
      "capacity_extra": "",
      "notes": "<p>\r\n\tRyan is annoyed by our rating system. Don&#39;t contact if don&#39;t have to.</p>",
      "yelp": "",
      "twitter": "",
      "facebook": "https://www.facebook.com/thecelticirishpub/",
      "eventful": "V0-001-001497726-7",
      "img_url": "/resize/276507_110859108949632_1114940544_n.jpg",
      "quickpitch": 1,
      "rating": 4.71,
      "popularity": 4.630195523273052,
      "vote_count": 32,
      "song_types": "All Song Types",
      "distance": 0,
      "postal_code": "39581",
      "address": "4901 Chicot Road",
      "longitude": -88.5275,
      "latitude": 30.381,
      "country_id": 1,
      "state_id": 262,
      "city_id": 719,
      "country": "United States",
      "state": "Mississippi",
      "state_code": "MS",
      "city": "Pascagoula",
      "created_at": "2008-11-27 15:38:02",
      "genres": {
        "data": [
          {
            "id": 3,
            "genre": "All Genres",
            "order": 0
          }
        ]
      },
      "blacklist_genres": {
        "data": [
          
        ]
      }
    },
    {
      "uuid": "90757eb0-76c9-48a0-8d51-f93cf919205c",
      "title": "The Town Pump Tavern",
      "slug": "the-town-pump-tavern-black-mountain-north-carolina",
      "phone": "828.357.5075",
      "website": "http://www.facebook.com/TheTownPumpTavern",
      "age": 21,
      "description": "<p>Additional Website: <a href=\"https://www.instagram.com/townpumptavernnc/\" target=\"_blank\">Instagram</a>. Live music up to 7 nights a week with open mic on Wednesdays.</p>",
      "status": "enabled",
      "featured": 0,
      "capacity": 45,
      "capacity_extra": "",
      "notes": "",
      "yelp": "",
      "twitter": "",
      "facebook": "",
      "eventful": "V0-001-000830090-5",
      "img_url": "/resize/townpump533616_10150646658653014_1098896924_n.jpg",
      "quickpitch": 1,
      "rating": 4.8,
      "popularity": 4.629818472378602,
      "vote_count": 15,
      "song_types": "Originals Only",
      "distance": 0,
      "postal_code": "28711",
      "address": "135 Cherry Street",
      "longitude": -82.3203,
      "latitude": 35.6162,
      "country_id": 1,
      "state_id": 264,
      "city_id": 1384,
      "country": "United States",
      "state": "North Carolina",
      "state_code": "NC",
      "city": "Black Mountain",
      "created_at": "2013-02-22 15:38:15",
      "genres": {
        "data": [
          {
            "id": 3,
            "genre": "All Genres",
            "order": 0
          }
        ]
      },
      "blacklist_genres": {
        "data": [
          
        ]
      }
    },
    {
      "uuid": "dae7bc95-364c-4079-931d-20dd8998858f",
      "title": "Buzzbin Art & Music Shop",
      "slug": "buzzbin-art-music-shop-canton-ohio",
      "phone": "330.754.6770",
      "website": "https://buzzbincanton.com/",
      "age": 0,
      "description": "<p>\"The Buzzbin Art &amp; Music Shop is a music venue born out a local Arts &amp; Entertainment paper, Buzzbin Magazine.\" Shows can be held up to 7 nights a week.</p>",
      "status": "enabled",
      "featured": 0,
      "capacity": 200,
      "capacity_extra": "inside, 300 outside.",
      "notes": "",
      "yelp": "",
      "twitter": "",
      "facebook": "https://www.facebook.com/buzzbinshop",
      "eventful": "V0-001-004973890-7",
      "img_url": "/resize/buzzbin.jpg",
      "quickpitch": 1,
      "rating": 4.69,
      "popularity": 4.6179803523612994,
      "vote_count": 35,
      "song_types": "All Song Types",
      "distance": 0,
      "postal_code": "44702",
      "address": "331 Cleveland Avenue NW",
      "longitude": -81.3759,
      "latitude": 40.8007,
      "country_id": 1,
      "state_id": 272,
      "city_id": 1955,
      "country": "United States",
      "state": "Ohio",
      "state_code": "OH",
      "city": "Canton",
      "created_at": "2011-02-20 15:24:20",
      "genres": {
        "data": [
          {
            "id": 3,
            "genre": "All Genres",
            "order": 0
          }
        ]
      },
      "blacklist_genres": {
        "data": [
          {
            "id": 38,
            "genre": "Hip Hop",
            "order": 500
          },
          {
            "id": 59,
            "genre": "Rap",
            "order": 500
          }
        ]
      }
    },
    {
      "uuid": "99a7d03a-3f42-4113-9915-9b35bef058bd",
      "title": "Be Here Now",
      "slug": "be-here-now-muncie-indiana",
      "phone": "765.216.6754",
      "website": "http://beherenowmusic.com",
      "age": 18,
      "description": "<p>Live music is held on Monday, Tuesday, Thursday, Friday and Saturday nights, with Tuesdays being reserved for open mic and special guests.</p>",
      "status": "enabled",
      "featured": 0,
      "capacity": 160,
      "capacity_extra": "downstairs (where the bands perform), 420 total.",
      "notes": "<p>\r\n\tbehearnow1@live.com?</p>",
      "yelp": "",
      "twitter": "",
      "facebook": "https://www.facebook.com/beherenowmusic/",
      "eventful": "V0-001-004441914-0",
      "img_url": "/resize/be50233_146195442058194_18000_n.jpg",
      "quickpitch": 1,
      "rating": 4.79,
      "popularity": 4.611251520517363,
      "vote_count": 14,
      "song_types": "All Song Types",
      "distance": 0,
      "postal_code": "47303",
      "address": "505 N. Dill Street",
      "longitude": -85.4048,
      "latitude": 40.1979,
      "country_id": 1,
      "state_id": 250,
      "city_id": 927,
      "country": "United States",
      "state": "Indiana",
      "state_code": "IN",
      "city": "Muncie",
      "created_at": "2011-01-14 10:45:03",
      "genres": {
        "data": [
          {
            "id": 3,
            "genre": "All Genres",
            "order": 0
          }
        ]
      },
      "blacklist_genres": {
        "data": [
          
        ]
      }
    },
    {
      "uuid": "43dd5686-3cf9-443f-add7-1cb43173cfac",
      "title": "The Purple Fiddle",
      "slug": "the-purple-fiddle-thomas-west-virginia",
      "phone": "304.463.4040",
      "website": "http://www.purplefiddle.com",
      "age": 0,
      "description": "<p>\"The Purple Fiddle Cafe, Brews and Stage is a family-friendly, non-smoking music venue and deli-style restaurant. They are located in the old DePollo General Store in historic Thomas, WV, in the beautiful Allegheny mountains.\" Shows can be held any night of the week, but are dependent on the local tourist crowd.</p>",
      "status": "enabled",
      "featured": 0,
      "capacity": 150,
      "capacity_extra": "",
      "notes": "<p>\r\n\t&nbsp;</p>\r\n<div>\r\n\t<p>\r\n\t\tBlacklisted. Be careful when contacting.</p>\r\n</div>\r\n<p>\r\n\t&nbsp;</p>",
      "yelp": "",
      "twitter": "https://twitter.com/thepurplefiddle",
      "facebook": "https://www.facebook.com/thepurplefiddle/",
      "eventful": "V0-001-001157548-4",
      "img_url": "/resize/373301_150047567945_1979153977_n.jpg",
      "quickpitch": 1,
      "rating": 4.82,
      "popularity": 4.59620381926524,
      "vote_count": 11,
      "song_types": "Originals Only",
      "distance": 0,
      "postal_code": "26292",
      "address": "96 East Avenue",
      "longitude": -79.4989,
      "latitude": 39.1492,
      "country_id": 1,
      "state_id": 289,
      "city_id": 1553,
      "country": "United States",
      "state": "West Virginia",
      "state_code": "WV",
      "city": "Thomas",
      "created_at": "2010-05-09 17:59:40",
      "genres": {
        "data": [
          {
            "id": 3,
            "genre": "All Genres",
            "order": 0
          }
        ]
      },
      "blacklist_genres": {
        "data": [
          {
            "id": 37,
            "genre": "Hardcore",
            "order": 500
          },
          {
            "id": 45,
            "genre": "Metal",
            "order": 500
          },
          {
            "id": 57,
            "genre": "Punk",
            "order": 500
          },
          {
            "id": 68,
            "genre": "Screamo",
            "order": 500
          },
          {
            "id": 78,
            "genre": "Thrash",
            "order": 500
          }
        ]
      }
    },
    {
      "uuid": "9bc486aa-dd14-4b48-b2ea-82623e91f94a",
      "title": "Dickson Street Pub",
      "slug": "dickson-street-pub-fayetteville-arkansas",
      "phone": "479.935.3579",
      "website": "http://www.dicksonstreetpub.com",
      "age": 21,
      "description": "<p>Live music is held on Thursday, Friday, and Saturday nights 7:30-11:30 PM.</p>",
      "status": "enabled",
      "featured": 0,
      "capacity": 50,
      "capacity_extra": "",
      "notes": "",
      "yelp": "",
      "twitter": "",
      "facebook": "https://www.facebook.com/DicksonStPub",
      "eventful": "V0-001-005321952-4",
      "img_url": "/resize/312667_273899315978305_581926496_n.jpg",
      "quickpitch": 1,
      "rating": 5,
      "popularity": 4.591726399763632,
      "vote_count": 6,
      "song_types": "All Song Types",
      "distance": 0,
      "postal_code": "72701",
      "address": "303 W. Dickson Street",
      "longitude": -94.1632,
      "latitude": 36.0664,
      "country_id": 1,
      "state_id": 234,
      "city_id": 294,
      "country": "United States",
      "state": "Arkansas",
      "state_code": "AR",
      "city": "Fayetteville",
      "created_at": "2014-12-30 16:11:16",
      "genres": {
        "data": [
          {
            "id": 3,
            "genre": "All Genres",
            "order": 0
          }
        ]
      },
      "blacklist_genres": {
        "data": [
          
        ]
      }
    },
    {
      "uuid": "9c2e21a3-f9a9-4898-b3cb-1658dd73f94c",
      "title": "The Soul Bar",
      "slug": "the-soul-bar-augusta-georgia",
      "phone": "",
      "website": "http://www.soulbar.com",
      "age": 21,
      "description": "<p>\n\tAdditional Website: <a href=\"https://www.facebook.com/pages/SoulBarAugusta/207973412586823?ref=hl#\" rel=\"nofollow\" target=\"_blank\">Facebook</a>. Shows can take place any night of the week, but most fall on Friday and Saturday nights.</p>",
      "status": "enabled",
      "featured": 0,
      "capacity": 200,
      "capacity_extra": "",
      "notes": "<p>\n\tAdditional Booking Emails: coco@soulbar.com and info@?</p>",
      "yelp": "",
      "twitter": "",
      "facebook": "https://www.facebook.com/pages/SoulBarAugusta/207973412586823?ref=hl#",
      "eventful": "V0-001-001377364-6",
      "img_url": "/resize/soulimages.jpg",
      "quickpitch": 1,
      "rating": 5,
      "popularity": 4.591726399763632,
      "vote_count": 6,
      "song_types": "All Song Types",
      "distance": 0,
      "postal_code": "30901",
      "address": "984 Broad Street",
      "longitude": -81.9697,
      "latitude": 33.4763,
      "country_id": 1,
      "state_id": 244,
      "city_id": 319,
      "country": "United States",
      "state": "Georgia",
      "state_code": "GA",
      "city": "Augusta",
      "created_at": "2009-06-16 16:12:44",
      "genres": {
        "data": [
          {
            "id": 3,
            "genre": "All Genres",
            "order": 0
          }
        ]
      },
      "blacklist_genres": {
        "data": [
          
        ]
      }
    },
    {
      "uuid": "8c83f0d8-5de1-495d-88a8-726ccfe11863",
      "title": "O'Malley's Pub",
      "slug": "omalleys-pub-tacoma-washington",
      "phone": "253.627.9403",
      "website": "http://www.facebook.com/allthewhisky",
      "age": 21,
      "description": "<p>This friendly neighborhood bar hosts live music on Friday and Saturday nights.</p>",
      "status": "enabled",
      "featured": 0,
      "capacity": 199,
      "capacity_extra": "",
      "notes": "",
      "yelp": "",
      "twitter": "https://twitter.com/omalleystacoma",
      "facebook": "",
      "eventful": "V0-001-002335709-4",
      "img_url": "/resize/omalley22450_246617584819_246616364819_3040428_7605413_n.jpg",
      "quickpitch": 1,
      "rating": 5,
      "popularity": 4.591726399763632,
      "vote_count": 6,
      "song_types": "All Song Types",
      "distance": 0,
      "postal_code": "98406",
      "address": "2403 6th Avenue",
      "longitude": -122.469,
      "latitude": 47.2554,
      "country_id": 1,
      "state_id": 287,
      "city_id": 578,
      "country": "United States",
      "state": "Washington",
      "state_code": "WA",
      "city": "Tacoma",
      "created_at": "2012-05-02 09:28:47",
      "genres": {
        "data": [
          {
            "id": 3,
            "genre": "All Genres",
            "order": 0
          }
        ]
      },
      "blacklist_genres": {
        "data": [
          
        ]
      }
    },
    {
      "uuid": "c7300500-4196-4477-bb88-933bbc9c6517",
      "title": "Red Brick Bar",
      "slug": "red-brick-bar-norman-oklahoma",
      "phone": "405.579.6227",
      "website": "http://www.facebook.com/pages/Red-Brick-Bar/416655671758921",
      "age": 21,
      "description": "<p>\n\tLive music can be held any night of the week. Friday night shows tend to be Singer-Songwriters from 7-9 PM as they have karaoke later in the evening. Tuesday shows are sporadic.</p>",
      "status": "enabled",
      "featured": 0,
      "capacity": 85,
      "capacity_extra": "",
      "notes": "",
      "yelp": "",
      "twitter": "",
      "facebook": "",
      "eventful": "V0-001-007109693-6",
      "img_url": "/resize/1460247_524701810954306_811244609_n.jpg",
      "quickpitch": 1,
      "rating": 4.75,
      "popularity": 4.554302606262028,
      "vote_count": 12,
      "song_types": "All Song Types",
      "distance": 0,
      "postal_code": "73069",
      "address": "311 E. Main Street",
      "longitude": -97.4402,
      "latitude": 35.2226,
      "country_id": 1,
      "state_id": 273,
      "city_id": 495,
      "country": "United States",
      "state": "Oklahoma",
      "state_code": "OK",
      "city": "Norman",
      "created_at": "2014-08-27 11:47:37",
      "genres": {
        "data": [
          {
            "id": 3,
            "genre": "All Genres",
            "order": 0
          }
        ]
      },
      "blacklist_genres": {
        "data": [
          
        ]
      }
    }
  ],
  "meta": {
    "pagination": {
      "total": 6831,
      "count": 15,
      "per_page": 15,
      "current_page": 1,
      "total_pages": 456,
      "links": {
        "next": "https://www.indieonthemove.com/api/venues?include=genres%2Cblacklist_genres&genre=9&sort_by=popularity&sort_order=descending&page=2"
      }
    }
  }
}

end