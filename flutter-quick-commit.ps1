# flutter-quick-commit.ps1

param(
    [Parameter(Mandatory=$true)]
    [string]$CommitMessage
)

# Define the full paths to Flutter and Dart
$flutterPath = "C:\Users\Nikolaus Franz\OneDrive\Documents\flutter\bin\flutter.bat"
$dartPath = "C:\Users\Nikolaus Franz\OneDrive\Documents\flutter\bin\dart.bat"

Write-Host "Script started. Flutter path: $flutterPath"
Write-Host "Dart path: $dartPath"

# Check if Flutter executable exists
if (Test-Path $flutterPath) {
    Write-Host "Flutter executable found."
    Write-Host "Flutter version:"
    & "$flutterPath" --version
} else {
    Write-Host "Flutter executable not found at the specified path."
    exit 1
}

# Check if Dart executable exists
if (Test-Path $dartPath) {
    Write-Host "Dart executable found."
    Write-Host "Dart version:"
    & "$dartPath" --version
} else {
    Write-Host "Dart executable not found at the specified path."
    exit 1
}

# Check if we're in a Flutter project
if (-not (Test-Path pubspec.yaml)) {
    Write-Error "Not a Flutter project. Please run this script from the root of your Flutter project."
    exit 1
}

# Check if we're in a Git repository
if (-not (Test-Path .git)) {
    Write-Error "Not a Git repository. Please initialize Git for this Flutter project."
    exit 1
}

# Run Dart format
Write-Host "Running Dart format..." -ForegroundColor Cyan
Write-Host "Command: & `"$dartPath`" format ."
& "$dartPath" format .

# Run Flutter analyze
Write-Host "Running Flutter analyze..." -ForegroundColor Cyan
Write-Host "Command: & `"$flutterPath`" analyze"
$analyzeResult = & "$flutterPath" analyze
if ($LASTEXITCODE -ne 0) {
    Write-Warning "Flutter analyze found issues. Please review and fix before committing."
    Write-Output $analyzeResult
    exit 1
}

# Add all changes
git add .

# Commit with the provided message
git commit -m $CommitMessage

# Push to the current branch
$currentBranch = git rev-parse --abbrev-ref HEAD
git push origin $currentBranch

Write-Host "Changes committed and pushed successfully!" -ForegroundColor Green