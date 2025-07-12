for file in images-fullres/*.png; do
  base=$(basename "${file%.png}")
  convert "$file" -strip -quality 80 "images/${base}.jpg"
done

cp images-fullres/*.jpg images
