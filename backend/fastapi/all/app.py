symptoms_array_unique = ['fever','cough','sore throat','runny or stuffy nose','muscle aches','headache','fatigue','mucus production','shortness of breath','chest pain','nausea','vomiting','lightheadedness','sweating','sudden weakness','numbness on one side of the body','confusion','difficulty speaking','trouble seeing in one eye','severe headache','lump','unexplained weight loss','changes in bowel','bladder habits','persistent cough','indigestion','unexplained bleeding or discharge','increased thirst','frequent urination','blurred vision','cuts that are slow to heal','memory loss','difficulty thinking','changes in personality or behavior','pain in joints','stiffness in joints','swelling of joints','inflammation in the joints','conjunctivitis','rash','pink eye','diarrhea','jaundice','liver damage','physical dependence on alcohol','tolerance to alcohol','withdrawal symptoms','impaired judgment','memory problems','heart disease','cancer','runny nose','sneezing','itchy eyes','itchy nose',' itchy throat',' itchy palate','excessive worry','fear','anxiety that interfere with daily life','pain in the lower right abdomen','difficulty with social interaction','repetitive behaviors','restricted interests','wheezing','coughing','chest tightness','stiff neck','sensitivity to light','extreme mood swings','from manito depression','blood in the urine','pain or burning when urinating','urgency to urinate','incontinence','pain swelling redness warmth tenderness in the affected area','difficulty breathing','coughing up blood','pain swelling inflammation in bursa','which is small sac of fluid that cushions joints','abnormal pap test results','abnormal vaginal bleeding','pain during sex','chronic bronchitis','emphysema','high levels of cholesterol in the blood','congestion','red eyes',' itchy eyes',' watery eyes','sadness','hopelessness','loss of interest in activities','changes in appetite','sleep','energy levels','loose','watery stools','disturbance in eating behavior that can lead to serious health problems','seizures','elevated body temperature','abdominal cramps','pain in the upper right abdomen','sexually transmitted infection that can cause burning during urination','discharge from the penis or vagina','pain in the lower abdomen','dizziness','fainting','inflammation of the liver','sexually transmitted infection that can cause blisters on the genitals','mouth','other parts of the body','abdominal pain','bloating','constipation','pain in the lower back or side','cough that does not go away','blood in the sputum','chills','swollen lymph nodes','tingling at the bite site','difficulty swallowing','hydrophobia','aerophobia','painful rash that follows nerve path','night sweats','weight loss','painful urination','burning','swollen legs',' twisted veins in the legs','raised rough growths on the skin','itching burning discharge from the vaginor penis','pain redness inflammation in the eye','decreased kidney function','pale skin','bulge in the wall of the aorta','the largest artery in the body','change in bowel habits','such as diarrhea','narrowing of the stool','blood in the stool','difficulty getting and keeping an erection ','widespread pain','tenderness','increased pressure in the eye that can damage the optic nerve','lead to vision loss','condition in which the heart cannot pump blood as well as it should','damage to the kidneys that can lead to kidney failure','condition that affects the lungs','can make it difficult to breathe','tremors','slow movement','stiffness','difficulty with balance','coordination','pain in the upper abdomen','pain numbness tingling in the arms or legs','difficulty urinating','pain in the back or hips','erectile dysfunction','lump in the neck','hoarseness','unexplained heat intolerance','sensitivity to cold','bloody stool','itchy red inflamed skin','swelling','high blood pressure','changes in urination','hyperthyroidism which is an overactive thyroid','hypothyroidism which is an underactive thyroid','chronic autoimmune disease that can affect any part of the body']

symptoms_array_final=['fever','cough','sore_throat','runny_or_stuffy_nose','muscle_aches','headache','fatigue','mucus_production','shortness_of_breath','chest_pain','nausea','vomiting','lightheadedness','sweating','sudden_weakness','numbness_on_one_side_of_the_body','confusion','difficulty_speaking','trouble_seeing_in_one_eye','severe_headache','lump','unexplained_weight_loss','changes_in_bowel','bladder_habits','persistent_cough','indigestion','unexplained_bleeding_or_discharge','increased_thirst','frequent_urination','blurred_vision','cuts_that_are_slow_to_heal','memory_loss','difficulty_thinking','changes_in_personality_or_behavior','pain_in_joints','stiffness_in_joints','swelling_of_joints','inflammation_in_the_joints','conjunctivitis','rash','pink_eye','diarrhea','jaundice','liver_damage','physical_dependence_on_alcohol','tolerance_to_alcohol','withdrawal_symptoms','impaired_judgment','memory_problems','heart_disease','cancer','runny_nose','sneezing','itchy_eyes','itchy_nose','_itchy_throat','_itchy_palate','excessive_worry','fear','anxiety_that_interfere_with_daily_life','pain_in_the_lower_right_abdomen','difficulty_with_social_interaction','repetitive_behaviors','restricted_interests','wheezing','coughing','chest_tightness','stiff_neck','sensitivity_to_light','extreme_mood_swings','from_manito_depression','blood_in_the_urine','pain_or_burning_when_urinating','urgency_to_urinate','incontinence','pain_swelling_redness_warmth_tenderness_in_the_affected_area','difficulty_breathing','coughing_up_blood','pain_swelling_inflammation_in_bursa','which_is_small_sac_of_fluid_that_cushions_joints','abnormal_pap_test_results','abnormal_vaginal_bleeding','pain_during_sex','chronic_bronchitis','emphysema','high_levels_of_cholesterol_in_the_blood','congestion','red_eyes','_itchy_eyes','_watery_eyes','sadness','hopelessness','loss_of_interest_in_activities','changes_in_appetite','sleep','energy_levels','loose','watery_stools','disturbance_in_eating_behavior_that_can_lead_to_serious_health_problems','seizures','elevated_body_temperature','abdominal_cramps','pain_in_the_upper_right_abdomen','sexually_transmitted_infection_that_can_cause_burning_during_urination','discharge_from_the_penis_or_vagina','pain_in_the_lower_abdomen','dizziness','fainting','inflammation_of_the_liver','sexually_transmitted_infection_that_can_cause_blisters_on_the_genitals','mouth','other_parts_of_the_body','abdominal_pain','bloating','constipation','pain_in_the_lower_back_or_side','cough_that_does_not_go_away','blood_in_the_sputum','chills','swollen_lymph_nodes','tingling_at_the_bite_site','difficulty_swallowing','hydrophobia','aerophobia','painful_rash_that_follows_nerve_path','night_sweats','weight_loss','painful_urination','burning','swollen_legs','_twisted_veins_in_the_legs','raised_rough_growths_on_the_skin','itching_burning_discharge_from_the_vaginor_penis','pain_redness_inflammation_in_the_eye','decreased_kidney_function','pale_skin','bulge_in_the_wall_of_the_aorta','the_largest_artery_in_the_body','change_in_bowel_habits','such_as_diarrhea','narrowing_of_the_stool','blood_in_the_stool','difficulty_getting_and_keeping_an_erection_','widespread_pain','tenderness','increased_pressure_in_the_eye_that_can_damage_the_optic_nerve','lead_to_vision_loss','condition_in_which_the_heart_cannot_pump_blood_as_well_as_it_should','damage_to_the_kidneys_that_can_lead_to_kidney_failure','condition_that_affects_the_lungs','can_make_it_difficult_to_breathe','tremors','slow_movement','stiffness','difficulty_with_balance','coordination','pain_in_the_upper_abdomen','pain_numbness_tingling_in_the_arms_or_legs','difficulty_urinating','pain_in_the_back_or_hips','erectile_dysfunction','lump_in_the_neck','hoarseness','unexplained_heat_intolerance','sensitivity_to_cold','bloody_stool','itchy_red_inflamed_skin','swelling','high_blood_pressure','changes_in_urination','hyperthyroidism_which_is_an_overactive_thyroid','hypothyroidism_which_is_an_underactive_thyroid','chronic_autoimmune_disease_that_can_affect_any_part_of_the_body']

sympotoms_indirect_disease = ['fever',
 'cough',
 'sore_throat',
 'runny_or_stuffy_nose',
 'muscle_aches',
 'headache',
 'fatigue',
 'shortness_of_breath',
 'chest_pain',
 'nausea',
 'vomiting',
 'lightheadedness',
 'sweating',
 'confusion',
 'unexplained_weight_loss',
 'indigestion',
 'frequent_urination',
 'memory_loss',
 'difficulty_thinking',
 'changes_in_personality_or_behavior',
 'pain_in_joints',
 'stiffness_in_joints',
 'swelling_of_joints',
 'rash',
 'diarrhea',
 'liver_damage',
 'runny_nose',
 'sneezing',
 'pain_in_the_lower_right_abdomen',
 'stiff_neck',
 'sensitivity_to_light',
 'blood_in_the_urine',
 'urgency_to_urinate',
 'abnormal_pap_test_results',
 'abnormal_vaginal_bleeding',
 'pain_during_sex',
 'red_eyes',
 'seizures',
 'abdominal_cramps',
 'dizziness',
 'abdominal_pain',
 'bloating',
 'constipation',
 'cough_that_does_not_go_away',
 'weight_loss',
 'raised_rough_growths_on_the_skin',
 'widespread_pain',
 'tenderness',
 'pain_in_the_upper_abdomen',
 'bloody_stool']

cure_and_disease = {'flu': 'over-the-counter medications,rest,fluids',
 'bronchitis': 'antibiotics,over-the-counter medications,rest,fluids',
 'pneumonia': 'antibiotics,over-the-counter medications,rest,fluids',
 'heart attack': 'emergency medical services',
 'stroke': 'emergency medical services',
 'cancer': 'surgery,chemotherapy,radiation therapy ',
 'diabetes': 'diet,exercise,medication',
 "alzheimer's disease": "there is no cure for alzheimer's disease,but there are treatments that can help manage the symptoms",
 'arthritis': 'medication,physical therapy,lifestyle changes',
 'adenovirus': 'antibiotics,over-the-counter medications,rest,fluids',
 'aflatoxicosis': 'there is no cure for aflatoxicosis,but treatment may include supportive care,liver transplantation',
 'alcoholism': 'treatment for alcoholism may include counseling,medication,support groups',
 'allergic rhinitis': 'over-the-counter medications,allergy shots',
 'anxiety disorder': 'treatment for anxiety disorders may include therapy,medication,combination of both',
 'appendicitis': 'appendectomy',
 'asperger syndrome': 'there is no cure for asperger syndrome,but there are treatments that can help manage the symptoms',
 'asthma': 'treatment for asthmmay include medication,lifestyle changes,allergy shots',
 'bacterial meningitis': 'antibiotics',
 'bipolar disorder': 'treatment for bipolar disorder may include medication,therapy,combination of both',
 'bladder cancer': 'surgery,chemotherapy,radiation therapy',
 'blood clot': 'treatment for blood clot may include medication,surgery,combination of both',
 'bursitis': 'medication,rest,ice,compression,elevation',
 'cervical cancer': 'surgery,chemotherapy,radiation therapy',
 'chickenpox': 'antiviral medication,over-the-counter medications,rest,fluids',
 'chronic obstructive pulmonary disease (copd)': 'treatment for copd may include medication,lifestyle changes,oxygen therapy',
 'cholesterol': 'diet,exercise,medication',
 'common cold': 'over-the-counter medications,rest,fluids',
 'conjunctivitis': 'over-the-counter medications,warm compresses',
 'depression ': 'treatment for depression may include medication,therapy,combination of both',
 'diarrhea': 'over-the-counter medications,rest,fluids',
 'eating disorder': 'treatment for eating disorders may include therapy,medication,support groups',
 'epilepsy': 'medication,surgery',
 'fever': 'over-the-counter medications,rest,fluids',
 'food poisoning': 'over-the-counter medications,rest,fluids',
 'gallstones': 'surgery',
 'gonorrhea': 'antibiotics',
 'heart disease': 'treatment for heart disease may include medication,lifestyle changes,surgery',
 'hepatitis': 'treatment for hepatitis may include medication,rest,lifestyle changes',
 'herpes': 'there is no cure for herpes,but there are treatments that can help manage the symptoms',
 'influenza': 'over-the-counter medications,rest,fluids',
 'irritable bowel syndrome (ibs)': 'treatment for ibs may include diet,lifestyle changes,medication',
 'kidney stones ': 'surgery',
 'lung cancer': 'surgery,chemotherapy,radiation therapy',
 'malaria': 'antimalarial drugs',
 'measles': 'measles vaccine',
 'meningitis': 'antibiotics',
 'mononucleosis': 'there is no cure for mononucleosis,but symptoms can be treated with rest,fluids,over-the-counter medications',
 'rabies': 'rabies vaccine',
 'salmonella': 'antibiotics',
 'shingles': 'antiviral medication',
 'tuberculosis (tb)': 'antibiotics',
 'urinary tract infection (uti)': 'antibiotics',
 'varicose veins': 'surgery,compression stockings,lifestyle changes',
 'warts ': 'over-the-counter medications,prescription medications,cryotherapy,laser therapy',
 'yeast infection': 'over-the-counter medications,prescription medications',
 'acanthamoebkeratitis': 'antibiotics,antifungals,surgery',
 'acute appendicitis': 'appendectomy',
 'acute kidney injury (aki) ': 'treatment for the underlying cause,such as dehydration,infection,medication side effect ',
 'anemia': 'treatment for anemidepends on the type of anemia,but may include medication,blood transfusions,surgery',
 'aortic aneurysm': 'surgery',
 'bacterial meningitis ': 'antibiotics',
 'cervical cancer ': 'surgery,chemotherapy,radiation therapy',
 'colorectal cancer': 'surgery,chemotherapy,radiation therapy',
 'dementia': 'there is no cure for dementia,but there are treatments that can help manage the symptoms',
 'erectile dysfunction': 'medication,lifestyle changes,surgery ',
 'fibromyalgi': 'medication,lifestyle changes ',
 'glaucoma': 'medication,surgery ',
 'heart failure': 'medication,lifestyle changes,surgery',
 'kidney disease': 'treatment for the underlying cause,such as high blood pressure,diabetes,an infection',
 'lung disease': 'treatment for the underlying cause,such as asthma,chronic obstructive pulmonary disease (copd),pneumonia',
 "parkinson's disease": 'medication,lifestyle changes',
 'peptic ulcer disease ': 'medication,lifestyle changes,surgery ',
 'peripheral artery disease': 'medication,lifestyle changes,surgery',
 'prostate cancer': 'surgery,radiation therapy,hormone therapy',
 'rheumatoid arthritis': 'medication,lifestyle changes',
 'stomach cancer': 'surgery,chemotherapy,radiation therapy',
 'thyroid cancer': 'surgery,radiation therapy,hormone therapy',
 'ulcerative colitis': 'medication,surgery',
 'warts': 'over-the-counter medications,prescription medications,cryotherapy,laser therapy',
 'atopic dermatitis': 'medication,lifestyle changes',
 'celiac disease': 'gluten-free diet',
 'chronic kidney disease': 'treatment for the underlying cause,such as high blood pressure,diabetes,an infection',
 "crohn's disease": 'medication,surgery',
 'epilepsy ': 'medication,surgery',
 'fibromyalgia': 'medication,lifestyle changes',
 "graves' disease": 'medication,surgery',
 "hashimoto's thyroiditis ": 'medication',
 'lupus': 'medication,lifestyle changes'}

doctor_and_disease = {'flu': 'family doctor,urgent care',
 'bronchitis': 'family doctor,pulmonologist',
 'pneumonia': 'family doctor,pulmonologist',
 'heart attack': 'cardiologist',
 'stroke': 'neurologist ',
 'cancer': 'oncologist',
 'diabetes': 'endocrinologist',
 "alzheimer's disease": 'neurologist',
 'arthritis': 'rheumatologist',
 'adenovirus': 'family doctor,urgent care',
 'aflatoxicosis': 'gastroenterologist',
 'alcoholism': 'psychiatrist,addiction specialist',
 'allergic rhinitis': 'allergist',
 'anxiety disorder': 'psychologist,psychiatrist',
 'appendicitis': 'surgeon ',
 'asperger syndrome': 'psychologist,psychiatrist',
 'asthma': 'allergist,pulmonologist',
 'bacterial meningitis': 'neurologist,neurosurgeon',
 'bipolar disorder': 'psychologist,psychiatrist',
 'bladder cancer': 'urologist',
 'blood clot': 'cardiologist,hematologist',
 'bursitis': 'family doctor,orthopedist',
 'cervical cancer': 'gynecologist',
 'chickenpox': 'family doctor,urgent care',
 'chronic obstructive pulmonary disease (copd)': 'pulmonologist',
 'cholesterol': 'cardiologist',
 'common cold': 'family doctor,urgent care',
 'conjunctivitis': 'family doctor,ophthalmologist',
 'depression ': 'psychologist,psychiatrist',
 'diarrhea': 'family doctor,urgent care',
 'eating disorder': 'psychologist,psychiatrist',
 'epilepsy': 'neurologist ',
 'fever': 'family doctor,urgent care',
 'food poisoning': 'family doctor,urgent care',
 'gallstones': 'surgeon ',
 'gonorrhea': 'urologist,gynecologist',
 'heart disease': 'cardiologist',
 'hepatitis': 'gastroenterologist',
 'herpes': 'urologist,gynecologist',
 'influenza': 'family doctor,urgent care',
 'irritable bowel syndrome (ibs)': 'family doctor,gastroenterologist',
 'kidney stones ': 'urologist',
 'lung cancer': 'oncologist',
 'malaria': 'family doctor,urgent care',
 'measles': 'family doctor,urgent care',
 'meningitis': 'neurologist,neurosurgeon',
 'mononucleosis': 'family doctor,urgent care',
 'rabies': 'doctor,urgent care',
 'salmonella': 'family doctor,urgent care ',
 'shingles': 'family doctor,dermatologist ',
 'tuberculosis (tb)': 'family doctor,pulmonologist',
 'urinary tract infection (uti)': 'urologist',
 'varicose veins': 'vascular surgeon',
 'warts ': 'dermatologist',
 'yeast infection': 'urologist,gynecologist',
 'acanthamoebkeratitis': 'ophthalmologist ',
 'acute appendicitis': 'surgeon',
 'acute kidney injury (aki) ': 'nephrologist ',
 'anemia': 'hematologist',
 'aortic aneurysm': 'vascular surgeon',
 'bacterial meningitis ': 'neurologist,neurosurgeon',
 'cervical cancer ': 'gynecologist ',
 'colorectal cancer': 'gastroenterologist',
 'dementia': 'neurologist ',
 'erectile dysfunction': 'urologist',
 'fibromyalgi': 'rheumatologist ',
 'glaucoma': 'ophthalmologist',
 'heart failure': 'cardiologist',
 'kidney disease': 'nephrologist',
 'lung disease': 'pulmonologist',
 "parkinson's disease": 'neurologist ',
 'peptic ulcer disease ': 'gastroenterologist',
 'peripheral artery disease': 'vascular surgeon',
 'prostate cancer': 'urologist',
 'rheumatoid arthritis': 'rheumatologist',
 'stomach cancer': 'gastroenterologist ',
 'thyroid cancer': 'endocrinologist',
 'ulcerative colitis': 'gastroenterologist ',
 'warts': 'dermatologist',
 'atopic dermatitis': 'dermatologist',
 'celiac disease': 'gastroenterologist',
 'chronic kidney disease': 'nephrologist',
 "crohn's disease": 'gastroenterologist',
 'epilepsy ': 'neurologist',
 'fibromyalgia': 'rheumatologist',
 "graves' disease": 'endocrinologist',
 "hashimoto's thyroiditis ": 'endocrinologist',
 'lupus': 'rheumatologist '}

risk_and_disease = {'flu': 'low (0.1%',
 'bronchitis': 'low (0.5%',
 'pneumonia': 'moderate (1%)',
 'heart attack': 'high (20%)',
 'stroke': 'high (15%)',
 'cancer': 'varies depending on the type of cancer',
 'diabetes': 'high (25%)',
 "alzheimer's disease": 'high (70%)',
 'arthritis': 'varies depending on the type of arthritis',
 'adenovirus': 'low (0.1%)',
 'aflatoxicosis': 'high (70%)',
 'alcoholism': 'high (25%)',
 'allergic rhinitis': 'low (0.1%)',
 'anxiety disorder': 'varies depending on the type of anxiety disorder',
 'appendicitis': 'high (20%)',
 'asperger syndrome': 'varies',
 'asthma': 'varies',
 'bacterial meningitis': 'high (20%)',
 'bipolar disorder': 'varies',
 'bladder cancer': 'high (70%)',
 'blood clot': 'high (20%)',
 'bursitis': 'varies depending on the bursa',
 'cervical cancer': 'high (70%)',
 'chickenpox': 'low (0.1%)',
 'chronic obstructive pulmonary disease (copd)': 'varies depending on the type of copd ',
 'cholesterol': 'varies depending on the level of cholesterol',
 'common cold': 'low (0.1%)',
 'conjunctivitis': 'low (0.1%)',
 'depression ': 'varies',
 'diarrhea': 'low (0.1%)',
 'eating disorder': 'varies depending on the type of eating disorder',
 'epilepsy': 'varies depending on the type of epilepsy',
 'fever': 'low (0.1%)',
 'food poisoning': 'low (0.1%)',
 'gallstones': 'high (20%)',
 'gonorrhea': 'high (70%)',
 'heart disease': 'high (20%)',
 'hepatitis': 'varies depending on the type of hepatitis',
 'herpes': 'high (70%)',
 'influenza': 'low (0.1%)',
 'irritable bowel syndrome (ibs)': 'varies',
 'kidney stones ': 'high (20%)',
 'lung cancer': 'high (70%)',
 'malaria': 'high (20%)',
 'measles': 'high (70%)',
 'meningitis': 'high (20%)',
 'mononucleosis': 'low (0.1%)',
 'rabies': 'high (70%)',
 'salmonella': 'low (0.1%)',
 'shingles': 'low (0.1%)',
 'tuberculosis (tb)': 'high (20%)',
 'urinary tract infection (uti)': 'low (0.1%)',
 'varicose veins': 'varies',
 'warts ': 'low (0.1%)',
 'yeast infection': 'low (0.1%)',
 'acanthamoebkeratitis': 'low (0.1%',
 'acute appendicitis': 'high (20%)',
 'acute kidney injury (aki) ': 'varies',
 'anemia': 'varies depending on the type of anemia',
 'aortic aneurysm': 'high (20%)',
 'bacterial meningitis ': 'high (20%)',
 'cervical cancer ': 'high (70%)',
 'colorectal cancer': 'high (70%)',
 'dementia': 'varies',
 'erectile dysfunction': 'varies',
 'fibromyalgi': 'varies',
 'glaucoma': 'varies',
 'heart failure': 'high (20%)',
 'kidney disease': 'varies',
 'lung disease': 'varies',
 "parkinson's disease": 'varies',
 'peptic ulcer disease ': 'varies',
 'peripheral artery disease': 'varies',
 'prostate cancer': 'high (70%)',
 'rheumatoid arthritis': 'varies',
 'stomach cancer': 'high (70%)',
 'thyroid cancer': 'high (70%)',
 'ulcerative colitis': 'varies',
 'warts': 'low (0.1%)',
 'atopic dermatitis': 'varies',
 'celiac disease': 'varies',
 'chronic kidney disease': 'varies',
 "crohn's disease": 'varies',
 'epilepsy ': 'varies',
 'fibromyalgia': 'varies',
 "graves' disease": 'varies',
 "hashimoto's thyroiditis ": 'varies',
 'lupus': 'varies'}

#import libraries
import pandas as pd
import uvicorn
from fastapi import FastAPI
from Alls import All
import pickle
import numpy
import array as arr
import sklearn
import json
from lung_cancer import LungCancer
from heart_failure import HeartFailure
from brain_stroke import BrainStroke
from diabetes import Diabetes



app = FastAPI()

pickle_in = open("all_svm.pkl", "rb")
all = pickle.load(pickle_in)

pickle_in= open("lung_cancer.pkl","rb")
lung_cancer= pickle.load(pickle_in)

pickle_in= open("heart.pkl","rb")
heart_failure= pickle.load(pickle_in)

pickle_in= open("diabetes.pkl","rb")
diabetes= pickle.load(pickle_in)

pickle_in= open("model_brain_stroke.pkl","rb")
brain_stroke= pickle.load(pickle_in)

# Dataset loading and exploratory data analysis
df = pd.read_csv('formatted_dataset_all.csv')
df2 = pd.read_csv('formatted_dataset_all.csv')

#array and dictionary for getting disease from symptoms directly
sympotoms_direct_disease = []
sympotoms_direct_disease_dict={}

# Drop the target variable
X = df.drop(['disease','cures', 'doctor'], axis=1)
disease = df['disease']

#for loop for setting the dictionary
for i in range(len(symptoms_array_final)):
    arr1=arr.array('i',df2[symptoms_array_final[i]])
    if(arr1.count(1)==1):
        index = arr1.index(1)
        sympotoms_direct_disease.append(symptoms_array_final[i])
        sympotoms_direct_disease_dict[symptoms_array_final[i]] = disease[index]



@app.get('/')
def index():
    return {'message': 'Hello World'}

@app.post('/predict_all')
def predict_all(data:All):

    data = data.dict()
    before_input_array = list(data['symptoms'])
    input_array =[]

    word=""     
    for i in before_input_array:
        if(i==','):
            input_array.append(word)
            word=""
        else:
            word=word+i
    
    input_array_final = []
    
    for i in range(len(input_array)):
        x = input_array[i].split(' ')
        string = input_array[i]
        if(len(x)>1):
            string = ""
            for j in range(len(x)):
                string = string+x[j]
                string = string + '_'    
            string = string[:-1]
        
        input_array_final.append(string)

    print(input_array_final)

    for i in input_array_final:
        if(i in sympotoms_direct_disease_dict):
            prediction = sympotoms_direct_disease_dict.get(i)
            return {
                'prediction':sympotoms_direct_disease_dict.get(i),
                'Cure': cure_and_disease.get(prediction),
                'Doctor': doctor_and_disease.get(prediction),
                'Risk': risk_and_disease.get(prediction),
            }

    labels=[]
    
    for i in range(len(sympotoms_indirect_disease)):
        if(sympotoms_indirect_disease[i] in input_array_final):
            labels.append(1)
        else:
            labels.append(0)

    
    prediciton = all.predict([labels])[0]
    return {
        'prediction':prediciton,
        'Cure': cure_and_disease.get(prediciton),
        'Doctor': doctor_and_disease.get(prediciton),
        'Risk': risk_and_disease.get(prediciton),
    }

#predict lung cancer
@app.post('/lung_cancer')
def predict_lung_cancer(data:LungCancer):
    data1 = data.dict()
    prediction = lung_cancer.predict([[data1["Age"],data1["Gender"],data1["Air_Pollution"],data1["Alcohol_use"],data1["Dust_Allergy"],data1["OccuPational_Hazards"],data1["Genetic_Risk"],data1["chronic_Lung_Disease"],data1["Balanced_Diet"],data1["Obesity"],data1["Smoking"],data1["Passive_Smoker"],data1["Chest_Pain"],data1["Coughing_of_Blood"],data1["Fatigue"],data1["Weight_Loss"],data1["Shortness_of_Breath"],data1["Wheezing"],data1["Swallowing_Difficulty"],data1["Clubbing_of_Finger_Nails"],data1["Frequent_Cold"],data1["Dry_Cough"],data1["Snoring"]]])
    returnPred = {"prediction":prediction[0]}
    print(returnPred)
    json_to_return = json.dumps(returnPred, indent=1)
    parse = json.loads(json_to_return)
    return parse


#predict lung cancer
@app.post('/heart_failure')
def predict_heart_failure(data:HeartFailure):
    data1 = data.dict()
    prediction = heart_failure.predict([[data1["age"],data1["anaemia"],data1["creatinine_phosphokinase"],data1["diabetes"],data1["ejection_fraction"],data1["high_blood_pressure"],data1["platelets"],data1["serum_creatinine"],data1["serum_sodium"],data1["sex"],data1["smoking"],data1["time"]]])
    returnPred = {"prediction":str(prediction[0])}
    print(returnPred)
    json_to_return = json.dumps(returnPred, indent=1)
    parse = json.loads(json_to_return)
    return parse

#predict diabetes
@app.post('/diabetes')
def predict_heart_failure(data:Diabetes):
    data1 = data.dict()
    prediction = diabetes.predict([[data1["Pregnancies"],data1["Glucose"],data1["BloodPressure"],data1["SkinThickness"],data1["Insulin"],data1["BMI"],data1["DiabetesPedigreeFunction"],data1["Age"]]])
    returnPred = {"prediction":str(prediction[0])}
    print(returnPred)
    json_to_return = json.dumps(returnPred, indent=1)
    parse = json.loads(json_to_return)
    return parse


#predict brain stroke
@app.post('/brain_stroke')
def predict_heart_failure(data:BrainStroke):
    data1 = data.dict()
    prediction = brain_stroke.predict([[data1["gender"],data1["age"],data1["hypertension"],data1["heart_disease"],data1["ever_married"],data1["work_type"],data1["Residence_type"],data1["avg_glucose_level"],data1["bmi"],data1["smoking_status"]]])
    returnPred = {"prediction":str(prediction[0])}
    print(returnPred)
    json_to_return = json.dumps(returnPred, indent=1)
    parse = json.loads(json_to_return)
    return parse


if __name__ == '__app__':
    uvicorn.run(app, host='127.0.0.1', port=8000)



