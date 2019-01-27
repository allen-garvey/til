# Script to reset id sequences
# Written specifically for elixir/phoenix, but should be applicable for anything

# to get list of sequences
# SELECT c.relname FROM pg_class c WHERE c.relkind = 'S';
# from: https://stackoverflow.com/questions/1493262/list-all-sequences-in-a-postgres-db-8-1-with-sql

data = <<-eos
authors_id_seq
book_locations_id_seq
libraries_id_seq
genres_id_seq
ratings_id_seq
loans_id_seq
locations_id_seq
eos

# sql to reset sequence based on:
# https://stackoverflow.com/questions/244243/how-to-reset-postgres-primary-key-sequence-when-it-falls-out-of-sync
data.split("\n").each do |line|
	table_name = line.gsub(/_id_seq$/, '')
	sequence_name = line

	puts "SELECT setval('#{sequence_name}', COALESCE((SELECT MAX(id)+1 FROM #{table_name}), 1), false);"
end 