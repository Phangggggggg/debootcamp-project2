import os
from dotenv import load_dotenv
from integration.connectors.airbyte import AirbyteClient

if __name__ == "__main__":
    load_dotenv()
    AIRBYTE_USERNAME = os.environ.get("AIRBYTE_USERNAME")
    AIRBYTE_PASSWORD = os.environ.get("AIRBYTE_PASSWORD")
    AIRBYTE_SERVER_NAME = os.environ.get("AIRBYTE_SERVER_NAME")
    AIRBYTE_CONNECTION_ID = os.environ.get("AIRBYTE_CONNECTION_ID")
    

    airbyte_client = AirbyteClient(
        server_name=AIRBYTE_SERVER_NAME,
        username=AIRBYTE_USERNAME,
        password=AIRBYTE_PASSWORD
    )
    
    if airbyte_client.valid_connection():
        airbyte_client.trigger_sync(
            connection_id=AIRBYTE_CONNECTION_ID
        )
