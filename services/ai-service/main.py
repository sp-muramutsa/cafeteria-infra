from fastapi import FastAPI
# from pydantic import BaseModel

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello, the AI Engine service is running on K8s!!!!"}

@app.get("/health")
def health_check():
    return {"status": "AI Engine service is healthy"}