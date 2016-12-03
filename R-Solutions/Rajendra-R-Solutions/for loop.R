for (year in c(2000:2010)) {
print(paste("Year is ",year))

}

for (i in 1:10) {
    if (!i %% 2) {
        next
    }
    print(i)
}