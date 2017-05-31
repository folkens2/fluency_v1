namespace :slurp do
  desc "TODO"
  task tutors: :environment do

    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "tutors"))
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
      # puts row.to_hash
      puts "#{t.name} saved"
    end

  end
