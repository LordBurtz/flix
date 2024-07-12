import os

content = "Lorem ipsum dolor sit amet."

encodings = [
    "iso-8859-1",
    "us-ascii",
    "utf8",
    "utf16",
    "UTF-16BE",
    "UTF-16LE"
]

for encoding in encodings:
    filename = f"test-{encoding.lower()}.txt"
    with open(filename, 'w', encoding=encoding) as file:
        file.write(content)
    print(f"File '{filename}' generated with encoding '{encoding}'.")

print("All files generated successfully.")
