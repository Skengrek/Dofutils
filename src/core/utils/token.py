import os

def get():
    with open('.envs/.discord', 'r') as f:
        data = f.readlines()

    return data[0].split('=')[-1]