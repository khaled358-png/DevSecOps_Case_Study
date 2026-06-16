from app import app


def test_home_page():

    client = app.test_client()

    response = client.get("/")

    assert response.status_code == 200



def test_api_status():

    client = app.test_client()

    response = client.get("/api/status")

    assert response.status_code == 200

    data = response.get_json()

    assert data["status"] == "running"