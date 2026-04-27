local function cocktailSort(n)
    local start = 1
    local finish = #n
    local swapped = true

    while swapped do
        swapped = false
        for i = start, finish-1 do
            if n[i] > n[i + 1] then
                n[i], n[i + 1] = n[i + 1], n[i]
                swapped = true
            end
        end

        if not swapped then
            break
        end

        swapped = false
        finish = finish-1

        for i = finish-1, start, -1 do
            if n[i] > n[i + 1] then
                n[i], n[i + 1] = n[i + 1], n[i]
                swapped = true
            end
        end

        start = start + 1
    end

    return n
end

local n = {1, 5, 7, 3, 2, 8, 0, 9, 4, 6}
local sorted = cocktailSort(n)
print(table.concat(sorted, ", "))
