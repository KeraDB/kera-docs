#!/bin/bash

# KeraDB Documentation Quick Start Script
# This script helps you quickly set up and test your documentation site

echo "🚀 KeraDB Documentation Quick Start"
echo "===================================="
echo ""

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js 18 or higher."
    echo "   Visit: https://nodejs.org/"
    exit 1
fi

echo "✅ Node.js version: $(node --version)"
echo ""

# Step 1: Install dependencies
echo "📦 Step 1: Installing dependencies..."
if [ ! -d "node_modules" ]; then
    npm install
    echo "✅ Dependencies installed"
else
    echo "✅ Dependencies already installed (run 'npm install' to update)"
fi
echo ""

# Step 2: Check configuration
echo "🔧 Step 2: Checking configuration..."
if grep -q "YOUR_GITHUB_USERNAME" docusaurus.config.ts; then
    echo "⚠️  IMPORTANT: Please update docusaurus.config.ts"
    echo "   Replace 'YOUR_GITHUB_USERNAME' with your actual GitHub username"
    echo ""
    echo "   You can do this by running:"
    echo "   sed -i '' 's/YOUR_GITHUB_USERNAME/your-username/g' docusaurus.config.ts"
    echo ""
else
    echo "✅ Configuration looks good"
fi
echo ""

# Step 3: Build test
echo "🏗️  Step 3: Testing build..."
npm run build
if [ $? -eq 0 ]; then
    echo "✅ Build successful"
else
    echo "❌ Build failed. Please check the error messages above."
    exit 1
fi
echo ""

# Step 4: Start dev server
echo "🎯 Step 4: Starting development server..."
echo ""
echo "The documentation will open at: http://localhost:3000/keradb/"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

npm start
