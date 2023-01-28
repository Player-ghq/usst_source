# step 2/3 ģ������
import keras
from keras.layers import *
from keras.models import *
from keras.optimizers import *
TIME_PERIODS = 6000
def build_model(input_shape=(TIME_PERIODS,),num_classes=10):
    model = Sequential()
    model.add(Reshape((TIME_PERIODS, 1), input_shape=input_shape))
    model.add(Conv1D(16, 8,strides=2, activation='relu',input_shape=(TIME_PERIODS,1)))
 
    model.add(Conv1D(16, 8,strides=2, activation='relu',padding="same"))
    model.add(MaxPooling1D(2))
 
    model.add(Conv1D(64, 4,strides=2, activation='relu',padding="same"))
    model.add(Conv1D(64, 4,strides=2, activation='relu',padding="same"))
    model.add(MaxPooling1D(2))
    model.add(Conv1D(256, 4,strides=2, activation='relu',padding="same"))
    model.add(Conv1D(256, 4,strides=2, activation='relu',padding="same"))
    model.add(MaxPooling1D(2))
    model.add(Conv1D(512, 2,strides=1, activation='relu',padding="same"))
    model.add(Conv1D(512, 2,strides=1, activation='relu',padding="same"))
    model.add(MaxPooling1D(2))
    """model.add(Flatten())
    model.add(Dropout(0.3))
    model.add(Dense(256, activation='relu'))"""
    model.add(GlobalAveragePooling1D())
    model.add(Dropout(0.3))
    model.add(Dense(num_classes, activation='softmax'))
    return(model)
if __name__ == "__main__":
    # reference��keras�����ֲ�: https://keras.io/zh/models/model/    
    # ģ�ͽṹ
    model = build_model()
    # ������
    model.compile(loss='categorical_crossentropy', optimizer=Adam(0.0002), metrics=['accuracy'])
    # ģ�ʹ�ӡ    
    print(model.summary())
    pass