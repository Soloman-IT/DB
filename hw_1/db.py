import json

class Client:
	count = 0
	def __init__(self, fio, number, bank_cart):
		self._id = Client.count
		Client.count += 1
		self.fio = fio
		self.number = number
		self.bank_cart = bank_cart
		self.order = None

	def save_db(self):
		with open("db.json", "w+") as file:
			dict_1 = dict()
			json.load(dict_1)
			
			json.dump(self.__dict__, file)

	def __str__(self):
		return self.fio
#		return self.__dict__
class Taxist:
	count = 0
	def __init__(self, fio, car, rating, order, tariff):
		self._id = Taxist.count
		Client.count += 1
		self.fio = fio
		self.car = car
		self.rating = rating
		self.order = order
		self.tariff = tariff

	def __str__(self):
		return self.fio
#		return self.__dict__
class Order:
	count = 0
	order_list = []
	def __init__(self, client, taxist, adress, price, coordinate, data):
		self._id = Order.count
		Order.count += 1
		self.client = client
		self.taxist = taxist
		self.adress = adress
		self.price = price
		self.coordinate = coordinate
		self.data = data
		Order.order_list.append(self)

	def __str__(self):
		return f"{self.id} order"
#		return self.__dict__
class Tariff:
	count = 0
	def __init__(self, choose_tarrif, car):
		self._id = Tariff.count
		Tariff.count += 1
		self.choose_tarrif = choose_tarrif
		self.car = car

	def __str__(self):
		return f"{self.id} tariff"
	#	return self.__dict__
cl_1 = Client("random_fio", "random_number", "random_bank_cart")
cl_2 = Client("random_fio_1", "random_number_1", "random_bank_cart_1")
tx_1 = Taxist("random_fio_2", "random_car", "random_rating", None, None)
or_1 = Order(cl_1, tx_1, "random adress", "random price", "coordinate", "20.09.2005")
tr_1 = Tariff("econom_tariff", "random_car")
tx_1.order = or_1
tx_1.tariff = tr_1
cl_1.order = or_1
data = {"db" : {"Client" : [{cl_1.fio : cl_1._id}, {cl_2.fio : cl_2._id}], "Taxist" : [{tx_1.fio : tx_1._id}], "Order" : [tx_1._id], "Tariff" : [tr_1._id]}}
# with open("db.json", "w") as file:
# 	json.dump(data, file)
with open("db.json", "r") as file:
	data = (json.load(file))

for k, v in data.items():
	for i, n in v.items():
		if i == "Order":
			new_data = n
data_cl = input("Введите клиента :")
data_adr = input("Введите дату пример(12.01.2001)")
for elem in Order.order_list:
	if elem.client.fio == data_cl and elem.data == data_adr:
		print("Найдено!")