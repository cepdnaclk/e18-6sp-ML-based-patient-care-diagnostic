#to set parametets for heart disease

from pydantic import BaseModel

class HeartDisease(BaseModel):
    age: int
    anaemia: int
    creatinine_phosphokinase: int
    diabetes: int
    ejection_fraction: int
    high_blood_pressure: int
    platelets: float
    serum_creatinine: float
    serum_sodium: int 
    sex: int 
    smoking: int 
    time: int