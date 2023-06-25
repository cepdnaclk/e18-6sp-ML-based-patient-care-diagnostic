#import libraries
import uvicorn              #uvicorn to maintain asgi standards
from fastapi import FastAPI
from lung_cancer.lung_cancer import LungCancer
from heart_disease.heart_disease import HeartDisease
import numpy as np
import pickle
import pandas as pd
import json

app = FastAPI()         #create app


pickle_in_lung = open("lung_cancer/classifier.pkl", "rb")        #open pickle in read
classifier_lung = pickle.load(pickle_in_lung)             #get model

# Heart Disease
pickle_in_heart = open("heart_disease/clf_gini.pkl", "rb")        #open pickle in read
classifier_heart = pickle.load(pickle_in_heart)             #get model

@app.get('/')
def index():
    return {'Message': 'Hello World'}

#test get method
@app.get('/{name}')
def get_name(name: str):
    return {'Welcome {name1:} to ML-Based Patient Care '.format(name1 = name)}

#predict lung cancer
@app.post('/lung_cancer')
def predict_lung_cancer(data:LungCancer):
    data1 = data.dict()
    prediction = classifier_lung.predict([[data1["Age"],data1["Gender"],data1["Air_Pollution"],data1["Alcohol_use"],data1["Dust_Allergy"],data1["OccuPational_Hazards"],data1["Genetic_Risk"],data1["chronic_Lung_Disease"],data1["Balanced_Diet"],data1["Obesity"],data1["Smoking"],data1["Passive_Smoker"],data1["Chest_Pain"],data1["Coughing_of_Blood"],data1["Fatigue"],data1["Weight_Loss"],data1["Shortness_of_Breath"],data1["Wheezing"],data1["Swallowing_Difficulty"],data1["Clubbing_of_Finger_Nails"],data1["Frequent_Cold"],data1["Dry_Cough"],data1["Snoring"]]])
    returnPred = {"prediction":prediction[0]}
    json_to_return = json.dumps(returnPred, indent=1)
    parse = json.loads(json_to_return)
    return parse
    # return {'Message': data1}

#predict heart disease
@app.post('/heart_disease')
def predict_heart_disease(data:HeartDisease):
    data1 = data.dict()

    age = int(data1["age"])
    anaemia = int(data1["age"])
    creatinine_phosphokinase = int(data1["age"])
    diabetes = int(data1["age"])
    ejection_fraction = int(data1["ejection_fraction"])
    high_blood_pressure = int(data1["high_blood_pressure"])
    platelets = float(data1["platelets"])
    serum_creatinine = float(data1["serum_creatinine"])
    serum_sodium = int(data1["serum_sodium"])
    sex = int(data1["sex"])
    smoking = int(data1["smoking"])
    time = int(data1["time"])

    prediction = classifier_heart.predict([[age,anaemia,creatinine_phosphokinase,diabetes,ejection_fraction,high_blood_pressure,platelets,serum_creatinine,serum_sodium,sex,smoking,time]])
    int_predict = int(prediction[0])
    returnPred = {"prediction":int_predict}
    json_to_return = json.dumps(returnPred, indent=1)
    parse = json.loads(json_to_return)
    return parse

#run api with unicorn
if __name__=='__main__':
    uvicorn.run(app, host='127.0.0.1', port=8000, reload=True)

