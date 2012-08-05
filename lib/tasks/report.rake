task :report => :environment do
  puts Person.all.map {|x| x.name.inspect + "," + Item.where(:person_id => x).reject {|x| x.bill_id.nil? }.map {|x| x.price }.inject(0) {|r,a| r + a }.to_s }.join("\n")
end
