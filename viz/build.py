import psycopg2

conn = psycopg2.connect("host=localhost port=5432 dbname=docker user=docker")
cur = conn.cursor()
cur.execute("SELECT version()")
print(cur.fetchone())
