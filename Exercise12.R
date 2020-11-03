###Exercise 10-Owen Collars###
#1. find some data, save it to an excel file (as a csv), graph it in a scatter plot
#I decided to use Kaggle to find some data on baseball
baseball_data<-read.csv("Hitters.csv")
#I then use ggplot to graph the number of Runs versus the salary for each observation
ggplot(data=baseball_data, aes(x=Runs, y=Salary))+
  geom_point()+
  stat_smooth(method=lm)

#2. Summarize the data in data.txt
#read the data in
data_Regions<-read.csv('data.txt')
#bar plot showing the means of each region
ggplot(data=data_Regions, aes(x=region, y=observations))+
  stat_summary(fun.y=mean, geom='bar')+
  labs(y='average observations')



#scatter plot of each observation
ggplot(data=data_Regions, aes(x=region, y=observations))+
  geom_jitter()


#The bar plot and scatter plot portray the data in very different ways. 
#The average of the data are presented in the bar chart. 
#This portrayal makes it appear that each region has the same average observation for each variable.
#The jitter plot helps us to see that the spread of the data are very different for each region.
#Some regions are highly clustered (like the north), where as others have a more spread out distribution.
#Furtermore, the south appears to have a biomodal distribution.