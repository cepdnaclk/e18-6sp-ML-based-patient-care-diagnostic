symptoms_array_unique=['fever','cough','sore throat','runny or stuffy nose','muscle aches','headache','fatigue','mucus production','shortness of breath','chest pain','nausea','vomiting','lightheadedness','sweating','sudden weakness','numbness on one side of the body','confusion','difficulty speaking','trouble seeing in one eye','severe headache','lump','unexplained weight loss','changes in bowel','bladder habits','persistent cough','indigestion','unexplained bleeding or discharge','increased thirst','frequent urination','blurred vision','cuts that are slow to heal','memory loss','difficulty thinking','changes in personality or behavior','pain','stiffness','swelling','inflammation in the joints','conjunctivitis','rash','pink eye','diarrhea','jaundice','liver damage','death','physical dependence on alcohol','tolerance to alcohol','withdrawal symptoms','impaired judgment','memory problems','heart disease','cancer','runny nose','sneezing','itchy eyes','itchy nose','throat','palate','excessive worry','fear','anxiety that interfere with daily life','pain in the lower right abdomen','difficulty with social interaction','repetitive behaviors','restricted interests','wheezing','coughing','chest tightness','stiff neck','sensitivity to light','extreme mood swings','from manito depression','blood in the urine','pain or burning when urinating','urgency to urinate','incontinence','redness','warmth','tenderness in the affected area','difficulty breathing','coughing up blood','inflammation in bursa','which is small sac of fluid that cushions joints','abnormal pap test results','abnormal vaginal bleeding','pain during sex','chronic bronchitis','emphysema','high levels of cholesterol in the blood','congestion','red','itchy','watery eyes','sadness','hopelessness','loss of interest in activities','changes in appetite','sleep','energy levels','loose','watery stools','disturbance in eating behavior that can lead to serious health problems','seizures','elevated body temperature ','abdominal cramps','pain in the upper right abdomen','sexually transmitted infection that can cause burning during urination','discharge from the penis or vagina','pain in the lower abdomen','dizziness','fainting','inflammation of the liver','sexually transmitted infection that can cause blisters on the genitals','mouth','other parts of the body','abdominal pain','bloating','constipation','pain in the lower back or side','cough that does not go away','blood in the sputum','chills','red eyes','swollen lymph nodes','tingling at the bite site','difficulty swallowing','hydrophobia','aerophobia','painful rash that follows nerve path','night sweats','weight loss','painful urination','burning','swollen','twisted veins','usually in the legs','raised','rough growths on the skin','itching','discharge from the vaginor penis','inflammation in the eye','decreased kidney function','pale skin','bulge in the wall of the aorta','the largest artery in the body','change in bowel habits','such as diarrhea','narrowing of the stool','blood in the stool','difficulty getting and keeping an erection ','widespread pain','tenderness','increased pressure in the eye that can damage the optic nerve','lead to vision loss','condition in which the heart cannot pump blood as well as it should','damage to the kidneys that can lead to kidney failure','condition that affects the lungs','can make it difficult to breathe','tremors','slow movement','difficulty with balance','coordination ','pain in the upper abdomen','numbness','tingling in the arms or legs','difficulty urinating','pain in the back or hips','erectile dysfunction','stiffness in the joints','lump in the neck','hoarseness','unexplained heat intolerance','sensitivity to cold','bloody stool','inflamed skin','high blood pressure','changes in urination','hyperthyroidism which is an overactive thyroid','hypothyroidism which is an underactive thyroid ','chronic autoimmune disease that can affect any part of the body']

symptoms_array_final = ['fever','cough','sore_throat','runny_or_stuffy_nose','muscle_aches','headache','fatigue','mucus_production','shortness_of_breath','chest_pain','nausea','vomiting','lightheadedness','sweating','sudden_weakness','numbness_on_one_side_of_the_body','confusion','difficulty_speaking','trouble_seeing_in_one_eye','severe_headache','lump','unexplained_weight_loss','changes_in_bowel','bladder_habits','persistent_cough','indigestion','unexplained_bleeding_or_discharge','increased_thirst','frequent_urination','blurred_vision','cuts_that_are_slow_to_heal','memory_loss','difficulty_thinking','changes_in_personality_or_behavior','pain','stiffness','swelling','inflammation_in_the_joints','conjunctivitis','rash','pink_eye','diarrhea','jaundice','liver_damage','death','physical_dependence_on_alcohol','tolerance_to_alcohol','withdrawal_symptoms','impaired_judgment','memory_problems','heart_disease','cancer','runny_nose','sneezing','itchy_eyes','itchy_nose','throat','palate','excessive_worry','fear','anxiety_that_interfere_with_daily_life','pain_in_the_lower_right_abdomen','difficulty_with_social_interaction','repetitive_behaviors','restricted_interests','wheezing','coughing','chest_tightness','stiff_neck','sensitivity_to_light','extreme_mood_swings','from_manito_depression','blood_in_the_urine','pain_or_burning_when_urinating','urgency_to_urinate','incontinence','redness','warmth','tenderness_in_the_affected_area','difficulty_breathing','coughing_up_blood','inflammation_in_bursa','which_is_small_sac_of_fluid_that_cushions_joints','abnormal_pap_test_results','abnormal_vaginal_bleeding','pain_during_sex','chronic_bronchitis','emphysema','high_levels_of_cholesterol_in_the_blood','congestion','red','itchy','watery_eyes','sadness','hopelessness','loss_of_interest_in_activities','changes_in_appetite','sleep','energy_levels','loose','watery_stools','disturbance_in_eating_behavior_that_can_lead_to_serious_health_problems','seizures','elevated_body_temperature_','abdominal_cramps','pain_in_the_upper_right_abdomen','sexually_transmitted_infection_that_can_cause_burning_during_urination','discharge_from_the_penis_or_vagina','pain_in_the_lower_abdomen','dizziness','fainting','inflammation_of_the_liver','sexually_transmitted_infection_that_can_cause_blisters_on_the_genitals','mouth','other_parts_of_the_body','abdominal_pain','bloating','constipation','pain_in_the_lower_back_or_side','cough_that_does_not_go_away','blood_in_the_sputum','chills','red_eyes','swollen_lymph_nodes','tingling_at_the_bite_site','difficulty_swallowing','hydrophobia','aerophobia','painful_rash_that_follows_nerve_path','night_sweats','weight_loss','painful_urination','burning','swollen','twisted_veins','usually_in_the_legs','raised','rough_growths_on_the_skin','itching','discharge_from_the_vaginor_penis','inflammation_in_the_eye','decreased_kidney_function','pale_skin','bulge_in_the_wall_of_the_aorta','the_largest_artery_in_the_body','change_in_bowel_habits','such_as_diarrhea','narrowing_of_the_stool','blood_in_the_stool','difficulty_getting_and_keeping_an_erection_','widespread_pain','tenderness','increased_pressure_in_the_eye_that_can_damage_the_optic_nerve','lead_to_vision_loss','condition_in_which_the_heart_cannot_pump_blood_as_well_as_it_should','damage_to_the_kidneys_that_can_lead_to_kidney_failure','condition_that_affects_the_lungs','can_make_it_difficult_to_breathe','tremors','slow_movement','difficulty_with_balance','coordination_','pain_in_the_upper_abdomen','numbness','tingling_in_the_arms_or_legs','difficulty_urinating','pain_in_the_back_or_hips','erectile_dysfunction','stiffness_in_the_joints','lump_in_the_neck','hoarseness','unexplained_heat_intolerance','sensitivity_to_cold','bloody_stool','inflamed_skin','high_blood_pressure','changes_in_urination','hyperthyroidism_which_is_an_overactive_thyroid','hypothyroidism_which_is_an_underactive_thyroid_','chronic_autoimmune_disease_that_can_affect_any_part_of_the_body']


#import libraries
import pandas as pd
from sklearn.tree import DecisionTreeClassifier
from sklearn.model_selection import train_test_split
from sklearn import metrics
import uvicorn
from fastapi import FastAPI
from Alls import All
import pickle
import numpy
import array as arr

app = FastAPI()
server = app.server
pickle_in = open("all.pkl", "rb")
all = pickle.load(pickle_in)

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
        elif not (i==' '):
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

    for i in input_array_final:
        if(i in sympotoms_direct_disease_dict):
            print(sympotoms_direct_disease_dict.get(i))
            return {
                'prediciton':sympotoms_direct_disease_dict.get(i)
            }

    labels=[]
    
    for i in range(len(symptoms_array_final)):
        if(symptoms_array_final[i] in input_array_final):
            labels.append(1)
        else:
            labels.append(0)

    
    prediciton = all.predict([labels])[0]
    print(prediciton)
    return {
        'prediction':prediciton
    }

if __name__ == '__main__':
    app.run_server(debug=False)



















