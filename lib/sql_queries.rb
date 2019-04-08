# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
"Write your SQL query Here"
"select p1.title, SUM(p2.amount)
from projects p1
join pledges p2 on p1.id = p2.project_id
group by p1.title
order by title"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
"Write your SQL query Here"
"select name, age, SUM(p.amount)
from users u 
join pledges p on p.user_id = u.id 
group by u.name 
order by u.name"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"Write your SQL query Here"
"select title, SUM(p1.amount) - p.funding_goal
from projects p
join pledges p1 on p1.project_id = p.id
group by p.title having SUM(p1.amount) >= p.funding_goal"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
"Write your SQL query Here"
"select name, SUM(amount)
from users u 
join pledges p on p.user_id = u.id 
group by name 
order by SUM(amount), name"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"Write your SQL query Here"
"select category, amount
from projects p
join pledges p1 on p1.project_id = p.id
where category = 'music'"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
"Write your SQL query Here"
"select category, SUM(amount)
from projects p
join pledges p1 on p1.project_id = p.id 
where category = 'books'"
end
