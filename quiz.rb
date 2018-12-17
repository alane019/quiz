 #Paul's part [STUDENT "run quiz" >> where STUDENT TAKES QUIZ]
# RUNQUIZ
def runquiz(num, questions, answers)
 correct = 0
 num.times do |x|
	   displayquestion = questions[x]
	   puts "Question #{x + 1} :  #{displayquestion}"
	   response = gets.chomp.downcase
	#    puts "Your response #{response}. The correct #{answers[num]}"
	  # ONE-LINE CONDITIONAL APPROACH:  response == answers[x] ? correct +=  1 : next
	  if (response == answers[x])
	  		correct += 1
	  		
	 	end

	 	puts "Correct so far: #{correct}"
	end
 	puts "Correct answers #{correct}"
end  #this ends the take-quiz/run-quiz function. 



def quiz_creation
	

   quiz_num = gets.chomp.to_i
   questions = []
   answers = []
   if quiz_num <= 0
       puts "Man, this is the easiest quiz ever"
   else
       quiz_num.times do |num|
           puts "-> What is question #{num + 1}?"
           questions.push(gets.chomp.downcase)
           puts "-> What is the answer to question #{num + 1}?"
           answers.push(gets.chomp.downcase)
       end
       runquiz(quiz_num, questions, answers)
   end
end




puts "Hi, we are going to make a quiz!"
puts "How many questions would you like on it?"
quiz_creation