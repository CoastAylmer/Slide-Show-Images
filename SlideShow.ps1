# mkdir -Force "C:\Users\$env:USERNAME\Pictures\SlideShow"
# cd "C:\Users\$env:USERNAME\Pictures\SlideShow"
# & "C:\Program Files\Git\cmd\git.exe" clone https://github.com/CoastAylmer/Slide-Show-Images.git .

# Dynamically retrieve the logged-in user's name
$userName = (Get-WmiObject -Class Win32_ComputerSystem).UserName.Split('\\')[1]

# Create the directory if it doesn't exist
$slideShowPath = "C:\Users\$userName\Pictures\SlideShow"
mkdir -Force $slideShowPath

# Change to the directory
cd $slideShowPath

# Clone the Git repository using the correct path to git.exe
& "C:\Program Files\Git\cmd\git.exe" clone https://github.com/CoastAylmer/Slide-Show-Images.git .
