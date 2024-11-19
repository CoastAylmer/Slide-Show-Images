
Write-Output "Current user: $env:USERNAME"

# Create the directory
mkdir -Force "C:\Users\$env:USERNAME\Pictures\SlideShow"

# Change to the correct directory
cd "C:\Users\$env:USERNAME\Pictures\SlideShow"

# Clone the repository using the full path to git.exe
& "C:\Program Files\Git\cmd\git.exe" clone https://github.com/CoastAylmer/Slide-Show-Images.git .

