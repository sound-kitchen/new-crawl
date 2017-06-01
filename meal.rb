require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("http://korea.ac.kr/user/restaurantMenuAllList.do?siteId=university&id=university_050402000000"))


for i in [3,5,7,9,11,13]
    if i == 11 || i == 13
          day = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//li//span.day").inner_text
          puts day
          date = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//span.date//span")[0].inner_text + "/" + doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//span.date//span")[1].inner_text
          puts date
          breakfast_a = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//li//p.menulist").inner_text.split("-")[1]
          puts breakfast_a
          lunch = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//li//div:nth-child(4)").inner_text.split("-")[1]
          puts lunch
          dinner = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//li//div:nth-child(5)").inner_text.split("-")[1]
          puts dinner
    #   elsif i==13
    #       day = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//span.day").inner_text
    #       puts day
    #       date = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//span.date//span")[0].inner_text + "/" + doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//span.date//span")[1].inner_text
    #       puts date
    #       breakfast_a = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//p")[1].inner_text.split("-")[1]
    #       puts breakfast_a
    #       lunch = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//p")[2].inner_text.split("-")[1]
    #       puts lunch
    #       dinner = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//p")[3].inner_text.split("-")[1]
    #       puts dinner
    else
        day = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//li//span.day").inner_text
        puts day
        date = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//li//span.date//span")[0].inner_text + "/" + doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//span.date//span")[1].inner_text
        puts date
        breakfast_a = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//li//p.menulist").inner_text.split("-")[1]
        #contents_body > div.sub_contents > div > ul > li:nth-child(1) > ol:nth-child(3) > li > p.menulist
        puts breakfast_a
        breakfast_b = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//li//div:nth-child(4)").inner_text.split("-")[1]
        puts breakfast_b
        lunch = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//li//div:nth-child(5)").inner_text.split("-")[1]
        #contents_body > div.sub_contents > div > ul > li:nth-child(1) > ol:nth-child(5) > li > div:nth-child(5)
        puts lunch
        dinner = doc.css(".ku_restaurant//ul//li:nth-child(1)//ol:nth-child(#{i})//li//div:nth-child(6)").inner_text.split("-")[1]
        #contents_body > div.sub_contents > div > ul > li:nth-child(1) > ol:nth-child(5) > li > div:nth-child(6)
        puts dinner
    end
end

#contents_body > div.sub_contents > div > ul > li:nth-child(1) > ol:nth-child(13) > li > p.menulist > span
#contents_body > div.sub_contents > div > ul > li:nth-child(1) > ol:nth-child(3) > li > p.menulist
#contents_body > div.sub_contents > div > ul > li:nth-child(1) > ol:nth-child(7) > li > div:nth-child(4)
#contents_body > div.sub_contents > div > ul > li:nth-child(1) > ol:nth-child(5) > li > div:nth-child(4)
#contents_body > div.sub_contents > div > ul > li:nth-child(1) > ol:nth-child(5) > li > p.menulist > span
#contents_body > div.sub_contents > div > ul > li:nth-child(1) > ol:nth-child(11) > li > span.day
#contents_body > div.sub_contents > div > ul > li:nth-child(1) > ol:nth-child(11) > li > div:nth-child(5)