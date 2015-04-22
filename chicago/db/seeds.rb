# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Place.delete_all

[{:title=>"Navy Pier", :photo_url=>"http://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Navy_pier.jpg/250px-Navy_pier.jpg", :admission_price=>0, :description=>"Navy Pier is a 3,300-foot-long (1,010 m) pier on the Chicago shoreline of Lake Michigan. It is located in the Streeterville neighborhood of the Near North Side community area. The pier was built in 1916 at a cost of $4.5 million. It was a part of the Plan of Chicago developed by architect and city planner Daniel Burnham and his associates. As Municipal Pier #2 (Municipal Pier #1 was never built), Navy Pier was planned and built to serve as a mixed-purpose piece of public infrastructure. Its primary purpose was as a cargo facility for lake freighters, and warehouses were built up and down the Pier. However, the Pier was also designed to provide docking space for passenger excursion steamers, and in the pre–air conditioning era parts of the Pier, especially its outermost tip, were designed to serve as cool places for public gathering and entertainment. The Pier even had its own tram. Today, the pier is one of the most visited attractions in the entire Midwestern United States and is Chicago's number one tourist attraction."},
{:title=>"Willis Tower", :photo_url=>"http://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Sears_Tower_ss.jpg/240px-Sears_Tower_ss.jpg", :admission_price=>19000, :description=>"The Willis Tower, built as and still commonly referred to as Sears Tower, is a 108-story, 1,451-foot (442 m) skyscraper in Chicago, Illinois, United States. At completion in 1973, it surpassed the World Trade Center towers in New York to become the tallest building in the world, a title it held for nearly 25 years. The Willis Tower is the second-tallest building in the United States and the 12th-tallest in the world. More than one million people visit its observation deck each year, making it one of Chicago's most popular tourist destinations. The structure was renamed in 2009 by the Willis Group as part of its lease on a portion of the tower's space."},
{:title=>"Art Institute of Chicago", :photo_url=>"http://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Art_Institute_of_Chicago_Lion_Statue_%282-D%29.jpg/250px-Art_Institute_of_Chicago_Lion_Statue_%282-D%29.jpg", :admission_price=>23000, :description=>"The Art Institute of Chicago (AIC) is an encyclopedic art museum located in Chicago's Grant Park. It features a collection of Impressionist and Post-Impressionist art in its permanent collection. Its holdings also include American art, Old Masters, European and American decorative arts, Asian art, modern and contemporary art, and architecture and industrial and graphic design. In addition, it houses the Ryerson & Burnham Libraries."},
{:title=>"Shedd Aquarium", :photo_url=>"http://upload.wikimedia.org/wikipedia/commons/thumb/2/23/JohnGSheddAquarium.jpg/250px-JohnGSheddAquarium.jpg", :admission_price=>55000, :description=>"Shedd Aquarium (formally the John G. Shedd Aquarium) is an indoor public aquarium in Chicago, Illinois in the United States that opened on May 30, 1930. The aquarium contains over 32,500 fish, and was for some time the largest indoor aquarium in the world with 5,000,000 US gallons (19,000,000 l; 4,200,000 imp gal) of water. Shedd Aquarium was the first inland aquarium with a permanent saltwater fish collection. It is surrounded by Museum Campus Chicago, which it shares with the Adler Planetarium and the Field Museum of Natural History. The aquarium has 2 million annual visitors; it was the most visited aquarium in the U.S. in 2005, and in 2007, it surpassed the Field Museum as the most popular cultural attraction in Chicago.[8] It contains 1500 species including fish, marine mammals, birds, snakes, amphibians, and insects.[9] The aquarium received awards for best exhibit from the Association of Zoos and Aquariums (AZA) for Seahorse Symphony in 1999, Amazon Rising in 2001, and Wild Reef in 2004."},
{:title=>"Museum of Science and Industry", :photo_url=>"http://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/MSIChicago.JPG/275px-MSIChicago.JPG", :admission_price=>18000, :description=>"The Museum of Science and Industry (MSI) is located in Chicago, Illinois, in Jackson Park, in the Hyde Park neighborhood between Lake Michigan and The University of Chicago. It is housed in the former Palace of Fine Arts from the 1893 World's Columbian Exposition. Initially endowed by Julius Rosenwald, the Sears, Roebuck and Company president and philanthropist, it was supported by the Commercial Club of Chicago and opened in 1933 during the Century of Progress Exposition."}	
].each do |place_hash|
	p=Place.new
	p.title=place_hash[:title]
	p.photo_url=place_hash[:photo_url]
	p.admission_price=place_hash[:admission_price]
	p.description=place_hash[:description]
	p.save
end
