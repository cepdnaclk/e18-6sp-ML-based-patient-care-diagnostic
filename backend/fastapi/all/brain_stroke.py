#to set parametets for lung cancer

from pydantic import BaseModel

class BrainStroke(BaseModel):
    gender: int
    age: float
    hypertension: int
    heart_disease: int
    ever_married: int
    work_type: int
    Residence_type: int
    avg_glucose_level: float
    bmi: float
    smoking_status: int
    
