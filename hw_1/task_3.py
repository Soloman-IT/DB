import json
with open("db.json", "r") as file:
	data = (json.load(file))

for k, v in data.items():
	for i, n in v.items():
		if i == "Order":
			new_data = n
print(data)