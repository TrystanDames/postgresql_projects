import sqlite3

connection = sqlite3.connect("DataDB")

def create_table():
	with connection:
		connection.execute("CREATE TABLE entries (content text, date text);")

def add_entry(entry_content, entry_date):
	entries.append({"content" : entry_content, "date": entry_date})

def get_entries():
	return entries