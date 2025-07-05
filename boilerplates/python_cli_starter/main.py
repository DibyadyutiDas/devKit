import argparse

def main():
    parser = argparse.ArgumentParser(description="Python CLI Starter")
    parser.add_argument("--name", help="Your name")
    args = parser.parse_args()

    # TODO: Add logic

if __name__ == "__main__":
    main()
