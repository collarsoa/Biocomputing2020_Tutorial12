###Exercise 10-Owen Collars###
#1. find some data, save it to an excel file, graph it in a scatter plot
#I decided to use Kaggle to find some data on baseball
baseball_data<-read.csv("Hitters.csv")
#I then use ggplot to graph the number of Runs versus the salary for each observation
ggplot(data=baseball_data, aes(x=Runs, y=Salary))+
  geom_point()+
  stat_smooth(method=lm)

