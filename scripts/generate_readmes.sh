#!/bin/bash

boilerplates=("c_starter" "cpp_starter" "java_starter" "python_cli_starter" "html_starter" "node_express_starter" "react_tailwind_starter")

for bp in "${boilerplates[@]}"; do
  readme_path="boilerplates/$bp/README.md"
  echo "Generating $readme_path..."

  # Header
  echo "# ${bp//_/ }" > "$readme_path"
  echo "" >> "$readme_path"

  # Description
  echo "## 🛠 Description" >> "$readme_path"
  echo "This is a boilerplate for **${bp//_/ }** development." >> "$readme_path"
  echo "" >> "$readme_path"

  # Usage
  echo "## 🚀 Usage" >> "$readme_path"
  echo "\`\`\`bash" >> "$readme_path"
  echo "# Navigate into this boilerplate" >> "$readme_path"
  echo "cd boilerplates/$bp" >> "$readme_path"

  case "$bp" in
    c_starter)
      echo "gcc main.c -o app && ./app" >> "$readme_path"
      ;;
    cpp_starter)
      echo "g++ main.cpp -o app && ./app" >> "$readme_path"
      ;;
    java_starter)
      echo "javac Main.java && java Main" >> "$readme_path"
      ;;
    python_cli_starter)
      echo "python3 main.py --name Dibya" >> "$readme_path"
      ;;
    html_starter)
      echo "# Open in browser" >> "$readme_path"
      echo "start index.html" >> "$readme_path"
      ;;
    node_express_starter)
      echo "npm install && npm start" >> "$readme_path"
      ;;
    react_tailwind_starter)
      echo "# Assumes you're inside a React+Tailwind setup" >> "$readme_path"
      echo "npm install && npm run dev" >> "$readme_path"
      ;;
    *)
      echo "# TODO: Add run instructions" >> "$readme_path"
      ;;
  esac

  echo "\`\`\`" >> "$readme_path"
  echo "" >> "$readme_path"

  # Structure
  echo "## 📂 Structure" >> "$readme_path"
  echo "\`\`\`" >> "$readme_path"
  find "boilerplates/$bp" -type f | sed "s|boilerplates/$bp|  ├──|" >> "$readme_path"
  echo "\`\`\`" >> "$readme_path"

  # Notes
  echo "" >> "$readme_path"
  echo "## 🧠 Notes" >> "$readme_path"
  echo "- Add more files as needed" >> "$readme_path"
  echo "- Fork or clone to build your custom kit" >> "$readme_path"
done

echo "✅ All boilerplate READMEs generated!"
