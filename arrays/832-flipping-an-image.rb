def flip_and_invert_image(image)
  image.each_with_index do |row, i|
    reverse = []
    -1.downto(-row.size).each do |i|
      reverse << row[i]
    end

    reverse.each_with_index do |el, i|
      if el == 1
          reverse[i] = 0
      else
          reverse[i] = 1
      end
    end

    image[i] = reverse
  end

  return image
end

image = [[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]
puts flip_and_invert_image(image).inspect