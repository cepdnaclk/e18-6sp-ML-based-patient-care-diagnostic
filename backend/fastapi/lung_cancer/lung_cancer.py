#to set parametets for lung cancer

from pydantic import BaseModel

class LungCancer(BaseModel):
    Age: int
    Gender: int
    Air_Pollution: int
    Alcohol_use: int
    Dust_Allergy: int
    OccuPational_Hazards: int
    Genetic_Risk: int
    chronic_Lung_Disease: int
    Balanced_Diet: int 
    Obesity: int 
    Smoking: int 
    Passive_Smoker: int 
    Chest_Pain: int 
    Coughing_of_Blood: int 
    Fatigue: int 
    Weight_Loss: int 
    Shortness_of_Breath: int 
    Wheezing: int 
    Swallowing_Difficulty: int 
    Clubbing_of_Finger_Nails: int 
    Frequent_Cold: int 
    Dry_Cough: int 
    Snoring: int

