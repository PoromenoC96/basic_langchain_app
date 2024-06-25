FROM python:3.9

RUN pip install streamlit langchain_community pydantic

WORKDIR /app

COPY ["app.py","./"]

EXPOSE 8501

CMD ["streamlit", "run", "app.py"]