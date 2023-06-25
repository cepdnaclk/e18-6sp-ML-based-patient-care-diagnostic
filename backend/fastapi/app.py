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
    prediction = classifier_heart.predict([[data1["age"],data1["anaemia"],data1["creatinine_phosphokinase"],data1["diabetes"],data1["ejection_fraction"],data1["high_blood_pressure"],data1["platelets"],data1["serum_creatinine"],data1["serum_sodium"],data1["sex"],data1["smoking"],data1["time"]]])
    int_predict = int(prediction[0])
    returnPred = {"prediction":int_predict}
    json_to_return = json.dumps(returnPred, indent=1)
    parse = json.loads(json_to_return)
    return returnPred

#run api with unicorn
if __name__=='__main__':
    uvicorn.run(app, host='127.0.0.1', port=8000, reload=True)

    