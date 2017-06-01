namespace :slurp do
  desc "TODO"

  task countries: :environment do

    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "countries.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      c = Country.new
      c.name = row["name"]
      c.save
      puts row.to_hash
      # puts t.inspect
      # puts "#{t.name} saved"
    end

  end

  task languages: :environment do

    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "languages.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      l = Language.new
      l.name = row["name"]
      l.save
      puts row.to_hash
      # puts t.inspect
      # puts "#{t.name} saved"
    end

  end

  task skills: :environment do

    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "skills.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      s = Skill.new
      s.level = row["level"]
      s.save
      puts row.to_hash
      # puts t.inspect
      # puts "#{t.name} saved"
    end

  end

  task tutors: :environment do

    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "tutors.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Tutor.new
      t.instruction_lang_id = row["instruction_lang_id"]
      t.instruction_lang_skill_id = row["instruction_lang_skill_id"]
      t.bio = row["bio"]
      t.name = row["name"]
      t.rate_hourly = row["rate_hourly"]
      t.origin_id = row["origin_id"]
      t.save
      puts row.to_hash
      # puts t.inspect
      # puts "#{t.name} saved"
    end

  end

  task reviews: :environment do

    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "reviews.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      r = Review.new
      r.reviewer_id = row["reviewer_id"]
      r.tutor_id = row["tutor_id"]
      r.comments = row["comments"]
      r.rating = row["rating"]
      r.save
      puts row.to_hash
      # puts t.inspect
      # puts "#{t.name} saved"
    end

  end

end
