import csv

class Artemia_Mortality(object):
    def __init__(self):
        self.data = []
        self.plates = []
        self.plate_dict = {}
        self.day_dict = {}
        self.day_lyst = []
        self.day_max = 0
        self.temp_day = {}
        self.day_lst = []
        self.plate_dict_1 = {}
        self.plate_dict_2 = {}
        self.plate_dict_3 = {}
        self.plate_dict_4 = {}
        self.plate_dict_5 = {}
        self.plate_dict_6 = {}
        self.plate_dict_7 = {}
        self.plate_dict_8 = {}
        self.plateday_1 = {}
        self.plateday_2 = {}
        self.plateday_3 = {}
        self.plateday_4 = {}
        self.plateday_5 = {}
        self.plateday_6 = {}
        self.plateday_7 = {}
        self.plateday_8 = {}
        self.platedeath_1 = {}
        self.platedeath_2 = {}
        self.platedeath_3 = {}
        self.platedeath_4 = {}
        self.platedeath_5 = {}
        self.platedeath_6 = {}
        self.platedeath_7 = {}
        self.platedeath_8 = {}

    def read_data(self,file_name):
        """Reads a csv file, formatted in the standard way for Dr. Dunn's lab (ie: Date, Month, Year, Plate Name,
        Day, Well, Alive, Molted"""
        dat = open(file_name,'r')
        data_temp = []
        for line in dat:
            for i in line.split(','):
                if len(data_temp) < 8:
                    data_temp.append(i)
                else:
                    self.data.append(data_temp)
                    data_temp = []
                    data_temp.append(i)
        z = 0
        for i in self.data:
            for q in i:
                temp = [x.replace('\n', '') for x in i]
                self.data[z] = temp
            z += 1
        self.data = self.data[1:]
        ##print(self.data)

    def plate_names(self):
        """Creates a list of the different plates used in that batch"""
        for i in self.data:
            if i[3] in self.plates:
                pass
            else:
                self.plates.append(i[3])

        ##print(self.plates)

    def run(self,file_name):
        """The function within Artemia_Mortality that runs all other functions"""
        self.read_data(file_name)
        self.plate_names()
        plate =len(self.plates)
        #plate = 1
        self.plate_dictionary()
        self.ind_plate_dict(plate)
        self.trial_days()
        self.plate_day(self.day_lyst,plate)
        self.death_count(plate)
        self.writer(plate,file_name)
        ##print(self.platedeath_1)


    def death_count(self,plate):
        temp_dict = {}
        if plate == 1:
            for i in self.plateday_1:
                z = 0
                for q in self.plateday_1[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_1[self.plates[0]] = temp_dict
        if plate == 2:
            for i in self.plateday_1:
                z = 0
                for q in self.plateday_1[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_1[self.plates[0]] = temp_dict
            temp_dict = {}
            for i in self.plateday_2:
                z = 0
                for q in self.plateday_2[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_2[self.plates[1]] = temp_dict
        if plate == 3:
            for i in self.plateday_1:
                z = 0
                for q in self.plateday_1[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_1[self.plates[0]] = temp_dict
            temp_dict = {}
            for i in self.plateday_2:
                z = 0
                for q in self.plateday_2[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_2[self.plates[1]] = temp_dict
            temp_dict = {}
            for i in self.plateday_3:
                z = 0
                for q in self.plateday_3[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_3[self.plates[2]] = temp_dict
        if plate == 4:
            for i in self.plateday_1:
                z = 0
                for q in self.plateday_1[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_1[self.plates[0]] = temp_dict
            temp_dict = {}
            for i in self.plateday_2:
                z = 0
                for q in self.plateday_2[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_2[self.plates[1]] = temp_dict
            temp_dict = {}
            for i in self.plateday_3:
                z = 0
                for q in self.plateday_3[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_3[self.plates[2]] = temp_dict
            temp_dict = {}
            for i in self.plateday_4:
                z = 0
                for q in self.plateday_4[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_4[self.plates[3]] = temp_dict
        if plate == 5:
            for i in self.plateday_1:
                z = 0
                for q in self.plateday_1[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_1[self.plates[0]] = temp_dict
            temp_dict = {}
            for i in self.plateday_2:
                z = 0
                for q in self.plateday_2[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_2[self.plates[1]] = temp_dict
            temp_dict = {}
            for i in self.plateday_3:
                z = 0
                for q in self.plateday_3[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_3[self.plates[2]] = temp_dict
            temp_dict = {}
            for i in self.plateday_4:
                z = 0
                for q in self.plateday_4[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_4[self.plates[3]] = temp_dict
            temp_dict = {}
            for i in self.plateday_5:
                z = 0
                for q in self.plateday_5[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_5[self.plates[4]] = temp_dict
        if plate == 6:
            for i in self.plateday_1:
                z = 0
                for q in self.plateday_1[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_1[self.plates[0]] = temp_dict
            temp_dict = {}
            for i in self.plateday_2:
                z = 0
                for q in self.plateday_2[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_2[self.plates[1]] = temp_dict
            temp_dict = {}
            for i in self.plateday_3:
                z = 0
                for q in self.plateday_3[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_3[self.plates[2]] = temp_dict
            temp_dict = {}
            for i in self.plateday_4:
                z = 0
                for q in self.plateday_4[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_4[self.plates[3]] = temp_dict
            temp_dict = {}
            for i in self.plateday_5:
                z = 0
                for q in self.plateday_5[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_5[self.plates[4]] = temp_dict
            temp_dict = {}
            for i in self.plateday_6:
                z = 0
                for q in self.plateday_6[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_6[self.plates[5]] = temp_dict
        if plate == 7:
            for i in self.plateday_1:
                z = 0
                for q in self.plateday_1[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_1[self.plates[0]] = temp_dict
            temp_dict = {}
            for i in self.plateday_2:
                z = 0
                for q in self.plateday_2[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_2[self.plates[1]] = temp_dict
            temp_dict = {}
            for i in self.plateday_3:
                z = 0
                for q in self.plateday_3[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_3[self.plates[2]] = temp_dict
            temp_dict = {}
            for i in self.plateday_4:
                z = 0
                for q in self.plateday_4[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_4[self.plates[3]] = temp_dict
            temp_dict = {}
            for i in self.plateday_5:
                z = 0
                for q in self.plateday_5[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_5[self.plates[4]] = temp_dict
            temp_dict = {}
            for i in self.plateday_6:
                z = 0
                for q in self.plateday_6[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_6[self.plates[5]] = temp_dict
            temp_dict = {}
            for i in self.plateday_7:
                z = 0
                for q in self.plateday_7[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_7[self.plates[6]] = temp_dict
        if plate == 8:
            for i in self.plateday_1:
                z = 0
                for q in self.plateday_1[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_1[self.plates[0]] = temp_dict
            temp_dict = {}
            for i in self.plateday_2:
                z = 0
                for q in self.plateday_2[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_2[self.plates[1]] = temp_dict
            temp_dict = {}
            for i in self.plateday_3:
                z = 0
                for q in self.plateday_3[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_3[self.plates[2]] = temp_dict
            temp_dict = {}
            for i in self.plateday_4:
                z = 0
                for q in self.plateday_4[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_4[self.plates[3]] = temp_dict
            temp_dict = {}
            for i in self.plateday_5:
                z = 0
                for q in self.plateday_5[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_5[self.plates[4]] = temp_dict
            temp_dict = {}
            for i in self.plateday_6:
                z = 0
                for q in self.plateday_6[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_6[self.plates[5]] = temp_dict
            temp_dict = {}
            for i in self.plateday_7:
                z = 0
                for q in self.plateday_7[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_7[self.plates[6]] = temp_dict
            temp_dict = {}
            for i in self.plateday_8:
                z = 0
                for q in self.plateday_8[i]:
                    if int(q[6]) == 0:
                        z += 1
                temp_dict[i] = z
            self.platedeath_8[self.plates[7]] = temp_dict

    def ind_plate_dict(self,plate):
        if plate == 1:
            plt = self.plates[0]
            self.plate_dict_1[plt] = self.plate_dict[plt]
            #print(self.plate_dict_1)
        elif plate == 2:
            plt = self.plates[0]
            self.plate_dict_1[plt] = self.plate_dict[plt]
            #print(self.plate_dict_1)
            plt = self.plates[1]
            self.plate_dict_2[plt] = self.plate_dict[plt]
            #print(self.plate_dict_2)
        elif plate == 3:
            plt = self.plates[0]
            self.plate_dict_1[plt] = self.plate_dict[plt]
            #print(self.plate_dict_1)
            plt = self.plates[1]
            self.plate_dict_2[plt] = self.plate_dict[plt]
            #print(self.plate_dict_2)
            plt = self.plates[2]
            self.plate_dict_3[plt] = self.plate_dict[plt]
            #print(self.plate_dict_3)
        elif plate == 4:
            plt = self.plates[0]
            self.plate_dict_1[plt] = self.plate_dict[plt]
            #print(self.plate_dict_1)
            plt = self.plates[1]
            self.plate_dict_2[plt] = self.plate_dict[plt]
            #print(self.plate_dict_2)
            plt = self.plates[2]
            self.plate_dict_3[plt] = self.plate_dict[plt]
            #print(self.plate_dict_3)
            plt = self.plates[3]
            self.plate_dict_4[plt] = self.plate_dict[plt]
            #print(self.plate_dict_4)
        elif plate == 5:
            plt = self.plates[0]
            self.plate_dict_1[plt] = self.plate_dict[plt]
            #print(self.plate_dict_1)
            plt = self.plates[1]
            self.plate_dict_2[plt] = self.plate_dict[plt]
            #print(self.plate_dict_2)
            plt = self.plates[2]
            self.plate_dict_3[plt] = self.plate_dict[plt]
            #print(self.plate_dict_3)
            plt = self.plates[3]
            self.plate_dict_4[plt] = self.plate_dict[plt]
            #print(self.plate_dict_4)
            plt = self.plates[4]
            self.plate_dict_5[plt] = self.plate_dict[plt]
            #print(self.plate_dict_5)
        elif plate == 6:
            plt = self.plates[0]
            self.plate_dict_1[plt] = self.plate_dict[plt]
            #print(self.plate_dict_1)
            plt = self.plates[1]
            self.plate_dict_2[plt] = self.plate_dict[plt]
            #print(self.plate_dict_2)
            plt = self.plates[2]
            self.plate_dict_3[plt] = self.plate_dict[plt]
            #print(self.plate_dict_3)
            plt = self.plates[3]
            self.plate_dict_4[plt] = self.plate_dict[plt]
            #print(self.plate_dict_4)
            plt = self.plates[4]
            self.plate_dict_5[plt] = self.plate_dict[plt]
            #print(self.plate_dict_5)
            plt = self.plates[5]
            self.plate_dict_6[plt] = self.plate_dict[plt]
            #print(self.plate_dict_6)
        elif plate == 7:
            plt = self.plates[0]
            self.plate_dict_1[plt] = self.plate_dict[plt]
            #print(self.plate_dict_1)
            plt = self.plates[1]
            self.plate_dict_2[plt] = self.plate_dict[plt]
            #print(self.plate_dict_2)
            plt = self.plates[2]
            self.plate_dict_3[plt] = self.plate_dict[plt]
            #print(self.plate_dict_3)
            plt = self.plates[3]
            self.plate_dict_4[plt] = self.plate_dict[plt]
            #print(self.plate_dict_4)
            plt = self.plates[4]
            self.plate_dict_5[plt] = self.plate_dict[plt]
            #print(self.plate_dict_5)
            plt = self.plates[5]
            self.plate_dict_6[plt] = self.plate_dict[plt]
            #print(self.plate_dict_6)
            plt = self.plates[6]
            self.plate_dict_7[plt] = self.plate_dict[plt]
            #print(self.plate_dict_7)
        elif plate == 8:
            plt = self.plates[0]
            self.plate_dict_1[plt] = self.plate_dict[plt]
            #print(self.plate_dict_1)
            plt = self.plates[1]
            self.plate_dict_2[plt] = self.plate_dict[plt]
            #print(self.plate_dict_2)
            plt = self.plates[2]
            self.plate_dict_3[plt] = self.plate_dict[plt]
            #print(self.plate_dict_3)
            plt = self.plates[3]
            self.plate_dict_4[plt] = self.plate_dict[plt]
            #print(self.plate_dict_4)
            plt = self.plates[4]
            self.plate_dict_5[plt] = self.plate_dict[plt]
            #print(self.plate_dict_5)
            plt = self.plates[5]
            self.plate_dict_6[plt] = self.plate_dict[plt]
            #print(self.plate_dict_6)
            plt = self.plates[6]
            self.plate_dict_7[plt] = self.plate_dict[plt]
            #print(self.plate_dict_7)
            plt = self.plates[7]
            self.plate_dict_8[plt] = self.plate_dict[plt]
            #print(self.plate_dict_8)
        elif plate > 8:
            print("The code needs to be updated to allow for more plates to be examined")

    def plate_dictionary(self):
        temp_plate = []
        for i in self.plates:
            for q in self.data:
                if i in q:
                    if i in self.plate_dict:
                        temp_plate.append(q)
                        self.plate_dict[i] = temp_plate
                    else:
                        temp_plate = []
                        temp_plate.append(q)
                        self.plate_dict[i] = temp_plate
                else:
                    pass
        #print(self.plate_dict)

    def plate_day(self, day, plate):
        if plate == 1:
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_1:
                    for z in self.plate_dict_1[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_1[day[i]] = temp_lyst
            #print(self.plateday_1)
        elif plate == 2:
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_1:
                    for z in self.plate_dict_1[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_1[day[i]] = temp_lyst
            #print(self.plateday_1)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_2:
                    for z in self.plate_dict_1[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_2[day[i]] = temp_lyst
            #print(self.plateday_2)
        elif plate == 3:
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_1:
                    for z in self.plate_dict_1[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_1[day[i]] = temp_lyst
            #print(self.plateday_1)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_2:
                    for z in self.plate_dict_2[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_2[day[i]] = temp_lyst
            #print(self.plateday_2)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_3:
                    for z in self.plate_dict_3[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_3[day[i]] = temp_lyst
            #print(self.plateday_3)
        elif plate == 4:
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_1:
                    for z in self.plate_dict_1[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_1[day[i]] = temp_lyst
            #print(self.plateday_1)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_2:
                    for z in self.plate_dict_2[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_2[day[i]] = temp_lyst
            #print(self.plateday_2)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_3:
                    for z in self.plate_dict_3[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_3[day[i]] = temp_lyst
            #print(self.plateday_3)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_4:
                    for z in self.plate_dict_4[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_4[day[i]] = temp_lyst
            #print(self.plateday_4)
        elif plate == 5:
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_1:
                    for z in self.plate_dict_1[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_1[day[i]] = temp_lyst
            #print(self.plateday_1)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_2:
                    for z in self.plate_dict_2[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_2[day[i]] = temp_lyst
            #print(self.plateday_2)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_3:
                    for z in self.plate_dict_3[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_3[day[i]] = temp_lyst
            #print(self.plateday_3)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_4:
                    for z in self.plate_dict_4[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_4[day[i]] = temp_lyst
            #print(self.plateday_4)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_5:
                    for z in self.plate_dict_5[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_5[day[i]] = temp_lyst
            #print(self.plateday_5)
        elif plate == 6:
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_1:
                    for z in self.plate_dict_1[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_1[day[i]] = temp_lyst
            #print(self.plateday_1)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_2:
                    for z in self.plate_dict_2[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_2[day[i]] = temp_lyst
            #print(self.plateday_2)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_3:
                    for z in self.plate_dict_3[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_3[day[i]] = temp_lyst
            #print(self.plateday_3)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_4:
                    for z in self.plate_dict_4[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_4[day[i]] = temp_lyst
            #print(self.plateday_4)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_5:
                    for z in self.plate_dict_5[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_5[day[i]] = temp_lyst
            #print(self.plateday_5)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_6:
                    for z in self.plate_dict_6[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_6[day[i]] = temp_lyst
            #print(self.plateday_6)
        elif plate == 7:
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_1:
                    for z in self.plate_dict_1[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_1[day[i]] = temp_lyst
            #print(self.plateday_1)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_2:
                    for z in self.plate_dict_2[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_2[day[i]] = temp_lyst
            #print(self.plateday_2)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_3:
                    for z in self.plate_dict_3[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_3[day[i]] = temp_lyst
            #print(self.plateday_3)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_4:
                    for z in self.plate_dict_4[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_4[day[i]] = temp_lyst
            #print(self.plateday_4)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_5:
                    for z in self.plate_dict_5[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_5[day[i]] = temp_lyst
            #print(self.plateday_5)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_6:
                    for z in self.plate_dict_6[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_6[day[i]] = temp_lyst
            #print(self.plateday_6)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_7:
                    for z in self.plate_dict_7[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_7[day[i]] = temp_lyst
            #print(self.plateday_7)
        elif plate == 8:
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_1:
                    for z in self.plate_dict_1[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_1[day[i]] = temp_lyst
            #print(self.plateday_1)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_2:
                    for z in self.plate_dict_2[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_2[day[i]] = temp_lyst
            #print(self.plateday_2)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_3:
                    for z in self.plate_dict_3[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_3[day[i]] = temp_lyst
            #print(self.plateday_3)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_4:
                    for z in self.plate_dict_4[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_4[day[i]] = temp_lyst
            #print(self.plateday_4)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_5:
                    for z in self.plate_dict_5[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_5[day[i]] = temp_lyst
            #print(self.plateday_5)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_6:
                    for z in self.plate_dict_6[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_6[day[i]] = temp_lyst
            #print(self.plateday_6)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_7:
                    for z in self.plate_dict_7[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_7[day[i]] = temp_lyst
            #print(self.plateday_7)
            for i in range(len(day)):
                temp_lyst = []
                for q in self.plate_dict_8:
                    for z in self.plate_dict_8[q]:
                        if int(z[4]) == day[i]:
                            temp_lyst.append(z)
                        else:
                            self.plateday_8[day[i]] = temp_lyst
            #print(self.plateday_8)

    def trial_days(self):
        for i in self.plate_dict:
            for q in self.plate_dict[i]:
                if int(q[4]) not in self.day_lyst:
                    self.day_lyst.append(int(q[4]))
        #print(self.day_lyst)
        self.day_max = max(self.day_lyst)

    def writer(self,plate,file_name):
        if plate == 1:
            f = file_name[0:-4]
            fname = ("{}{}".format(f,"_plate1.csv"))
            header = ["Plate_Name","Day","Total_Dead"]
            with open(fname,'w') as out_file:
                file_writer = csv.writer(out_file, delimiter = ',', quotechar = '"', quoting = csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_1:
                    for q in self.platedeath_1[i]:
                        name = i
                        day = q
                        dead = self.platedeath_1[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
        elif plate == 2:
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate1.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_1:
                    for q in self.platedeath_1[i]:
                        name = i
                        day = q
                        dead = self.platedeath_1[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate2.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_2:
                    for q in self.platedeath_2[i]:
                        name = i
                        day = q
                        dead = self.platedeath_2[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
        elif plate == 3:
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate1.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_1:
                    for q in self.platedeath_1[i]:
                        name = i
                        day = q
                        dead = self.platedeath_1[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate2.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_2:
                    for q in self.platedeath_2[i]:
                        name = i
                        day = q
                        dead = self.platedeath_2[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate3.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_3:
                    for q in self.platedeath_3[i]:
                        name = i
                        day = q
                        dead = self.platedeath_3[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
        elif plate == 4:
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate1.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_1:
                    for q in self.platedeath_1[i]:
                        name = i
                        day = q
                        dead = self.platedeath_1[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate2.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_2:
                    for q in self.platedeath_2[i]:
                        name = i
                        day = q
                        dead = self.platedeath_2[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate3.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_3:
                    for q in self.platedeath_3[i]:
                        name = i
                        day = q
                        dead = self.platedeath_3[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate4.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_4:
                    for q in self.platedeath_4[i]:
                        name = i
                        day = q
                        dead = self.platedeath_4[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
        elif plate == 5:
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate1.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_1:
                    for q in self.platedeath_1[i]:
                        name = i
                        day = q
                        dead = self.platedeath_1[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate2.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_2:
                    for q in self.platedeath_2[i]:
                        name = i
                        day = q
                        dead = self.platedeath_2[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate3.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_3:
                    for q in self.platedeath_3[i]:
                        name = i
                        day = q
                        dead = self.platedeath_3[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate4.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_4:
                    for q in self.platedeath_4[i]:
                        name = i
                        day = q
                        dead = self.platedeath_4[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate5.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_5:
                    for q in self.platedeath_5[i]:
                        name = i
                        day = q
                        dead = self.platedeath_5[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
        elif plate == 6:
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate1.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_1:
                    for q in self.platedeath_1[i]:
                        name = i
                        day = q
                        dead = self.platedeath_1[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate2.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_2:
                    for q in self.platedeath_2[i]:
                        name = i
                        day = q
                        dead = self.platedeath_2[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate3.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_3:
                    for q in self.platedeath_3[i]:
                        name = i
                        day = q
                        dead = self.platedeath_3[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate4.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_4:
                    for q in self.platedeath_4[i]:
                        name = i
                        day = q
                        dead = self.platedeath_4[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate5.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_5:
                    for q in self.platedeath_5[i]:
                        name = i
                        day = q
                        dead = self.platedeath_5[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate6.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_6:
                    for q in self.platedeath_6[i]:
                        name = i
                        day = q
                        dead = self.platedeath_6[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
        elif plate == 7:
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate1.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_1:
                    for q in self.platedeath_1[i]:
                        name = i
                        day = q
                        dead = self.platedeath_1[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate2.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_2:
                    for q in self.platedeath_2[i]:
                        name = i
                        day = q
                        dead = self.platedeath_2[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate3.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_3:
                    for q in self.platedeath_3[i]:
                        name = i
                        day = q
                        dead = self.platedeath_3[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate4.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_4:
                    for q in self.platedeath_4[i]:
                        name = i
                        day = q
                        dead = self.platedeath_4[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate5.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_5:
                    for q in self.platedeath_5[i]:
                        name = i
                        day = q
                        dead = self.platedeath_5[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate6.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_6:
                    for q in self.platedeath_6[i]:
                        name = i
                        day = q
                        dead = self.platedeath_6[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate7.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_7:
                    for q in self.platedeath_7[i]:
                        name = i
                        day = q
                        dead = self.platedeath_7[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
        elif plate == 8:
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate1.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_1:
                    for q in self.platedeath_1[i]:
                        name = i
                        day = q
                        dead = self.platedeath_1[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate2.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_2:
                    for q in self.platedeath_2[i]:
                        name = i
                        day = q
                        dead = self.platedeath_2[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate3.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_3:
                    for q in self.platedeath_3[i]:
                        name = i
                        day = q
                        dead = self.platedeath_3[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate4.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_4:
                    for q in self.platedeath_4[i]:
                        name = i
                        day = q
                        dead = self.platedeath_4[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate5.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_5:
                    for q in self.platedeath_5[i]:
                        name = i
                        day = q
                        dead = self.platedeath_5[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate6.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_6:
                    for q in self.platedeath_6[i]:
                        name = i
                        day = q
                        dead = self.platedeath_6[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate7.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_7:
                    for q in self.platedeath_7[i]:
                        name = i
                        day = q
                        dead = self.platedeath_7[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)
            f = file_name[0:-4]
            fname = ("{}{}".format(f, "_plate8.csv"))
            header = ["Plate_Name", "Day", "Total_Dead"]
            with open(fname, 'w') as out_file:
                file_writer = csv.writer(out_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
                file_writer.writerow(header)
                for i in self.platedeath_8:
                    for q in self.platedeath_8[i]:
                        name = i
                        day = q
                        dead = self.platedeath_8[i][q]
                        row = [name, day, dead]
                        file_writer.writerow(row)



def file_check(prompt = "Please enter a csv file formatted for data in Dr. Dunn's Artemia Lab: "):
    """Ensures the proper file extension is inputted"""
    file = input(prompt)
    if file[-4:] == ".csv":
        return file
    else:
        return file_check("That is not a valid file format. Please retry: ")

def main():
    am = Artemia_Mortality()
    f = file_check()
    am.run(f)




if __name__ == "__main__":
    main()