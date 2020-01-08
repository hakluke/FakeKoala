import psycopg2
import graphviz

# DB connection
conn = psycopg2.connect("host=localhost user=postgres")
cur = conn.cursor()
cur.execute("SELECT hashtags FROM tweets")

# Graphviz object

dot = graphviz.Graph(comment='Hashtag links',format='svg')

row = True

graph = dict()

while row:
  row = cur.fetchone()
  if row == None: break
  # Assuming the row is safe, its an array
  hashtags = eval(row[0])
  for hashtag in hashtags:
    if hashtag == None: break
    if hashtag not in graph:
      graph[hashtag] = dict()
    for hashtag_link in hashtags:
      # TODO: Make edges not duplicate
      if hashtag_link not in graph[hashtag]:
        graph[hashtag][hashtag_link] = 0
      graph[hashtag][hashtag_link] += 1

for node in graph:
  for edge in graph[node]:
    # Arbitrary cutoff here
    if graph[node][edge] > 100:
      dot.edge(node,edge,penwidth=str(graph[node][edge]/100))

dot.render()


