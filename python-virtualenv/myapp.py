import sys

import requests


def main():
    print(f"Running under: {sys.prefix}")
    response = requests.get("https://pythonspeed.com", timeout=10)
    print(f"Fetched pythonspeed.com: HTTP {response.status_code}")


if __name__ == "__main__":
    main()
