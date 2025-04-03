-- Color Palettes from Rose Pine
local rosePine = {
  ["Base"] = "#191724",
  ["Surface"] = "#1f1d2e",
  ["Overlay"] = "#26233a",
  ["Muted"] = "#6e6a86",
  ["Subtle"] = "#908caa",
  ["Text"] = "#e0def4",
  ["Love"] = "#eb6f92",
  ["Gold"] = "#f6c177",
  ["Rose"] = "#ebbcba",
  ["Pine"] = "#31748f",
  ["Foam"] = "#9ccfd8",
  ["Iris"] = "#c4a7e7",
  ["HighlightLow"] = "#21202e",
  ["HighlightMed"] = "#403d52",
  ["HighlightHigh"] = "#524f67",  
}
local rosePineMoon = {
  ["Base"] = "#232136",
  ["Surface"] = "#2a273f",
  ["Overlay"] = "#393552",
  ["Muted"] = "#6e6a86",
  ["Subtle"] = "#908caa",
  ["Text"] = "#e0def4",
  ["Love"] = "#eb6f92",
  ["Gold"] = "#f6c177",
  ["Rose"] = "#ea9a97",
  ["Pine"] = "#3e8fb0",
  ["Foam"] = "#9ccfd8",
  ["Iris"] = "#c4a7e7",
  ["HighlightLow"] = "#2a283e",
  ["HighlightMed"] = "#44415a",
  ["HighlightHigh"] = "#56526e",  
}
local rosePineDawn = {
  ["Base"] = "#faf4ed",
  ["Surface"] = "#fffaf3",
  ["Overlay"] = "#f2e9e1",
  ["Muted"] = "#9893a5",
  ["Subtle"] = "#797593",
  ["Text"] = "#575279",
  ["Love"] = "#b4637a",
  ["Gold"] = "#ea9d34",
  ["Rose"] = "#d7827e",
  ["Pine"] = "#286983",
  ["Foam"] = "#56949f",
  ["Iris"] = "#907aa9",
  ["HighlightLow"] = "#f4ede8",
  ["HighlightMed"] = "#dfdad9",
  ["HighlightHigh"] = "#cecacd",  
}

-- Choose your theme here
local color = rosePineMoon

-- Sets these Script Editor  colors in the Studio settings
local theme = { 
  ["Background Color"] = color.Base,
  ["Selection Color"] = color.Text,
  ["Selection Background Color"] = color.Muted,
  ["Error Color"] = color.Muted,
  ["Warning Color"] = color.Love,
  ["Find Selection Background Color"] = color.HighlightLow,
  ["Matching Word Background Color"] = color.HighlightMed,
  ["Whitespace Color"] = color.Pine,
  ["Current Line Highlight Color"] = color.Base,
  ["Ruler Color"] = color.Text,
  ["Bracket Color"] = color.Text,
  ["Text Color"] = color.Text,
  ["Operator Color"] = color.Pine,
  ["Number Color"] = color.Rose,
  ["String Color"] = color.Gold,
  ["Comment Color"] = color.Subtle,
  ["Bool Color"] = color.Rose,
  ["\"nil\" Color"] = color.Rose,
  ["Function Name Color"] = color.Iris,
  ["\"function\" Color"] = color.Pine,
  ["\"local\" Color"] = color.Pine,
  ["\"self\" Color"] = color.Pine,
  ["Luau Keyword Color"] = color.Text,
  ["Keyword Color"] = color.Pine,
  ["Built-in Function Color"] = color.Iris,
  ["\"TODO\" Color"] = color.Text,
  ["Method Color"] = color.Iris,
  ["Property Color"] = color.Foam,
}

-- The loop below sets the theme colors in Studio settings
-- It will warn you if a color is not valid
local studio = settings().Studio
for name, color in pairs(theme) do
  color = Color3.fromHex(color)
  local success = pcall(function() studio[name] = color end)
  if not success then
    warn(("%s is not a valid theme color"):format(name))
  end
end

-- This will print a success message in the output window
print("Successfully changed your Script Editor theme!")