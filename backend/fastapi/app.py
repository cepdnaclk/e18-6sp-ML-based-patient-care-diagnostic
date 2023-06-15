
#import libraries
import uvicorn              #uvicorn to maintain asgi standards
from fastapi import FastAPI
from lung_cancer import LungCancer
import numpy as np
import pickle
import pandas as pd
import json

app = FastAPI()         #create app
pickle_in = open("classifier.pkl", "rb")        #open pickle in read
classifier = pickle.load(pickle_in)             #get model

#test get method
@app.get('/{name}')
def get_name(name: str):
    return {'Welcome {name1:} to ML-Based Patient Care '.format(name1 = name)}

#predict lung cancer
@app.post('/lung_cancer')
def predict_lung_cancer(data:LungCancer):
    data1 = data.dict()
    print(data1)
    prediction = classifier.predict([[data1["Age"],data1["Gender"],data1["Air_Pollution"],data1["Alcohol_use"],data1["Dust_Allergy"],data1["OccuPational_Hazards"],data1["Genetic_Risk"],data1["chronic_Lung_Disease"],data1["Balanced_Diet"],data1["Obesity"],data1["Smoking"],data1["Passive_Smoker"],data1["Chest_Pain"],data1["Coughing_of_Blood"],data1["Fatigue"],data1["Weight_Loss"],data1["Shortness_of_Breath"],data1["Wheezing"],data1["Swallowing_Difficulty"],data1["Clubbing_of_Finger_Nails"],data1["Frequent_Cold"],data1["Dry_Cough"],data1["Snoring"]]])
    print(prediction)
    returnPred = {
        "prediction":prediction[0]
    }
    
    json_to_return = json.dumps(returnPred, indent=1)
    return json_to_return

#run api with unicorn
if __name__=='__main__':
    uvicorn.run(app, host='127.0.0.1', port=8000)