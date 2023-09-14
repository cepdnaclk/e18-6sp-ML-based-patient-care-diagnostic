#to set parametets for lung cancer

from pydantic import BaseModel

class HeartFailure(BaseModel):
    age: int
    anaemia: int
    creatinine_phosphokinase: int
    diabetes: int
    ejection_fraction: int
    high_blood_pressure: int
    platelets: int
    serum_creatinine: float
    serum_sodium: int
    sex: int
    smoking: int
    time: int

