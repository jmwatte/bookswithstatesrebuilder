String eenboek = '''
{
  "book": {
    "title": "Max",
    "description": "Beek"
  },
  "page": [
    {
      "voorkant": "Married to the Mob",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Poklosie",
      "achterkant": "Crime|Drama|Mystery"
    },
    {
      "voorkant": "Big Bad Mama",
      "achterkant": "Action|Comedy"
    },
    {
      "voorkant": "Detachment",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Wonder Boys",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Dukes, The",
      "achterkant": "Comedy|Crime|Drama"
    },
    {
      "voorkant": "Burn! (Queimada)",
      "achterkant": "Drama|Thriller"
    },
    {
      "voorkant": "Dr. Horrible's Sing-Along Blog",
      "achterkant": "Comedy|Drama|Musical|Sci-Fi"
    },
    {
      "voorkant": "Fools Rush In",
      "achterkant": "Comedy|Drama|Romance"
    },
    {
      "voorkant": "Beautiful People",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "The Thief",
      "achterkant": "Crime|Drama|Film-Noir"
    }
  ]
}
''';

String rawmaterial = '''[{
  "book": {
    "title": "Max",
    "description": "Beek"
  },
  "page": [
    {
      "voorkant": "Married to the Mob",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Poklosie",
      "achterkant": "Crime|Drama|Mystery"
    },
    {
      "voorkant": "Big Bad Mama",
      "achterkant": "Action|Comedy"
    },
    {
      "voorkant": "Detachment",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Wonder Boys",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Dukes, The",
      "achterkant": "Comedy|Crime|Drama"
    },
    {
      "voorkant": "Burn! (Queimada)",
      "achterkant": "Drama|Thriller"
    },
    {
      "voorkant": "Dr. Horrible's Sing-Along Blog",
      "achterkant": "Comedy|Drama|Musical|Sci-Fi"
    },
    {
      "voorkant": "Fools Rush In",
      "achterkant": "Comedy|Drama|Romance"
    },
    {
      "voorkant": "Beautiful People",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "The Thief",
      "achterkant": "Crime|Drama|Film-Noir"
    }
  ]
}, {
  "book": {
    "title": "Anjanette",
    "description": "Moneypenny"
  },
  "page": [
    {
      "voorkant": "Half Life of Timofey Berezin, The (PU-239)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "First Strike (Police Story 4: First Strike) (Ging chaat goo si 4: Ji gaan daan yam mo)",
      "achterkant": "Action|Adventure|Comedy|Thriller"
    },
    {
      "voorkant": "Valiant",
      "achterkant": "Adventure|Animation|Children|Comedy|Fantasy|War"
    },
    {
      "voorkant": "Late August, Early September (Fin août, début septembre)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Life After People",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Black Beauty",
      "achterkant": "Children|Drama"
    },
    {
      "voorkant": "Wedding Weekend, The (Sing Now or Forever Hold Your Peace) (Shut Up and Sing)",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Boy Meets Boy",
      "achterkant": "Romance"
    },
    {
      "voorkant": "Year of the Yao, The",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Day of the Jackal, The",
      "achterkant": "Crime|Thriller"
    },
    {
      "voorkant": "New Waterford Girl",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Purple Butterfly (Zi hudie)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "City Island",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Prayers for Bobby",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Game, The",
      "achterkant": "Drama|Mystery|Thriller"
    },
    {
      "voorkant": "Footprints of a Spirit, The (Huellas de un espíritu)",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Gremlins",
      "achterkant": "Comedy|Horror"
    }
  ]
}, {
  "book": {
    "title": "Lemmie",
    "description": "McCotter"
  },
  "page": [
    {
      "voorkant": "Strange Case of Dr. Jekyll and Mr. Hyde, The",
      "achterkant": "Drama|Horror|Sci-Fi|Thriller"
    },
    {
      "voorkant": "Molly Maxwell",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Desi Boyz",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "No Deposit, No Return",
      "achterkant": "Children|Comedy"
    },
    {
      "voorkant": "Hop",
      "achterkant": "Animation|Children|Comedy"
    },
    {
      "voorkant": "ABC Africa",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Heartless",
      "achterkant": "Fantasy|Horror|Mystery|Thriller"
    },
    {
      "voorkant": "The Invisible Boy",
      "achterkant": "Fantasy|Sci-Fi"
    },
    {
      "voorkant": "Bionicle 3: Web of Shadows",
      "achterkant": "Action|Adventure|Animation|Children"
    },
    {
      "voorkant": "Zero Tolerance (Noll tolerans)",
      "achterkant": "Action|Crime|Thriller"
    },
    {
      "voorkant": "Back In Action",
      "achterkant": "Action|Adventure|Drama"
    },
    {
      "voorkant": "Gospel, The",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Ten Skies",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "xXx",
      "achterkant": "Action|Crime|Thriller"
    },
    {
      "voorkant": "Unmade Beds",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Advertising and the End of the World",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Grocer's Son, The (Fils de l'épicier, Le)",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "D.A.R.Y.L.",
      "achterkant": "Adventure|Children|Sci-Fi"
    },
    {
      "voorkant": "Benji",
      "achterkant": "Adventure|Children"
    },
    {
      "voorkant": "Puffy Chair, The",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Man Exposed",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Wild Beasts (Wild beasts - Belve feroci)",
      "achterkant": "Horror"
    },
    {
      "voorkant": "Strawberries in the Supermarket (Jagoda u supermarketu) ",
      "achterkant": "Action|Adventure|Comedy"
    },
    {
      "voorkant": "Streetcar Named Desire, A",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Give 'em Hell, Malone",
      "achterkant": "Action|Crime|Thriller"
    },
    {
      "voorkant": "Joy Ride 2: Dead Ahead",
      "achterkant": "Action|Horror|Thriller"
    },
    {
      "voorkant": "Flodder 3",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Gamera vs. Jiger",
      "achterkant": "Action|Fantasy|Sci-Fi"
    },
    {
      "voorkant": "Halloween",
      "achterkant": "Horror"
    },
    {
      "voorkant": "Robot",
      "achterkant": "Action|Comedy|Musical|Sci-Fi"
    },
    {
      "voorkant": "Exorcist III, The",
      "achterkant": "Horror"
    },
    {
      "voorkant": "Beyond a Reasonable Doubt",
      "achterkant": "Crime|Drama|Film-Noir"
    },
    {
      "voorkant": "Joe + Belle",
      "achterkant": "Comedy|Crime|Drama|Romance"
    },
    {
      "voorkant": "Konopielka",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Smoke on the Potato Fields (Dým bramborové nate)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "War Lord, The",
      "achterkant": "Drama|Romance|War"
    },
    {
      "voorkant": "Memories (Memorîzu)",
      "achterkant": "Animation|Fantasy|Sci-Fi|Thriller"
    },
    {
      "voorkant": "President's Last Bang, The (Geuddae geusaramdeul)",
      "achterkant": "Comedy|Crime|Drama"
    },
    {
      "voorkant": "Fellini's Roma (Roma)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Unfinished Business",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Open Hearts (Elsker dig for evigt)",
      "achterkant": "Romance"
    },
    {
      "voorkant": "India Song",
      "achterkant": "Drama|Fantasy|Romance"
    },
    {
      "voorkant": "Fiston",
      "achterkant": "Comedy"
    }
  ]
}, {
  "book": {
    "title": "Darin",
    "description": "Carvill"
  },
  "page": [
    {
      "voorkant": "Tales of Hoffmann, The",
      "achterkant": "Adventure|Fantasy|Musical|Romance"
    },
    {
      "voorkant": "Across the Bridge",
      "achterkant": "Crime|Drama|Thriller"
    },
    {
      "voorkant": "Geronimo: An American Legend",
      "achterkant": "Drama|Western"
    },
    {
      "voorkant": "Voyager (Homo Faber)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Mirage Men",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Time Walker (a.k.a. Being From Another Planet)",
      "achterkant": "Horror|Sci-Fi"
    },
    {
      "voorkant": "Exercice de l'État, L'",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Messengers, The",
      "achterkant": "Drama|Horror|Thriller"
    },
    {
      "voorkant": "Blob, The",
      "achterkant": "Horror|Sci-Fi"
    },
    {
      "voorkant": "Louis C.K.: Shameless",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Pillow Talk",
      "achterkant": "Comedy|Musical|Romance"
    },
    {
      "voorkant": "La Putain du roi",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Expelled: No Intelligence Allowed",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Independents",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Living Sea, The",
      "achterkant": "Documentary|IMAX"
    },
    {
      "voorkant": "Loved Ones, The",
      "achterkant": "Horror"
    },
    {
      "voorkant": "I'm No Angel",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Street Fighter, The (Gekitotsu! Satsujin ken)",
      "achterkant": "Action"
    },
    {
      "voorkant": "Paranoid Park",
      "achterkant": "Crime|Drama"
    },
    {
      "voorkant": "Mariachi, El",
      "achterkant": "Action|Crime|Thriller|Western"
    },
    {
      "voorkant": "Princess Bride, The",
      "achterkant": "Action|Adventure|Comedy|Fantasy|Romance"
    },
    {
      "voorkant": "Maze Runner, The",
      "achterkant": "Action|Mystery|Sci-Fi"
    },
    {
      "voorkant": "Conspiracy, The",
      "achterkant": "Horror|Thriller"
    },
    {
      "voorkant": "Spud",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Runner, The (Davandeh)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Satan's Sword II (Daibosatsu toge: Ryujin no maki)",
      "achterkant": "Action|Drama"
    },
    {
      "voorkant": "Vital",
      "achterkant": "Thriller"
    },
    {
      "voorkant": "Hunting Party, The",
      "achterkant": "Action|Adventure|Comedy|Drama|Thriller"
    },
    {
      "voorkant": "Whip Hand, The",
      "achterkant": "Action|Adventure|Crime|Drama|Sci-Fi|Thriller|War"
    },
    {
      "voorkant": "Color Wheel, The",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "What the Day Owes the Night",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Confessions of a Shopaholic",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "Heart in Winter, A (Un coeur en hiver)",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Lonely Are the Brave",
      "achterkant": "Drama|Western"
    },
    {
      "voorkant": "Hamlet",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Diary of a Country Priest (Journal d'un curé de campagne)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Glengarry Glen Ross",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Call Girl",
      "achterkant": "Drama|Thriller"
    },
    {
      "voorkant": "From Zero to Hero",
      "achterkant": "Comedy|Drama|Romance"
    },
    {
      "voorkant": "Asthenic Syndrome, The (Astenicheskiy sindrom)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "End of the Line",
      "achterkant": "Horror|Thriller"
    },
    {
      "voorkant": "Specials, The",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Reparando",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Slaying the Badger",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Bugs Bunny's Looney Christmas Tales",
      "achterkant": "Animation|Children"
    },
    {
      "voorkant": "Pascali's Island",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Kill Me Again",
      "achterkant": "Crime|Drama|Thriller"
    },
    {
      "voorkant": "Aliisa",
      "achterkant": "Drama"
    }
  ]
}, {
  "book": {
    "title": "Jolynn",
    "description": "Beagin"
  },
  "page": [
    {
      "voorkant": "Wendell Baker Story, The",
      "achterkant": "Comedy|Drama|Romance"
    },
    {
      "voorkant": "God Save My Shoes",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Toughest Man in the World, The",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Erkan & Stefan 2",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Lilian's Story",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Scorpion King 2: Rise of a Warrior, The",
      "achterkant": "Action|Adventure|Fantasy"
    },
    {
      "voorkant": "Celebration, The (Festen)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Offspring ",
      "achterkant": "Horror"
    },
    {
      "voorkant": "For the Bible Tells Me So",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Star Wars: Episode I - The Phantom Menace",
      "achterkant": "Action|Adventure|Sci-Fi"
    },
    {
      "voorkant": "James and the Giant Peach",
      "achterkant": "Adventure|Animation|Children|Fantasy|Musical"
    },
    {
      "voorkant": "Adam's Apples (Adams æbler)",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Atomic Rulers of the World",
      "achterkant": "Action|Sci-Fi"
    },
    {
      "voorkant": "Divorce",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Sphinx",
      "achterkant": "Mystery|Thriller"
    },
    {
      "voorkant": "Dark Girls",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Longest Day, The",
      "achterkant": "Action|Drama|War"
    }
  ]
}, {
  "book": {
    "title": "Myrle",
    "description": "Rymour"
  },
  "page": [
    {
      "voorkant": "Silk Stockings",
      "achterkant": "Musical"
    },
    {
      "voorkant": "Alphaville (Alphaville, une étrange aventure de Lemmy Caution)",
      "achterkant": "Drama|Mystery|Romance|Sci-Fi|Thriller"
    },
    {
      "voorkant": "C.O.G.",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Hannibal Rising",
      "achterkant": "Drama|Horror|Thriller"
    },
    {
      "voorkant": "Bear, The (Ours, L')",
      "achterkant": "Adventure|Children|Drama"
    },
    {
      "voorkant": "Rocky Horror Picture Show, The",
      "achterkant": "Comedy|Horror|Musical|Sci-Fi"
    },
    {
      "voorkant": "That Hamilton Woman",
      "achterkant": "Drama|Romance|War"
    },
    {
      "voorkant": "King of Escape, The (Le roi de l'évasion)",
      "achterkant": "Adventure|Comedy"
    },
    {
      "voorkant": "Wreck-It Ralph",
      "achterkant": "Animation|Comedy"
    },
    {
      "voorkant": "Girl on the Bridge, The (Fille sur le pont, La)",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Red Dawn",
      "achterkant": "Action|War"
    },
    {
      "voorkant": "Inbetween Worlds",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Warrior and the Sorceress, The",
      "achterkant": "Action|Adventure|Fantasy|Sci-Fi"
    },
    {
      "voorkant": "Wolf Creek 2",
      "achterkant": "Horror|Thriller"
    },
    {
      "voorkant": "Hank and Mike",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Play the Game",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "I Know What I Saw",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Physician, The",
      "achterkant": "Adventure|Drama"
    },
    {
      "voorkant": "Miser, The (L'avare)",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Myriad of Lights (Lights of Ten Thousand Homes, The) (Wanjia denghuo)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "White Lightning",
      "achterkant": "Action|Crime|Drama"
    },
    {
      "voorkant": "Red Scorpion",
      "achterkant": "Action"
    },
    {
      "voorkant": "Flatliners",
      "achterkant": "Horror|Sci-Fi|Thriller"
    },
    {
      "voorkant": "Fantastic Voyage",
      "achterkant": "Adventure|Sci-Fi"
    },
    {
      "voorkant": "Footloose",
      "achterkant": "Drama"
    }
  ]
}, {
  "book": {
    "title": "Rina",
    "description": "Weiss"
  },
  "page": [
    {
      "voorkant": "Just an American Boy",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Da Vinci Code, The",
      "achterkant": "Drama|Mystery|Thriller"
    },
    {
      "voorkant": "How Wang-Fo Was Saved (Comment Wang-Fo fut sauvé)",
      "achterkant": "Animation|Fantasy"
    },
    {
      "voorkant": "Human Race, The",
      "achterkant": "Action|Horror|Sci-Fi"
    },
    {
      "voorkant": "Winnie the Pooh and Tigger Too",
      "achterkant": "Animation|Children"
    },
    {
      "voorkant": "Loco Love (Mi Casa, Su Casa)",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Temple Grandin",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Legend of Lylah Clare, The",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Contagion",
      "achterkant": "Sci-Fi|Thriller|IMAX"
    },
    {
      "voorkant": "It's All About Love",
      "achterkant": "Drama|Romance|Sci-Fi|Thriller"
    },
    {
      "voorkant": "A Night for Dying Tigers",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Men in Black III (M.III.B.) (M.I.B.³)",
      "achterkant": "Action|Comedy|Sci-Fi|IMAX"
    },
    {
      "voorkant": "I, Robot",
      "achterkant": "Action|Adventure|Sci-Fi|Thriller"
    },
    {
      "voorkant": "Kings & Queen (Rois et reine)",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Folks!",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Mary and Martha",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Petals on the Wind",
      "achterkant": "Drama|Romance|Thriller"
    },
    {
      "voorkant": "Death King, The (Der Todesking)",
      "achterkant": "Drama|Horror"
    },
    {
      "voorkant": "Sorry, Haters",
      "achterkant": "Drama|Thriller"
    },
    {
      "voorkant": "Bubble Boy",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Bridget Jones: The Edge of Reason",
      "achterkant": "Comedy|Drama|Romance"
    },
    {
      "voorkant": "Fandango",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "The New Babylon",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Liberation of L.B. Jones, The",
      "achterkant": "Crime|Drama"
    },
    {
      "voorkant": "Kill List",
      "achterkant": "Horror|Mystery|Thriller"
    },
    {
      "voorkant": "Under the Cherry Moon",
      "achterkant": "Comedy|Drama|Musical|Romance"
    },
    {
      "voorkant": "Haunted Honeymoon",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "From Dusk Till Dawn 3: The Hangman's Daughter",
      "achterkant": "Horror|Thriller|Western"
    },
    {
      "voorkant": "Anne of the Thousand Days",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Ruby Red",
      "achterkant": "Adventure|Children|Fantasy|Sci-Fi"
    },
    {
      "voorkant": "Space Battleship Yamato",
      "achterkant": "Action|Adventure|Drama"
    },
    {
      "voorkant": "Long Weekend",
      "achterkant": "Horror|Mystery|Thriller"
    },
    {
      "voorkant": "Intruder, The (L'intrus)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "The Swedish Moment",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Devil's Ground, The",
      "achterkant": "Horror|Thriller"
    },
    {
      "voorkant": "Light at the Edge of the World, The",
      "achterkant": "Adventure"
    },
    {
      "voorkant": "It's Always Fair Weather",
      "achterkant": "Comedy|Drama|Musical"
    },
    {
      "voorkant": "Letters to Juliet",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Adventures of Huckleberry Finn, The",
      "achterkant": "Adventure|Drama"
    },
    {
      "voorkant": "Chamber, The",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Curse of the Demon (Night of the Demon)",
      "achterkant": "Fantasy|Horror|Mystery"
    },
    {
      "voorkant": "Destination Tokyo",
      "achterkant": "Adventure|War"
    },
    {
      "voorkant": "Carcasses",
      "achterkant": "Documentary"
    }
  ]
}, {
  "book": {
    "title": "Mead",
    "description": "Duffield"
  },
  "page": [
    {
      "voorkant": "Wonderful Crook, The (Pas si méchant que ça)",
      "achterkant": "Crime|Drama|Romance"
    },
    {
      "voorkant": "Jo Jo Dancer, Your Life is Calling",
      "achterkant": "Drama"
    },
    {
      "voorkant": "A Second Chance",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Dead Heat on a Merry-Go-Round",
      "achterkant": "Comedy|Crime"
    },
    {
      "voorkant": "Woman in Love (Rubbeldiekatz)",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "American Adobo",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Prizefighter and the Lady, The",
      "achterkant": "Comedy|Crime|Romance"
    },
    {
      "voorkant": "Navajo Joe",
      "achterkant": "Western"
    },
    {
      "voorkant": "Beneath the Darkness",
      "achterkant": "Thriller"
    },
    {
      "voorkant": "Man's Castle",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Brothers: The Return",
      "achterkant": "Crime|Drama|Thriller"
    },
    {
      "voorkant": "Standing Still",
      "achterkant": "Comedy|Drama|Romance"
    },
    {
      "voorkant": "Madeinusa",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Kummeli V",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Congress, The",
      "achterkant": "Animation|Sci-Fi"
    },
    {
      "voorkant": "Letters from a Killer",
      "achterkant": "Crime|Drama|Mystery|Thriller"
    },
    {
      "voorkant": "Virginia",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Out of the Ashes",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Wild Hogs",
      "achterkant": "Adventure|Comedy"
    },
    {
      "voorkant": "Possible Loves (Amores Possíveis)",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "Irene in Time",
      "achterkant": "Comedy|Drama|Romance"
    },
    {
      "voorkant": "Lost in La Mancha",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "All Is Lost",
      "achterkant": "Action|Adventure|Drama"
    },
    {
      "voorkant": "Twice Born (Venuto al mondo)",
      "achterkant": "Drama|Romance|War"
    },
    {
      "voorkant": "Money Matters ",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Wilde",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Welcome to the Sticks (Bienvenue chez les Ch'tis)",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Touch of Class, A",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Sleep with Me",
      "achterkant": "Comedy|Drama|Romance"
    },
    {
      "voorkant": "Hammett",
      "achterkant": "Crime|Mystery"
    },
    {
      "voorkant": "Crazies, The",
      "achterkant": "Action|Drama|Horror|Sci-Fi|Thriller"
    },
    {
      "voorkant": "Bill Hicks: Revelations",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Willy Wonka & the Chocolate Factory",
      "achterkant": "Children|Comedy|Fantasy|Musical"
    },
    {
      "voorkant": "Agent Vinod",
      "achterkant": "Action"
    },
    {
      "voorkant": "Tell Me and I Will Forget",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Wild Reeds (Les roseaux sauvages)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Merrill's Marauders",
      "achterkant": "Adventure|Drama|War"
    },
    {
      "voorkant": "Librarian, The: The Curse of the Judas Chalice",
      "achterkant": "Action|Adventure|Fantasy"
    }
  ]
}, {
  "book": {
    "title": "Annaliese",
    "description": "Bohin"
  },
  "page": [
    {
      "voorkant": "Perfect Couple, A",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "Lacemaker, The (Dentellière, La)",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Sweet November",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Love and Lemons (Små citroner gula)",
      "achterkant": "Romance"
    },
    {
      "voorkant": "Only Yesterday (Omohide poro poro)",
      "achterkant": "Animation|Drama"
    },
    {
      "voorkant": "Wedding Photographer, The (Bröllopsfotografen)",
      "achterkant": "Comedy|Drama|Romance"
    },
    {
      "voorkant": "Remonstrance",
      "achterkant": "(no genres listed)"
    },
    {
      "voorkant": "Girl in the Café, The",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Vulgar",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Den tatuerade änkan (Tattooed Widow, The) ",
      "achterkant": "Comedy|Drama|Romance"
    },
    {
      "voorkant": "FBI: Frikis buscan incordiar",
      "achterkant": "(no genres listed)"
    },
    {
      "voorkant": "Arena",
      "achterkant": "Sci-Fi"
    },
    {
      "voorkant": "Mysterious Object at Noon (Dokfa nai meuman)",
      "achterkant": "Drama|Mystery"
    },
    {
      "voorkant": "Last Days, The (Últimos días, Los)",
      "achterkant": "Adventure|Sci-Fi|Thriller"
    },
    {
      "voorkant": "Nostalgia for the Light (Nostalgia de la luz)",
      "achterkant": "Documentary|Drama"
    },
    {
      "voorkant": "By the Bluest of Seas (U samogo sinego morya)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Desert Heat (Inferno)",
      "achterkant": "Action"
    },
    {
      "voorkant": "Town Without Pity",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Pervert's Guide to Ideology, The",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Kapitalism: Our Improved Formula (Kapitalism - Reteta noastra secreta)",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Great Guy",
      "achterkant": "Crime|Drama|Mystery"
    },
    {
      "voorkant": "Year of the Carnivore",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "The Trip to Bountiful",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Jonah: A VeggieTales Movie",
      "achterkant": "Animation|Children|Musical"
    },
    {
      "voorkant": "Hum Tum",
      "achterkant": "Comedy|Drama|Musical|Romance"
    },
    {
      "voorkant": "Soap and Water",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Rocks (Rad, Das)",
      "achterkant": "Action|Animation|Fantasy"
    },
    {
      "voorkant": "Cake",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "Gojoe: Spirit War Chronicle (Gojo reisenki: Gojoe)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Bloodfist",
      "achterkant": "Action"
    },
    {
      "voorkant": "Little Shop of Horrors, The",
      "achterkant": "Comedy|Horror"
    },
    {
      "voorkant": "Jesse Stone: No Remorse",
      "achterkant": "Crime|Mystery"
    },
    {
      "voorkant": "Hum Dil De Chuke Sanam",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Will Penny",
      "achterkant": "Romance|Western"
    }
  ]
}, {
  "book": {
    "title": "Theadora",
    "description": "McBrearty"
  },
  "page": [
    {
      "voorkant": "Carrie",
      "achterkant": "Drama|Horror|Thriller"
    },
    {
      "voorkant": "Rize",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Making Love",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Good Shepherd, The",
      "achterkant": "Drama|Thriller"
    },
    {
      "voorkant": "Mystery Train",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "How to Be a Serial Killer",
      "achterkant": "Comedy|Crime|Horror"
    },
    {
      "voorkant": "Of Gods and Men (Des hommes et des dieux)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Saturday Night and Sunday Morning",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Metallica: Some Kind of Monster",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Snapper, The",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "On the Rumba River (On the Rhumba River)",
      "achterkant": "Documentary|Musical"
    },
    {
      "voorkant": "Rio Bravo",
      "achterkant": "Western"
    },
    {
      "voorkant": "Jean-Luc Cinema Godard",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Joyriders, The",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Fortress",
      "achterkant": "Action|Thriller"
    },
    {
      "voorkant": "Thank You, Mr. Moto",
      "achterkant": "Crime|Drama|Mystery"
    },
    {
      "voorkant": "The Studio Murder Mystery",
      "achterkant": "Mystery"
    },
    {
      "voorkant": "Triad Underworld (Gong wu) (Jiang Hu)",
      "achterkant": "Action|Crime|Drama"
    },
    {
      "voorkant": "Ghetto (Vilniaus Getas)",
      "achterkant": "War"
    },
    {
      "voorkant": "Iris",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Pride and Glory",
      "achterkant": "Crime|Drama"
    },
    {
      "voorkant": "Thousand Acres, A",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Mr Reliable",
      "achterkant": "(no genres listed)"
    },
    {
      "voorkant": "Drogówka",
      "achterkant": "Comedy|Crime|Drama"
    },
    {
      "voorkant": "Christmas on Mars",
      "achterkant": "Sci-Fi"
    },
    {
      "voorkant": "Unbearable Lightness of Being, The",
      "achterkant": "Drama"
    },
    {
      "voorkant": "6th Day, The",
      "achterkant": "Action|Sci-Fi|Thriller"
    },
    {
      "voorkant": "Importance of Tying Your Own Shoes, The (Hur många lingon finns det i världen?)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Village of the Damned",
      "achterkant": "Horror|Sci-Fi|Thriller"
    },
    {
      "voorkant": "Prodigal Son, The (Bai ga jai)",
      "achterkant": "Action|Adventure|Drama"
    },
    {
      "voorkant": "Mighty Heart, A",
      "achterkant": "Drama|Thriller"
    },
    {
      "voorkant": "I Want to Be a Soldier",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Spiral",
      "achterkant": "Drama|Horror|Thriller"
    },
    {
      "voorkant": "Illegal Tender",
      "achterkant": "Crime|Drama|Thriller"
    },
    {
      "voorkant": "Incredible Melting Man, The",
      "achterkant": "Horror|Sci-Fi"
    },
    {
      "voorkant": "Broken Wings (Knafayim Shvurot)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Woman in White, The",
      "achterkant": "Mystery|Thriller"
    },
    {
      "voorkant": "Cure",
      "achterkant": "Crime|Horror|Thriller"
    },
    {
      "voorkant": "Blankman",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "With Byrd at the South Pole",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Dark Matter",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Dead Silence",
      "achterkant": "Action|Drama|Thriller"
    },
    {
      "voorkant": "Viva",
      "achterkant": "Comedy|Drama|Musical"
    }
  ]
}, {
  "book": {
    "title": "Allyn",
    "description": "Nason"
  },
  "page": [
    {
      "voorkant": "Deewaar",
      "achterkant": "Action|Crime|Drama|Thriller"
    },
    {
      "voorkant": "Psych-Out",
      "achterkant": "Drama|Musical|Thriller"
    },
    {
      "voorkant": "Betty",
      "achterkant": "Drama"
    },
    {
      "voorkant": "More the Merrier, The",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "Grave Halloween",
      "achterkant": "Horror"
    },
    {
      "voorkant": "Mammy",
      "achterkant": "Comedy|Drama|Musical"
    },
    {
      "voorkant": "Walk All Over Me",
      "achterkant": "Comedy|Crime|Drama"
    },
    {
      "voorkant": "Fearful Symmetry: The Making of 'To Kill a Mockingbird'",
      "achterkant": "Documentary"
    }
  ]
}, {
  "book": {
    "title": "Dolores",
    "description": "Goodbairn"
  },
  "page": [
    {
      "voorkant": "Kill Your Darlings",
      "achterkant": "Crime|Drama|Romance|Thriller"
    },
    {
      "voorkant": "Kaspar Hauser",
      "achterkant": "Drama|Mystery"
    },
    {
      "voorkant": "Max Manus",
      "achterkant": "Action|Drama|War"
    },
    {
      "voorkant": "G.I. Jane",
      "achterkant": "Action|Drama"
    },
    {
      "voorkant": "Open Grave",
      "achterkant": "Horror|Mystery|Thriller"
    },
    {
      "voorkant": "The D Train",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Shaun of the Dead",
      "achterkant": "Comedy|Horror"
    },
    {
      "voorkant": "Babyfever",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Machine Gun Preacher",
      "achterkant": "Action|Crime"
    },
    {
      "voorkant": "Purple Violets",
      "achterkant": "Comedy|Drama|Romance"
    },
    {
      "voorkant": "Kiss Kiss Bang Bang",
      "achterkant": "Comedy|Crime|Mystery|Thriller"
    },
    {
      "voorkant": "Three (Tri)",
      "achterkant": "Drama|War"
    },
    {
      "voorkant": "Short Film About Killing, A (Krótki film o zabijaniu)",
      "achterkant": "Crime|Drama"
    },
    {
      "voorkant": "Brother (Hermano)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "EDtv",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "April Showers",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Odgrobadogroba",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Dirty Sanchez: The Movie",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Holiday Inn",
      "achterkant": "Comedy|Musical"
    },
    {
      "voorkant": "Flame of New Orleans, The",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "In the Folds of the Flesh",
      "achterkant": "Drama|Horror|Thriller"
    },
    {
      "voorkant": "Poor Boy's Game",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Maniac",
      "achterkant": "Horror|Thriller"
    },
    {
      "voorkant": "Night Has a Thousand Eyes",
      "achterkant": "Drama|Film-Noir"
    },
    {
      "voorkant": "Untamed Youth",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Nobody Knows Anybody (Nadie conoce a nadie)",
      "achterkant": "Romance|Thriller"
    },
    {
      "voorkant": "Manos: The Hands of Fate",
      "achterkant": "Horror"
    },
    {
      "voorkant": "All American Chump",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Prince of Foxes",
      "achterkant": "Adventure|Drama"
    },
    {
      "voorkant": "Halloween II",
      "achterkant": "Horror"
    },
    {
      "voorkant": "I Know Who Killed Me",
      "achterkant": "Crime|Drama|Thriller"
    },
    {
      "voorkant": "Flawless",
      "achterkant": "Crime|Drama"
    },
    {
      "voorkant": "Mute Witness",
      "achterkant": "Comedy|Horror|Thriller"
    },
    {
      "voorkant": "Broken English",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Shooting War",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Shot in the Dark, A",
      "achterkant": "Comedy|Crime|Mystery"
    },
    {
      "voorkant": "Nobody Wants the Night",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Texas Chainsaw Massacre: The Next Generation (a.k.a. The Return of the Texas Chainsaw Massacre)",
      "achterkant": "Horror"
    },
    {
      "voorkant": "Devil's Diary",
      "achterkant": "Drama|Horror|Mystery"
    },
    {
      "voorkant": "Top Banana",
      "achterkant": "Comedy|Musical|Romance"
    }
  ]
}, {
  "book": {
    "title": "Consuelo",
    "description": "Dyet"
  },
  "page": [
    {
      "voorkant": "100 Rifles",
      "achterkant": "Adventure|War|Western"
    },
    {
      "voorkant": "Home Movie",
      "achterkant": "Horror|Thriller"
    },
    {
      "voorkant": "Comedy of Innocence (Comédie de l'innocence)",
      "achterkant": "Drama|Thriller"
    },
    {
      "voorkant": "Shattered Image",
      "achterkant": "Drama|Thriller"
    },
    {
      "voorkant": "Twin Dragons (Shuang long hui)",
      "achterkant": "Action|Comedy"
    },
    {
      "voorkant": "Triple Agent",
      "achterkant": "Drama|Thriller"
    },
    {
      "voorkant": "Dinner at Eight",
      "achterkant": "Comedy|Drama|Romance"
    },
    {
      "voorkant": "Maria",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Reluctant Debutante, The",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Impulse",
      "achterkant": "Mystery|Thriller"
    },
    {
      "voorkant": "Fun with Dick and Jane",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "The Land Before Time X: The Great Longneck Migration",
      "achterkant": "Adventure|Animation|Children"
    },
    {
      "voorkant": "Illegal Tender",
      "achterkant": "Crime|Drama|Thriller"
    },
    {
      "voorkant": "Virtuality",
      "achterkant": "Drama|Sci-Fi|Thriller"
    },
    {
      "voorkant": "CJ7 (Cheung Gong 7 hou)",
      "achterkant": "Children|Comedy|Sci-Fi"
    },
    {
      "voorkant": "Rage at Dawn",
      "achterkant": "Western"
    },
    {
      "voorkant": "Extracted",
      "achterkant": "Drama|Sci-Fi"
    },
    {
      "voorkant": "Hell's Highway",
      "achterkant": "Crime|Drama"
    },
    {
      "voorkant": "Holes",
      "achterkant": "Adventure|Children|Comedy|Mystery"
    },
    {
      "voorkant": "One and Only, The",
      "achterkant": "Comedy|Romance"
    }
  ]
}, {
  "book": {
    "title": "Patin",
    "description": "Derbyshire"
  },
  "page": [
    {
      "voorkant": "Seven Beauties (Pasqualino Settebellezze)",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Kitty",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Betrayed (True and the Brave, The)",
      "achterkant": "Drama|Romance|Thriller|War"
    },
    {
      "voorkant": "Hell (L'enfer)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "6954 Kilometriä Kotiin",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Breakfast Club, The",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "The Fool",
      "achterkant": "Drama"
    },
    {
      "voorkant": "I'm Not Rappaport",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Buckskin Frontier",
      "achterkant": "Action|Western"
    },
    {
      "voorkant": "The Walking Hills",
      "achterkant": "Western"
    },
    {
      "voorkant": "BloodRayne: Deliverance (BloodRayne II: Deliverance)",
      "achterkant": "Action|Fantasy|Western"
    },
    {
      "voorkant": "Whole Wide World, The",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Ballad of the Paper Balloons (a.k.a. Humanity and Paper Balloons) (Ninjô kami fûsen)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Fear[s] of the Dark (Peur[s] du noir)",
      "achterkant": "Animation|Horror"
    },
    {
      "voorkant": "The Forgotten Faces",
      "achterkant": "(no genres listed)"
    },
    {
      "voorkant": "Turtle's Tale 2: Sammy's Escape from Paradise, A (Sammy's avonturen 2) (Sammy's Adventures 2)",
      "achterkant": "Adventure|Animation|Children"
    },
    {
      "voorkant": "Woman in Red, The",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "Blue Streak",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Repossessed",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Gurren Lagann: Childhood's End (Gekijô ban Tengen toppa guren ragan: Guren hen)",
      "achterkant": "Adventure|Animation|Drama|Sci-Fi|War"
    },
    {
      "voorkant": "Grace",
      "achterkant": "Drama|Horror|Thriller"
    },
    {
      "voorkant": "Gate II: Trespassers, The",
      "achterkant": "Horror"
    },
    {
      "voorkant": "White Squall",
      "achterkant": "Action|Adventure|Drama"
    }
  ]
}, {
  "book": {
    "title": "Nessie",
    "description": "Guitte"
  },
  "page": [
    {
      "voorkant": "Envy (Kiskanmak)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Black Venus",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Space Odyssey: Voyage to the Planets",
      "achterkant": "Documentary|Drama|Sci-Fi"
    },
    {
      "voorkant": "Terminal Man, The",
      "achterkant": "Sci-Fi|Thriller"
    },
    {
      "voorkant": "Pandora's Box (Büchse der Pandora, Die)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Prey for Rock & Roll",
      "achterkant": "Drama|Musical"
    },
    {
      "voorkant": "Hidden Agenda",
      "achterkant": "Action|Mystery|Thriller"
    }
  ]
}, {
  "book": {
    "title": "Sigvard",
    "description": "Alabone"
  },
  "page": [
    {
      "voorkant": "Simple Life of Noah Dearborn, The",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Lock Up",
      "achterkant": "Action|Adventure|Crime|Drama|Thriller"
    },
    {
      "voorkant": "Anthony Adverse",
      "achterkant": "Adventure|Romance"
    },
    {
      "voorkant": "Along Came Polly",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "Fraternity Demon",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Wrestling (Bræðrabylta)",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "War of the Worlds",
      "achterkant": "Action|Sci-Fi"
    },
    {
      "voorkant": "The Gold Spinners",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Shanghai Knights",
      "achterkant": "Action|Adventure|Comedy"
    },
    {
      "voorkant": "The Righteous Thief",
      "achterkant": "Adventure"
    },
    {
      "voorkant": "Gone Girl",
      "achterkant": "Drama|Thriller"
    },
    {
      "voorkant": "Hostile Witness",
      "achterkant": "Drama"
    },
    {
      "voorkant": "La Soufrière - Warten auf eine unausweichliche Katastrophe",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Stockholm Stories",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Young in Heart, The",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Proud and the Beautiful, The (Orgueilleux, Les) (Proud Ones, The)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Lady of Chance, A",
      "achterkant": "Comedy|Drama|Romance"
    },
    {
      "voorkant": "Cose da pazzi",
      "achterkant": "(no genres listed)"
    },
    {
      "voorkant": "When a Woman Ascends the Stairs (Onna ga kaidan wo agaru toki)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Hedgehog, The (Le hérisson)",
      "achterkant": "Comedy|Drama"
    }
  ]
}, {
  "book": {
    "title": "Con",
    "description": "Willatt"
  },
  "page": [
    {
      "voorkant": "Recollections of the Yellow House (Recordações da Casa Amarela)",
      "achterkant": "Comedy|Drama"
    }
  ]
}, {
  "book": {
    "title": "Tulley",
    "description": "Strongitharm"
  },
  "page": [
    {
      "voorkant": "Sometimes They Come Back... for More",
      "achterkant": "Horror"
    },
    {
      "voorkant": "Pick-up Artist, The",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "Blame It on Rio",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "Film with Me in It, A",
      "achterkant": "Comedy|Thriller"
    },
    {
      "voorkant": "Atomic States of America, The",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Rich in Love",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Jackass Presents: Bad Grandpa",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Jesse Stone: Stone Cold",
      "achterkant": "Crime|Drama|Mystery"
    },
    {
      "voorkant": "Ugly American, The",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Benji",
      "achterkant": "Adventure|Children"
    },
    {
      "voorkant": "Killjoy 3",
      "achterkant": "Horror"
    },
    {
      "voorkant": "Monty Python's Life of Brian",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Geronimo: An American Legend",
      "achterkant": "Drama|Western"
    },
    {
      "voorkant": "Immensee",
      "achterkant": "Drama"
    },
    {
      "voorkant": "The Snow White Murder Case",
      "achterkant": "Drama|Mystery"
    },
    {
      "voorkant": "Snow Creature, The",
      "achterkant": "Horror"
    },
    {
      "voorkant": "Texas Rangers",
      "achterkant": "Adventure|Western"
    },
    {
      "voorkant": "Muse, The",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "The Fox and the Hound 2",
      "achterkant": "Adventure|Animation|Children|Comedy"
    },
    {
      "voorkant": "Swing",
      "achterkant": "Comedy|Drama|Musical"
    },
    {
      "voorkant": "Curse of the Pink Panther",
      "achterkant": "Comedy|Crime|Mystery"
    },
    {
      "voorkant": "Other Woman, The",
      "achterkant": "Drama"
    },
    {
      "voorkant": "My Best Enemy (Mi mejor enemigo)",
      "achterkant": "Drama|War"
    },
    {
      "voorkant": "Neighbours",
      "achterkant": "Animation|Comedy"
    },
    {
      "voorkant": "River, The",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Bright Victory",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Jungleground",
      "achterkant": "Action|Sci-Fi|Thriller"
    },
    {
      "voorkant": "Port of Flowers",
      "achterkant": "(no genres listed)"
    },
    {
      "voorkant": "Sodom and Gomorrah",
      "achterkant": "Adventure|Drama"
    },
    {
      "voorkant": "Plácido",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Secret World of Arrietty, The (Kari-gurashi no Arietti)",
      "achterkant": "Animation|Children|Fantasy"
    }
  ]
}, {
  "book": {
    "title": "Raeann",
    "description": "Pinsent"
  },
  "page": [
    {
      "voorkant": "Home Fries",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "Winter of Discontent",
      "achterkant": "Drama"
    },
    {
      "voorkant": "MURDER and murder",
      "achterkant": "Crime|Drama|Mystery"
    },
    {
      "voorkant": "Water for Elephants",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Not on the Lips (Pas sur la bouche)",
      "achterkant": "Comedy|Musical|Romance"
    },
    {
      "voorkant": "Kid, The",
      "achterkant": "Comedy|Fantasy"
    },
    {
      "voorkant": "Fight, Zatoichi, Fight (Zatôichi kesshô-tabi) (Zatôichi 8)",
      "achterkant": "Action|Adventure|Comedy|Drama"
    },
    {
      "voorkant": "Barney's Great Adventure",
      "achterkant": "Adventure|Children"
    },
    {
      "voorkant": "Pope Joan (Die Päpstin)",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Skeletons",
      "achterkant": "Comedy|Fantasy"
    },
    {
      "voorkant": "Budd Boetticher: An American Original ",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Good Mother, The",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Theodora Goes Wild",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "Mugger, The (El asaltante)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Cherrybomb",
      "achterkant": "Drama|Thriller"
    },
    {
      "voorkant": "Where Sleeping Dogs Lie",
      "achterkant": "Crime"
    },
    {
      "voorkant": "Hit Man",
      "achterkant": "Crime|Drama"
    },
    {
      "voorkant": "Land of the Blind",
      "achterkant": "Drama|Thriller"
    },
    {
      "voorkant": "Bill Maher: Victory Begins at Home",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Sweet Rush (Tatarak)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Leaving Las Vegas",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Saturday Night and Sunday Morning",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Kotch",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Doomed to Die",
      "achterkant": "Crime|Drama|Mystery|Thriller"
    },
    {
      "voorkant": "Diaries of Vaslav Nijinsky, The",
      "achterkant": "Documentary|Drama"
    }
  ]
}, {
  "book": {
    "title": "Arin",
    "description": "Bode"
  },
  "page": [
    {
      "voorkant": "My Cousin Rachel",
      "achterkant": "Drama|Mystery|Romance"
    },
    {
      "voorkant": "Lost in Siberia (Ausgerechnet Sibirien)",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Her Master's Voice",
      "achterkant": "Comedy|Documentary"
    },
    {
      "voorkant": "Black Stallion Returns, The",
      "achterkant": "Adventure|Children"
    },
    {
      "voorkant": "On the Ice",
      "achterkant": "Drama|Thriller"
    },
    {
      "voorkant": "Staying Alive",
      "achterkant": "Comedy|Drama|Musical"
    },
    {
      "voorkant": "Elementary Particles, The (Elementarteilchen)",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Praise",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Killer (Bulletproof Heart)",
      "achterkant": "Drama|Thriller"
    },
    {
      "voorkant": "The Identical",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Domestic Disturbance",
      "achterkant": "Thriller"
    },
    {
      "voorkant": "Rainbow Valley",
      "achterkant": "Action|Romance|Western"
    },
    {
      "voorkant": "Cold Fish (Tsumetai nettaigyo)",
      "achterkant": "Drama|Thriller"
    },
    {
      "voorkant": "Election (Hak se wui)",
      "achterkant": "Crime|Drama|Thriller"
    },
    {
      "voorkant": "LOL (Laughing Out Loud)",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Dead in Tombstone",
      "achterkant": "Action|Fantasy|Horror"
    },
    {
      "voorkant": "Thief and the Cobbler, The (a.k.a. Arabian Knight)",
      "achterkant": "Adventure|Animation|Comedy|Fantasy"
    },
    {
      "voorkant": "Ambush (Mai fu)",
      "achterkant": "Action|Adventure"
    },
    {
      "voorkant": "Capturing the Friedmans",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Happiness Is a Warm Blanket, Charlie Brown",
      "achterkant": "Animation|Comedy"
    },
    {
      "voorkant": "Girl with the Dragon Tattoo, The (Män som hatar kvinnor)",
      "achterkant": "Crime|Drama|Mystery|Thriller"
    },
    {
      "voorkant": "Flight That Fought Back, The",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Weekend at Bernie's II",
      "achterkant": "Adventure|Comedy"
    },
    {
      "voorkant": "Babylon 5: The Legend of the Rangers: To Live and Die in Starlight",
      "achterkant": "Sci-Fi"
    },
    {
      "voorkant": "Way Back, The",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Christmas in August (Palwolui Christmas)",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Mascara",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Prestige, The",
      "achterkant": "Drama|Mystery|Sci-Fi|Thriller"
    },
    {
      "voorkant": "B.N.B. (Bunty Aur Babli)",
      "achterkant": "Adventure|Comedy|Crime"
    },
    {
      "voorkant": "Joy of Sex",
      "achterkant": "Comedy|Romance"
    }
  ]
}, {
  "book": {
    "title": "Fraser",
    "description": "Mullins"
  },
  "page": [
    {
      "voorkant": "White Christmas",
      "achterkant": "Comedy|Musical|Romance"
    },
    {
      "voorkant": "Princess Blade, The (Shura Yukihime)",
      "achterkant": "Action|Sci-Fi"
    },
    {
      "voorkant": "Dumb and Dumberer: When Harry Met Lloyd",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Morning Patrol (Proini peripolos)",
      "achterkant": "Sci-Fi"
    },
    {
      "voorkant": "Zone 39",
      "achterkant": "Sci-Fi"
    },
    {
      "voorkant": "August Evening",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Baffled!",
      "achterkant": "Mystery|Sci-Fi|Thriller"
    },
    {
      "voorkant": "Tomb of Ligeia, The",
      "achterkant": "Horror"
    },
    {
      "voorkant": "Family United (La gran familia española)",
      "achterkant": "Comedy"
    }
  ]
}, {
  "book": {
    "title": "Lenee",
    "description": "Springthorp"
  },
  "page": [
    {
      "voorkant": "Horrible Bosses",
      "achterkant": "Comedy|Crime"
    },
    {
      "voorkant": "Marilyn in Manhattan",
      "achterkant": "(no genres listed)"
    },
    {
      "voorkant": "In Their Skin",
      "achterkant": "Horror|Thriller"
    },
    {
      "voorkant": "Our Curse",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Games",
      "achterkant": "Thriller"
    },
    {
      "voorkant": "Dr. Jack",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Lymelife",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Water-mirror of Granada",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Simone (S1m0ne)",
      "achterkant": "Comedy|Drama|Fantasy|Sci-Fi"
    },
    {
      "voorkant": "Nude for Satan (Nuda per Satana)",
      "achterkant": "Horror"
    },
    {
      "voorkant": "DiG!",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Shinobi: Heart Under Blade",
      "achterkant": "Action|Drama|Fantasy|Romance"
    },
    {
      "voorkant": "Get Over It",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Birthday Girl",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Last Mountain, The",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "No Where No One (Hich Koja Hich Kas)",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "The Anomaly",
      "achterkant": "Action|Sci-Fi|Thriller"
    },
    {
      "voorkant": "Viva",
      "achterkant": "Comedy|Drama|Musical"
    },
    {
      "voorkant": "Baarìa",
      "achterkant": "Comedy|Drama|War"
    },
    {
      "voorkant": "Feed",
      "achterkant": "Action|Crime|Mystery|Thriller"
    },
    {
      "voorkant": "Life of Pi",
      "achterkant": "Adventure|Drama|IMAX"
    },
    {
      "voorkant": "Lone Survivor",
      "achterkant": "Action|Drama|Thriller|War"
    },
    {
      "voorkant": "Perils of Gwendoline in the Land of the Yik Yak, The",
      "achterkant": "Adventure|Romance"
    },
    {
      "voorkant": "Punisher, The",
      "achterkant": "Action|Crime|Thriller"
    },
    {
      "voorkant": "Vassilisa the Beautiful (Vasilisa prekrasnaya)",
      "achterkant": "Adventure|Fantasy"
    },
    {
      "voorkant": "Unaccompanied Minors",
      "achterkant": "Children|Comedy"
    },
    {
      "voorkant": "Islands in the Stream",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Club Paradise",
      "achterkant": "Comedy"
    }
  ]
}, {
  "book": {
    "title": "Russ",
    "description": "Mattingson"
  },
  "page": [
    {
      "voorkant": "North Beach",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Matter of Life and Death, A (Stairway to Heaven)",
      "achterkant": "Drama|Fantasy|Romance"
    },
    {
      "voorkant": "Boys, The (Pojat)",
      "achterkant": "Drama|War"
    },
    {
      "voorkant": "Sirocco",
      "achterkant": "Action|Drama"
    },
    {
      "voorkant": "Reflecting Skin, The",
      "achterkant": "Drama|Horror|Thriller"
    },
    {
      "voorkant": "Just Like a Woman",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Art of War II: Betrayal, The",
      "achterkant": "Action|Thriller"
    },
    {
      "voorkant": "Asthenic Syndrome, The (Astenicheskiy sindrom)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Countdown",
      "achterkant": "Sci-Fi|Thriller"
    },
    {
      "voorkant": "Cord (Hide and Seek)",
      "achterkant": "Crime|Drama|Thriller"
    },
    {
      "voorkant": "Beyoncé: Life Is But a Dream",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Fantastic Night, The (Nuit fantastique, La)",
      "achterkant": "Romance"
    },
    {
      "voorkant": "Black Tights (1-2-3-4 ou Les Collants noirs)",
      "achterkant": "Drama|Musical"
    },
    {
      "voorkant": "The Anomaly",
      "achterkant": "Action|Sci-Fi|Thriller"
    },
    {
      "voorkant": "RFK Must Die: The Assassination of Bobby Kennedy",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Salvador",
      "achterkant": "Drama|Thriller|War"
    },
    {
      "voorkant": "Full Body Massage",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Fantasma",
      "achterkant": "Drama"
    },
    {
      "voorkant": "100 Girls",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "Cube 2: Hypercube",
      "achterkant": "Horror|Mystery|Sci-Fi"
    },
    {
      "voorkant": "Willy Wonka & the Chocolate Factory",
      "achterkant": "Children|Comedy|Fantasy|Musical"
    },
    {
      "voorkant": "In-Laws, The",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Blood Creek (a.k.a. Town Creek)",
      "achterkant": "Horror"
    },
    {
      "voorkant": "Angel Levine, The",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Bertsolari",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Skeleton Key, The",
      "achterkant": "Drama|Horror|Mystery|Thriller"
    },
    {
      "voorkant": "Great Waldo Pepper, The",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Island, The",
      "achterkant": "Adventure|Horror|Thriller"
    },
    {
      "voorkant": "Ricky Gervais Live 3: Fame",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "McFarland USA",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Send a Bullet (Manda Bala)",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Mummy, The",
      "achterkant": "Horror|Romance"
    },
    {
      "voorkant": "Journey to the Center of the Earth",
      "achterkant": "Adventure|Children|Sci-Fi"
    },
    {
      "voorkant": "Letter, The (La lettre)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Portraits of Women (Naisenkuvia)",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Tarzan and His Mate",
      "achterkant": "Action|Adventure"
    },
    {
      "voorkant": "The Horseplayer",
      "achterkant": "Drama"
    },
    {
      "voorkant": "PT 109",
      "achterkant": "Drama|War"
    }
  ]
}, {
  "book": {
    "title": "Dulcia",
    "description": "Holworth"
  },
  "page": [
    {
      "voorkant": "The Whisperer in Darkness",
      "achterkant": "Horror|Mystery|Sci-Fi|Thriller"
    },
    {
      "voorkant": "Stepdaughter, The",
      "achterkant": "Horror|Thriller"
    }
  ]
}, {
  "book": {
    "title": "Reg",
    "description": "Triplow"
  },
  "page": [
    {
      "voorkant": "Riot on Sunset Strip",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Divorce of Lady X, The",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "Tarzan",
      "achterkant": "Adventure|Animation|Children|Drama"
    },
    {
      "voorkant": "I Woke Up Early the Day I Died",
      "achterkant": "Comedy|Crime|Thriller"
    },
    {
      "voorkant": "Mummy Returns, The",
      "achterkant": "Action|Adventure|Comedy|Thriller"
    },
    {
      "voorkant": "Bells of Innocence",
      "achterkant": "Horror"
    },
    {
      "voorkant": "Criminal Law",
      "achterkant": "Thriller"
    },
    {
      "voorkant": "Bob's Birthday",
      "achterkant": "(no genres listed)"
    },
    {
      "voorkant": "Top Hat",
      "achterkant": "Comedy|Musical|Romance"
    },
    {
      "voorkant": "Man Called Adam, A",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Iron Giant, The",
      "achterkant": "Adventure|Animation|Children|Drama|Sci-Fi"
    },
    {
      "voorkant": "Blue Smoke",
      "achterkant": "Drama|Romance|Thriller"
    },
    {
      "voorkant": "Leprechaun 4: In Space",
      "achterkant": "Comedy|Fantasy|Horror|Sci-Fi"
    },
    {
      "voorkant": "Tender Comrade",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Dark Angel: Ascent, The",
      "achterkant": "Horror|Romance"
    },
    {
      "voorkant": "Dikkenek",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Bedtime Stories",
      "achterkant": "Adventure|Children|Comedy"
    },
    {
      "voorkant": "Bluebeard (Barbe Bleue)",
      "achterkant": "Fantasy"
    },
    {
      "voorkant": "Outside Ozona",
      "achterkant": "Comedy|Drama|Thriller"
    },
    {
      "voorkant": "Winslow Boy, The",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Vatel",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Land That Time Forgot, The",
      "achterkant": "Adventure|Sci-Fi"
    },
    {
      "voorkant": "Story of a Cheat, The (Roman d'un tricheur, Le)",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Out of Bounds",
      "achterkant": "Drama"
    },
    {
      "voorkant": "To Each His Own",
      "achterkant": "Drama"
    },
    {
      "voorkant": "House of 9",
      "achterkant": "Drama|Horror|Mystery|Thriller"
    },
    {
      "voorkant": "Tamara",
      "achterkant": "Fantasy|Horror|Thriller"
    },
    {
      "voorkant": "Live Flesh (Carne trémula)",
      "achterkant": "Drama|Romance"
    }
  ]
}, {
  "book": {
    "title": "Joe",
    "description": "Alderman"
  },
  "page": [
    {
      "voorkant": "Divine Intervention (Yadon ilaheyya)",
      "achterkant": "Comedy|Drama|Romance|War"
    },
    {
      "voorkant": "Green Card",
      "achterkant": "Comedy|Drama|Romance"
    },
    {
      "voorkant": "Sex Drive",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "What a Girl Wants",
      "achterkant": "Comedy|Drama|Romance"
    },
    {
      "voorkant": "Grassroots",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Excess Baggage",
      "achterkant": "Adventure|Romance"
    },
    {
      "voorkant": "Jew Süss (Jud Süß)",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Girls! Girls! Girls!",
      "achterkant": "Comedy|Musical"
    },
    {
      "voorkant": "Lloyds of London",
      "achterkant": "Drama|Romance|War"
    },
    {
      "voorkant": "Rose Tattoo, The",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Mr. Kinky",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Welcome to L.A.",
      "achterkant": "Drama|Musical"
    },
    {
      "voorkant": "Bushwhacked",
      "achterkant": "Adventure|Comedy|Crime|Mystery"
    },
    {
      "voorkant": "Madison",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Nanny McPhee",
      "achterkant": "Children|Comedy|Fantasy"
    },
    {
      "voorkant": "Yu-Gi-Oh!",
      "achterkant": "Animation"
    },
    {
      "voorkant": "Charlotte Sometimes",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Bye Bye Birdie",
      "achterkant": "Comedy|Musical"
    },
    {
      "voorkant": "Summit, The",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Down with Love",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "Rise of the Planet of the Apes",
      "achterkant": "Action|Drama|Sci-Fi|Thriller"
    },
    {
      "voorkant": "The Uncommon Making of Petulia",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Rich and Strange",
      "achterkant": "Comedy|Romance"
    },
    {
      "voorkant": "Miracle on 34th Street",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Mountain Patrol (Kekexili)",
      "achterkant": "Action|Drama"
    }
  ]
}, {
  "book": {
    "title": "Caterina",
    "description": "Furphy"
  },
  "page": [
    {
      "voorkant": "Darling",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Adventures of Sharkboy and Lavagirl 3-D, The",
      "achterkant": "Action|Adventure|Children|Fantasy"
    },
    {
      "voorkant": "Aerial Gunner",
      "achterkant": "Drama|War"
    },
    {
      "voorkant": "Next Three Days, The",
      "achterkant": "Crime|Drama|Romance|Thriller"
    },
    {
      "voorkant": "Unknown",
      "achterkant": "Drama|Mystery|Thriller"
    },
    {
      "voorkant": "King Kong Escapes (Kingu Kongu no gyakushû)",
      "achterkant": "Action|Adventure|Sci-Fi"
    },
    {
      "voorkant": "CQ",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Head-On (Gegen die Wand)",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Manta, Manta",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Nocturna",
      "achterkant": "Adventure|Animation|Children|Fantasy|Mystery"
    },
    {
      "voorkant": "It's a Free World...",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Town Called Panic, A (Panique au village)",
      "achterkant": "Animation"
    },
    {
      "voorkant": "Son of Godzilla (Kaijûtô no kessen: Gojira no musuko)",
      "achterkant": "Sci-Fi"
    },
    {
      "voorkant": "Shake Hands with the Devil",
      "achterkant": "Action|Drama"
    },
    {
      "voorkant": "Revenge for Jolly!",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Hawking",
      "achterkant": "Drama"
    },
    {
      "voorkant": "City by the Sea",
      "achterkant": "Crime|Drama"
    },
    {
      "voorkant": "Chappie",
      "achterkant": "Action|Thriller"
    }
  ]
}, {
  "book": {
    "title": "Kilian",
    "description": "Pellington"
  },
  "page": [
    {
      "voorkant": "Duchess of Langeais, The (a.k.a. Don't Touch the Axe) (Ne touchez pas la hache)",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "2:13",
      "achterkant": "Horror|Thriller"
    },
    {
      "voorkant": "Lola",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Diplomatic Siege",
      "achterkant": "Action|Thriller"
    },
    {
      "voorkant": "Coneheads",
      "achterkant": "Comedy|Sci-Fi"
    },
    {
      "voorkant": "Gold Rush, The",
      "achterkant": "Adventure|Comedy|Romance"
    },
    {
      "voorkant": "How to Seduce Difficult Women",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Daddy Long Legs",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "The Plague of the Zombies",
      "achterkant": "Horror"
    },
    {
      "voorkant": "Winter Sleepers (Winterschläfer)",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Speed: In Search of Lost Time (Speed - Auf der Suche nach der verlorenen Zeit)",
      "achterkant": "Documentary"
    }
  ]
}, {
  "book": {
    "title": "Marten",
    "description": "Have"
  },
  "page": [
    {
      "voorkant": "Across to Singapore",
      "achterkant": "Drama|Romance"
    },
    {
      "voorkant": "Echelon Conspiracy",
      "achterkant": "Action|Mystery|Thriller"
    }
  ]
}, {
  "book": {
    "title": "Sabra",
    "description": "Hooks"
  },
  "page": [
    {
      "voorkant": "French Minister, The (Quai d'Orsay)",
      "achterkant": "Comedy"
    },
    {
      "voorkant": "Millhaven",
      "achterkant": "Animation"
    },
    {
      "voorkant": "Underworld: Evolution",
      "achterkant": "Action|Fantasy|Horror"
    },
    {
      "voorkant": "Pokémon the Movie: Black - Victini and Reshiram",
      "achterkant": "Animation"
    },
    {
      "voorkant": "Purge, The",
      "achterkant": "Crime|Horror|Thriller"
    },
    {
      "voorkant": "Purge: Anarchy, The",
      "achterkant": "Action|Horror|Thriller"
    },
    {
      "voorkant": "Only Angels Have Wings",
      "achterkant": "Adventure|Drama|Romance"
    },
    {
      "voorkant": "Blood River",
      "achterkant": "Horror|Thriller|Western"
    },
    {
      "voorkant": "Ice Age",
      "achterkant": "Adventure|Animation|Children|Comedy"
    },
    {
      "voorkant": "Little Rascals, The",
      "achterkant": "Children|Comedy"
    },
    {
      "voorkant": "Fame",
      "achterkant": "Drama|Musical"
    },
    {
      "voorkant": "Now Where Did the Seventh Company Get to? (Mais où est donc passée la 7ème compagnie)",
      "achterkant": "Action|Comedy|War"
    },
    {
      "voorkant": "Four Days in July",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Li'l Abner",
      "achterkant": "Comedy|Musical"
    },
    {
      "voorkant": "Chicago Overcoat",
      "achterkant": "Action|Drama"
    },
    {
      "voorkant": "Good bye, Lenin!",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Palmetto",
      "achterkant": "Crime|Drama|Mystery|Romance|Thriller"
    },
    {
      "voorkant": "Agony and the Ecstasy of Phil Spector, The",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "Right Stuff, The",
      "achterkant": "Drama"
    },
    {
      "voorkant": "Long Way Down, A",
      "achterkant": "Comedy|Drama"
    },
    {
      "voorkant": "Movie, A",
      "achterkant": "Documentary"
    },
    {
      "voorkant": "It's All Gone Pete Tong",
      "achterkant": "Comedy|Drama|Musical"
    }
  ]
}]''';
