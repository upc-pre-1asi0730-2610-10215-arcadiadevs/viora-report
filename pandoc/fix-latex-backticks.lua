function RawBlock(el)
  if el.format == "tex" or el.format == "latex" then
    -- Replace `text` with \texttt{text}
    el.text = el.text:gsub("`([^`]+)`", "\\texttt{%1}")
    return el
  end
end

function RawInline(el)
  if el.format == "tex" or el.format == "latex" then
    el.text = el.text:gsub("`([^`]+)`", "\\texttt{%1}")
    return el
  end
end
