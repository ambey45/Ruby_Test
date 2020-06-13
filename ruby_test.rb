# consider max heading lebel as 5

userInput = [{ id: 1, title: "heading1", heading_level: 0 },
{ id: 2, title: "heading2", heading_level: 2 },
{ id: 3, title: "heading3", heading_level: 0 },
{ id: 4, title: "heading4", heading_level: 3 }]


dafault_index = [0]*5
current_index = -1
tabedSpaced = "       "

userInput.select do |p|
lebel = p[:heading_level]
if(lebel > current_index)
for i in (current_index+1)..lebel
dafault_index[i] = dafault_index[i]+1
i = i+1
end
else
dafault_index[lebel] = dafault_index[lebel] + 1
for i in (lebel+1)..(dafault_index.length - 1)
dafault_index[i] = 0
i = i +1
end 
end
current_index = lebel
for i in 1..lebel
print tabedSpaced
i = i+1
end
for i in 0..lebel
if dafault_index[i] > 0
print dafault_index[i].to_s + "."
i = i+1
end
end
puts " " + p[:title].to_s
end