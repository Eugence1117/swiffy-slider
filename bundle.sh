for file in src/*.js; do
  filename=$(basename "$file" .js)
  npx esbuild "$file" \
    --bundle \
    --minify \
    --sourcemap \
    --outfile="dist/js/${filename}.min.js"
  npx esbuild "$file" \
    --bundle \
    --outfile="dist/js/${filename}.js"
done


for file in src/*.css; do
  filename=$(basename "$file" .css)
  npx esbuild "$file" \
    --bundle \
    --minify \
    --sourcemap \
    --outfile="dist/css/${filename}.min.css"
  npx esbuild "$file" \
    --bundle \
    --outfile="dist/css/${filename}.css"
done
